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
setQ({-2.93038, -0.622508, -2.87049, -2.29156, 0.278326, -1.94582})
setQ({-2.79722, -0.598498, -2.67636, -1.4893, -0.258939, -2.05413})
setQ({-2.55402, -0.57335, -2.55511, -1.40745, -0.184092, -1.83011})
setQ({-1.89687, -0.505399, -2.22748, -1.18629, 0.0181471, -1.22482})
setQ({-1.23972, -0.437449, -1.89984, -0.965132, 0.220386, -0.61952})
setQ({-0.582575, -0.369498, -1.57221, -0.743973, 0.422625, -0.0142232})
setQ({0.0745731, -0.301547, -1.24458, -0.522815, 0.624864, 0.591074})
setQ({0.731721, -0.233597, -0.91695, -0.301656, 0.827103, 1.19637})
setQ({1.38887, -0.165646, -0.589318, -0.0804979, 1.02934, 1.80167})
setQ({1.53749, -0.142809, -0.266183, -0.570953, 1.25851, 2.56319})
setQ({1.05837, -0.101415, -0.319264, -0.597471, 0.485133, 2.97196})
setQ({1.62367, -0.0275648, 0.0423034, -0.35738, 0.514442, 3.66892})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
-- Path of length: 14
-- Time elapsed: 0.13
LUAfile.close();
