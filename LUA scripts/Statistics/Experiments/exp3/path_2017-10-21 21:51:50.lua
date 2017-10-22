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
setQ({-3.04142, -0.736325, -2.88169, -3.20247, -0.00439807, -0.596803})
setQ({-2.47148, -0.646586, -2.50826, -2.72079, 0.0512207, -0.0559216})
setQ({-1.90154, -0.556848, -2.13483, -2.23911, 0.106839, 0.48496})
setQ({-1.33159, -0.467109, -1.7614, -1.75744, 0.162458, 1.02584})
setQ({-0.761652, -0.37737, -1.38796, -1.27576, 0.218077, 1.56672})
setQ({-0.19171, -0.287631, -1.01453, -0.794079, 0.273696, 2.1076})
setQ({-0.105125, -0.335017, -1.03038, 0.0675124, 0.326134, 2.6025})
setQ({0.514868, -0.141304, -1.15781, -0.0864443, 0.673369, 3.24869})
setQ({1.04405, 0.0240351, -1.26657, -0.21785, 0.969742, 3.80024})
setQ({1.01177, -0.0840032, -0.323028, -0.253834, 0.669078, 3.87325})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 12
Time elapsed: 0.099
LUAfile.close();
