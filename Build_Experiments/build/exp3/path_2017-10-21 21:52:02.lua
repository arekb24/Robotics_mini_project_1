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
setQ({-3.10548, -0.755349, -2.86166, -2.69094, 0.347801, -0.731827})
setQ({-2.77019, -0.569034, -2.4353, -2.49333, 0.0412958, 0.00172571})
setQ({-2.42904, -0.508017, -2.3531, -2.36899, -0.00576972, 0.0820545})
setQ({-1.55109, -0.350994, -2.14157, -2.04901, -0.126892, 0.288779})
setQ({-0.673136, -0.19397, -1.93003, -1.72902, -0.248014, 0.495503})
setQ({-0.0624588, -0.203503, -2.01642, -1.16732, 0.0705447, 0.0454608})
setQ({0.772535, -0.0520782, -1.78449, -0.74925, -0.00553361, 0.258746})
setQ({1.60753, 0.0993464, -1.55256, -0.331176, -0.0816119, 0.472031})
setQ({1.52821, 0.0992589, -1.38958, -0.10276, 0.0319571, 1.42181})
setQ({1.75806, 0.158666, -0.771413, -0.249915, 0.628116, 1.85128})
setQ({1.61692, 0.248488, -0.505908, -0.257218, 0.724933, 2.79579})
setQ({1.59281, 0.219095, -0.225243, 0.317716, 0.708088, 3.56322})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 14
Time elapsed: 0.261
LUAfile.close();
