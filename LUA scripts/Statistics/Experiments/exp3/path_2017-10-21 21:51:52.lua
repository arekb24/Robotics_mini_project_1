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
setQ({-2.63425, -0.64386, -2.38854, -2.8408, -0.0203389, -1.09683})
setQ({-1.97343, -0.550991, -2.14976, -2.50536, -0.0418791, -0.47659})
setQ({-1.31261, -0.458123, -1.91099, -2.16991, -0.0634192, 0.143647})
setQ({-0.651785, -0.365255, -1.67222, -1.83447, -0.0849594, 0.763884})
setQ({0.0090351, -0.272386, -1.43345, -1.49903, -0.1065, 1.38412})
setQ({0.669856, -0.179518, -1.19467, -1.16359, -0.12804, 2.00436})
setQ({1.22313, -0.101763, -0.99476, -0.882732, -0.146075, 2.52366})
setQ({0.916031, -0.134062, -0.385762, -0.69432, 0.265927, 3.09683})
setQ({1.48343, -0.0525876, -0.0656823, -0.351274, 0.311678, 3.76705})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 11
Time elapsed: 0.074
LUAfile.close();
