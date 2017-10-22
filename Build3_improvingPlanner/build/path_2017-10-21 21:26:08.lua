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
setQ({0, 0.365, 0.202, 0.153, 0.762, 4.49})
setQ({0.0944801, 0.342165, 0.185866, 0.158751, 0.761639, 4.47392})
setQ({0.18896, 0.31933, 0.169733, 0.164503, 0.761278, 4.45784})
setQ({0.28344, 0.296496, 0.153599, 0.170254, 0.760917, 4.44176})
setQ({0.37792, 0.273661, 0.137466, 0.176005, 0.760556, 4.42568})
setQ({0.472401, 0.250826, 0.121332, 0.181757, 0.760195, 4.4096})
setQ({0.47633, 0.261048, 0.108659, 0.203911, 0.747407, 4.31439})
setQ({0.52182, 0.255367, 0.0742868, 0.261655, 0.729235, 4.25914})
setQ({0.579983, 0.195724, 0.0843383, 0.234255, 0.752141, 4.22806})
setQ({0.589356, 0.194149, 0.116462, 0.251552, 0.75018, 4.32066})
setQ({0.58529, 0.223542, 0.102055, 0.188628, 0.759764, 4.39038})
setQ({0.597802, 0.213128, 0.114667, 0.114251, 0.764164, 4.45382})
setQ({0.695122, 0.192415, 0.1062, 0.118126, 0.763948, 4.45744})
setQ({0.792442, 0.171703, 0.0977337, 0.122001, 0.763731, 4.46106})
setQ({0.889761, 0.15099, 0.089267, 0.125876, 0.763515, 4.46468})
setQ({0.987081, 0.130277, 0.0808003, 0.129751, 0.763299, 4.46829})
setQ({1.0844, 0.109564, 0.0723336, 0.133626, 0.763082, 4.47191})
setQ({1.18172, 0.0888513, 0.0638669, 0.1375, 0.762866, 4.47553})
setQ({1.27904, 0.0681385, 0.0554002, 0.141375, 0.762649, 4.47915})
setQ({1.37636, 0.0474257, 0.0469334, 0.14525, 0.762433, 4.48276})
setQ({1.47368, 0.0267128, 0.0384667, 0.149125, 0.762216, 4.48638})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
LUAfile.close();