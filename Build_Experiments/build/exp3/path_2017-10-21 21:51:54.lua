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
rw.sleep(0.01)
end
function attach(obj, tool)
rw.gripFrame(obj, tool, state)
rws.getRobWorkStudio():setState(state)
rw.sleep(1)
end
setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})
attach(bottle,gripper)
setQ({-3.142, -0.827, -3.002, -3.143, 0.099, -1.573})
setQ({-3.08621, -0.858528, -2.7695, -2.202, 0.250355, -1.75591})
setQ({-2.95307, -0.755651, -2.218, -1.67848, 0.444705, -1.15951})
setQ({-2.68896, -0.714933, -2.13038, -1.59583, 0.436565, -0.894967})
setQ({-2.02022, -0.611829, -1.90853, -1.38655, 0.415952, -0.225107})
setQ({-1.35148, -0.508726, -1.68668, -1.17727, 0.395339, 0.444754})
setQ({-0.682734, -0.405623, -1.46483, -0.967987, 0.374727, 1.11461})
setQ({-0.0139924, -0.302519, -1.24298, -0.758706, 0.354114, 1.78447})
setQ({0.65475, -0.199416, -1.02113, -0.549425, 0.333501, 2.45434})
setQ({1.32349, -0.0963128, -0.79928, -0.340144, 0.312889, 3.1242})
setQ({1.09625, -0.083682, -0.549599, -0.138852, 0.382766, 4.04096})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 12
Time elapsed: 0.09
LUAfile.close();
