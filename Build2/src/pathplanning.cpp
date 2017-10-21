#include <iostream>
#include <rw/rw.hpp>
#include <rwlibs/pathplanners/rrt/RRTPlanner.hpp>
#include <rwlibs/pathplanners/rrt/RRTQToQPlanner.hpp>
#include <rwlibs/proximitystrategies/ProximityStrategyFactory.hpp>
#include <fstream> // for writing to a file
#include <sstream> // for processing the string

using namespace std;
using namespace rw::common;
using namespace rw::math;
using namespace rw::kinematics;
using namespace rw::loaders;
using namespace rw::models;
using namespace rw::pathplanning;
using namespace rw::proximity;
using namespace rw::trajectory;
using namespace rwlibs::pathplanners;
using namespace rwlibs::proximitystrategies;

#define MAXTIME 10.

bool checkCollisions(Device::Ptr device, const State &state, const CollisionDetector &detector, const Q &q) {
	State testState;
	CollisionDetector::QueryResult data;
	bool colFrom;

	testState = state;
	device->setQ(q,testState);
	colFrom = detector.inCollision(testState,&data);
	if (colFrom) {
		cerr << "Configuration in collision: " << q << endl;
		cerr << "Colliding frames: " << endl;
		FramePairSet fps = data.collidingFrames;
		for (FramePairSet::iterator it = fps.begin(); it != fps.end(); it++) {
			cerr << (*it).first->getName() << " " << (*it).second->getName() << endl;
		}
		return false;
	}
	return true;
}

int main(int argc, char** argv) {
	// Added a random seed
	rw::math::Math::seed();
	// Changed to a custom path
	const string wcFile = "../../Kr16WallWorkCell/Scene.wc.xml";
	const string deviceName = "KukaKr16";
	cout << "Trying to use workcell " << wcFile << " and device " << deviceName << endl;

	WorkCell::Ptr wc = WorkCellLoader::Factory::load(wcFile);
	Device::Ptr device = wc->findDevice(deviceName);
	if (device == NULL) {
		cerr << "Device: " << deviceName << " not found!" << endl;
		return 0;
	}
	const State state = wc->getDefaultState();

	CollisionDetector detector(wc, ProximityStrategyFactory::makeDefaultCollisionStrategy());
	PlannerConstraint constraint = PlannerConstraint::make(&detector,device,state);

	/** Most easy way: uses default parameters based on given device
		sampler: QSampler::makeUniform(device)
		metric: PlannerUtil::normalizingInfinityMetric(device->getBounds())
		extend: 0.05 */
	//QToQPlanner::Ptr planner = RRTPlanner::makeQToQPlanner(constraint, device, RRTPlanner::RRTConnect);

	/** More complex way: allows more detailed definition of parameters and methods */
	QSampler::Ptr sampler = QSampler::makeConstrained(QSampler::makeUniform(device),constraint.getQConstraintPtr());
	QMetric::Ptr metric = MetricFactory::makeEuclidean<Q>();
	double extend = 0.1;
	QToQPlanner::Ptr planner = RRTPlanner::makeQToQPlanner(constraint, sampler, metric, extend, RRTPlanner::RRTConnect);

	// CHange with custom Q values
	Q from(6,-3.142, -0.827, -3.002, -3.143, 0.099, -1.573);
	Q to(6,1.571, 0.006, 0.03, 0.153, 0.762, 4.49);

	if (!checkCollisions(device, state, detector, from))
		return 0;
	if (!checkCollisions(device, state, detector, to))
		return 0;

	cout << "Planning from " << from << " to " << to << endl;
	QPath path;
	Timer t;
	t.resetAndResume();
	planner->query(from,to,path,MAXTIME);
	t.pause();
	cout << "Path of length " << path.size() << " found in " << t.getTime() << " seconds." << endl;
	if (t.getTime() >= MAXTIME) {
		cout << "Notice: max time of " << MAXTIME << " seconds reached." << endl;
	}

	for (QPath::iterator it = path.begin(); it < path.end(); it++) {
		cout << *it << endl;
	}
	// Part of the code for writing the .LUA script to the file ------------
	time_t timeNow = time(0); // Current time
	struct tm * now = localtime( & timeNow );
	char timeBuffer [80];
     	strftime (timeBuffer,80,"path_%Y-%m-%d %H:%M:%S.lua",now);
     	std::ofstream LUAfile;
     	LUAfile.open (timeBuffer);
	LUAfile << "wc = rws.getRobWorkStudio():getWorkCell()\n";
	LUAfile << "state = wc:getDefaultState()\n";
	LUAfile << "device = wc:findDevice(\"KukaKr16\")\n";
	LUAfile << "gripper = wc:findFrame(\"Tool\");\n";
	LUAfile << "bottle = wc:findFrame(\"Bottle\");\n";
	LUAfile << "table = wc:findFrame(\"Table\");\n";

	LUAfile << "function setQ(q)\n";
	LUAfile << "qq = rw.Q(#q,q[1],q[2],q[3],q[4],q[5],q[6])\n";
	LUAfile << "device:setQ(qq,state)\n";
	LUAfile << "rws.getRobWorkStudio():setState(state)\n";
	LUAfile << "rw.sleep(0.1)\n";
	LUAfile << "end\n";

	LUAfile << "function attach(obj, tool)\n";
	LUAfile << "rw.gripFrame(obj, tool, state)\n";
	LUAfile << "rws.getRobWorkStudio():setState(state)\n";
	LUAfile << "rw.sleep(1)\n";
	LUAfile << "end\n";


	LUAfile << "setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})\n";
	LUAfile << "attach(bottle,gripper)\n";
  	
	for (QPath::iterator it = path.begin(); it < path.end(); it++) {
		std::string itString = boost::lexical_cast<std::string>(*it);
		//Remove first 4 characters, e.g. Q[6]:
		itString = itString.erase(0,4);
		LUAfile << "setQ(" << itString << ")" <<endl;
	}
	LUAfile << "setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})\n";
	LUAfile << "attach(bottle,table)\n";
	LUAfile << "LUAfile.close();\n";

	// End of the .LUA script writing part ---------------------------------

	cout << "Program done." << endl;
	return 0;
}
