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
-- rw.sleep(1)
end
setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})
attach(bottle,gripper)
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.44402})
rw.sleep(3)
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.44402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.34402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.24402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.14402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -2.04402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.94402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.84402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.74402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.64402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.54402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.44402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.34402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.24402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.14402})
setQ({-1.80529, -0.581856, -2.3189, -3.40377, 0.00840079, -1.127})
-- setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
-- attach(bottle,table)
LUAfile.close();
