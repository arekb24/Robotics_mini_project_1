wc = rws.getRobWorkStudio():getWorkCell()
state = wc:getDefaultState()
device = wc:findDevice("KukaKr16")
gripper = wc:findFrame("Tool");
bottle = wc:findFrame("Bottle");
table = wc:findFrame("Table");
function setQ(q)
qq = rw.Q(#q,q[1],q[2],q[3],q[4],q[5],q[6])
device:setQ(qq,state)
rws.getRobWorkStudio():setState(state)
rw.sleep(0.1)
end
function attach(obj, tool)
rw.gripFrame(obj, tool, state)
rws.getRobWorkStudio():setState(state)
rw.sleep(1)
end
setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})
attach(bottle,gripper)
setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})
setQ({-3.06752, -0.803811, -2.96852, -3.09862, 0.0734463, -1.55994})
setQ({-2.99002, -0.788293, -2.94125, -3.10315, 0.0721022, -1.6146})
setQ({-2.91252, -0.772775, -2.91399, -3.10768, 0.070758, -1.66926})
setQ({-2.83503, -0.757257, -2.88672, -3.11222, 0.0694138, -1.72392})
setQ({-2.75753, -0.741739, -2.85946, -3.11675, 0.0680696, -1.77858})
setQ({-2.68003, -0.726221, -2.83219, -3.12129, 0.0667254, -1.83324})
setQ({-2.68387, -0.723297, -2.80126, -3.09813, 0.0616752, -1.9252})
setQ({-2.67728, -0.720191, -2.73514, -3.15454, 0.0988785, -1.95695})
setQ({-2.66636, -0.707155, -2.72997, -3.14759, 0.128244, -2.05062})
setQ({-2.66192, -0.712652, -2.67507, -3.09508, 0.122162, -2.11497})
setQ({-2.65103, -0.718397, -2.65905, -3.01978, 0.135542, -2.17615})
setQ({-2.63955, -0.689677, -2.63543, -3.04562, 0.176054, -2.25474})
setQ({-2.55612, -0.678895, -2.60377, -3.08144, 0.159289, -2.27366})
setQ({-2.4727, -0.668113, -2.57212, -3.11725, 0.142524, -2.29259})
setQ({-2.38927, -0.657331, -2.54047, -3.15307, 0.125758, -2.31152})
setQ({-2.30584, -0.646549, -2.50882, -3.18888, 0.108993, -2.33045})
setQ({-2.22242, -0.635767, -2.47716, -3.22469, 0.0922276, -2.34938})
setQ({-2.13899, -0.624985, -2.44551, -3.26051, 0.0754622, -2.36831})
setQ({-2.05557, -0.614203, -2.41386, -3.29632, 0.0586969, -2.38723})
setQ({-1.97214, -0.60342, -2.38221, -3.33214, 0.0419315, -2.40616})
setQ({-1.88872, -0.592638, -2.35055, -3.36795, 0.0251661, -2.42509})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.44402})
-- End of RRT Part
rw.sleep(5)
-- Manual Part
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.44402})
setQ({-1.78, -0.60, -2.25, -3.40377, 0.1, -2.34402})
setQ({-1.75, -0.62, -2.15, -3.40377, 0.2, -2.24402})
setQ({-1.72, -0.65, -2.10, -3.40377, 0.3, -2.14402})
setQ({-1.69, -0.68, -2.05, -3.40377, 0.4, -2.04402})
setQ({-1.65, -0.70, -2.00, -3.40377, 0.5, -1.94402})
setQ({-1.62, -0.73, -1.95, -3.40377, 0.6, -1.84402})
setQ({-1.59, -0.77, -1.90, -3.40377, 0.7, -1.74402})
setQ({-1.55, -0.80, -1.85, -3.40377, 0.8, -1.64402})
setQ({-1.52, -0.83, -1.80, -3.40377, 0.9, -1.54402})
setQ({-1.52, -0.85, -1.80, -3.40377, 0.9, -1.54402})
setQ({-1.52, -0.87, -1.80, -3.40377, 0.9, -1.54402})
setQ({-1.501, -0.90, -1.792, -3.40377, 1.0, -1.44402})
setQ({-1.501, -0.93, -1.75, -3.40377, 1.1, -1.34402})
setQ({-1.501, -0.96, -1.70, -3.40377, 1.2, -1.24402})
setQ({-1.501, -1.02, -1.662, -3.40377, 1.257, -1.14402})
setQ({-1.501, -1.071, -1.662, -3.40377, 1.257, -1.127})
-- setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
LUAfile.close();
