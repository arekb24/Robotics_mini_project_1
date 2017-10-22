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
setQ({-2.44247, -0.645746, -2.34423, -3.34843, 0.0959671, -1.51882})
setQ({-2.43018, -0.651943, -2.37425, -3.16015, 0.0685677, -1.50091})
setQ({-2.36678, -0.683899, -2.52903, -2.18932, -0.0727114, -1.40858})
setQ({-1.7673, -0.574978, -2.27896, -1.98347, -0.0715969, -0.684814})
setQ({-1.16782, -0.466056, -2.02888, -1.77762, -0.0704824, 0.0389565})
setQ({-0.568332, -0.357135, -1.77881, -1.57177, -0.0693679, 0.762727})
setQ({0.0311512, -0.248213, -1.52873, -1.36593, -0.0682534, 1.4865})
setQ({0.630634, -0.139292, -1.27866, -1.16008, -0.0671389, 2.21027})
setQ({1.23012, -0.0303703, -1.02858, -0.954231, -0.0660244, 2.93404})
setQ({1.44798, -0.102003, -0.351181, -0.344277, 0.270502, 2.99091})
setQ({1.74438, -0.071331, -0.367429, 0.308406, 0.532889, 3.63597})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 13
Time elapsed: 0.132
LUAfile.close();
