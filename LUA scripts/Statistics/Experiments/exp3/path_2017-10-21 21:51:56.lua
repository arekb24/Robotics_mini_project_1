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
setQ({-3.12635, -0.765905, -2.72236, -3.15218, 0.23505, -0.624722})
setQ({-2.37119, -0.58485, -2.40527, -2.71572, 0.171746, -0.305529})
setQ({-1.61602, -0.403795, -2.08819, -2.27925, 0.108442, 0.0136631})
setQ({-0.860852, -0.22274, -1.7711, -1.84278, 0.0451375, 0.332855})
setQ({-0.105684, -0.0416852, -1.45401, -1.40631, -0.0181668, 0.652048})
setQ({0.110341, -0.0228589, -1.396, -0.655395, 0.232805, 1.22016})
setQ({0.483862, -0.0412542, -1.1666, -0.960185, 0.424253, 2.04355})
setQ({0.422321, 0.0823879, -1.57383, -1.35802, 0.374678, 2.85248})
setQ({0.506849, 0.0621582, -1.4727, -1.36731, 0.420405, 2.91298})
setQ({1.05686, -0.0694738, -0.814687, -1.42775, 0.717944, 3.30667})
setQ({0.918725, 0.020224, -0.467283, -0.642938, 0.443854, 2.90526})
setQ({1.34443, 0.0187303, -0.208717, -0.181049, 0.565719, 3.62895})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 14
Time elapsed: 0.171
LUAfile.close();
