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
setQ({-2.82005, -0.780924, -2.64991, -2.32504, 0.213248, -1.27611})
setQ({-2.20928, -0.693522, -2.31246, -2.07247, 0.222028, -0.611592})
setQ({-1.59851, -0.60612, -1.97501, -1.81991, 0.230809, 0.0529212})
setQ({-0.987737, -0.518719, -1.63755, -1.56735, 0.239589, 0.717435})
setQ({-0.376965, -0.431317, -1.3001, -1.31479, 0.248369, 1.38195})
setQ({0.233807, -0.343915, -0.962644, -1.06223, 0.257149, 2.04646})
setQ({0.844579, -0.256514, -0.62519, -0.809663, 0.265929, 2.71098})
setQ({1.1845, -0.20787, -0.43738, -0.6691, 0.270816, 3.08081})
setQ({1.03363, -0.0903018, -0.297961, -0.150256, 0.694845, 3.78436})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
LUAfile.close();
