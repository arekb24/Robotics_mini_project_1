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
rw.sleep(1)
end
function attach(obj, tool)
rw.gripFrame(obj, tool, state)
rws.getRobWorkStudio():setState(state)
rw.sleep(1)
end
setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})
attach(bottle,gripper)
setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})
setQ({-2.81541, -0.759262, -2.91341, -0.611556, 0.173489, -0.00228495})
setQ({-2.55569, -0.710125, -2.77942, -1.06596, 0.306825, 0.303476})
setQ({-1.33222, -0.478657, -2.1482, -3.20652, 0.934933, 1.74382})
setQ({-1.501, -1.071, -1.662, -3.40377, 1.257, -1.127})
attach(bottle,table)
LUAfile.close();
