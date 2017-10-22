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
setQ({-2.98605, -0.726859, -2.81409, -2.18119, 0.109503, -1.64475})
setQ({-2.67484, -0.684796, -2.42686, -1.38027, -0.0209734, -1.33989})
setQ({-2.67321, -0.684574, -2.42639, -1.38022, -0.0205122, -1.33796})
setQ({-2.0536, -0.599894, -2.24651, -1.35928, 0.155306, -0.599577})
setQ({-1.43399, -0.515214, -2.06664, -1.33834, 0.331124, 0.138804})
setQ({-0.814378, -0.430534, -1.88676, -1.31741, 0.506943, 0.877185})
setQ({-0.203533, -0.349249, -1.593, -0.720476, 0.543636, 1.29705})
setQ({0.407313, -0.267964, -1.29923, -0.123548, 0.58033, 1.71692})
setQ({1.01816, -0.186679, -1.00546, 0.473381, 0.617024, 2.13679})
setQ({1.62393, 0.0615012, -0.631033, 0.604008, 0.365335, 2.72911})
setQ({1.72319, -0.0354114, -0.250207, 0.379555, 0.537786, 3.59837})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 13
Time elapsed: 0.176
LUAfile.close();
