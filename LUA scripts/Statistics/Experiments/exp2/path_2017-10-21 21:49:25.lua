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
setQ({-3.08965, -0.817769, -2.96794, -3.10507, 0.106259, -1.50574})
setQ({-3.03731, -0.808538, -2.93389, -3.06714, 0.113517, -1.43849})
setQ({-2.98496, -0.799306, -2.89983, -3.02921, 0.120776, -1.37123})
setQ({-2.93262, -0.790075, -2.86578, -2.99128, 0.128034, -1.30397})
setQ({-2.88027, -0.780844, -2.83172, -2.95335, 0.135293, -1.23671})
setQ({-2.86541, -0.77976, -2.7694, -3.01792, 0.130319, -1.19548})
setQ({-2.83199, -0.779346, -2.73877, -3.0623, 0.168326, -1.12817})
setQ({-2.8357, -0.778636, -2.70209, -3.08981, 0.202901, -1.04639})
setQ({-2.83911, -0.778349, -2.7062, -3.12552, 0.207857, -0.953268})
setQ({-2.84828, -0.754583, -2.67821, -3.13077, 0.211301, -0.86092})
setQ({-2.83037, -0.751345, -2.64059, -3.22082, 0.214643, -0.849366})
setQ({-2.84427, -0.721115, -2.57039, -3.22716, 0.154476, -0.866788})
setQ({-2.78938, -0.711945, -2.53605, -3.19227, 0.162396, -0.80012})
setQ({-2.7345, -0.702775, -2.50172, -3.15738, 0.170317, -0.733451})
setQ({-2.67961, -0.693605, -2.46738, -3.12249, 0.178237, -0.666782})
setQ({-2.62473, -0.684435, -2.43304, -3.0876, 0.186158, -0.600113})
setQ({-2.56984, -0.675265, -2.39871, -3.05271, 0.194078, -0.533444})
setQ({-2.51496, -0.666095, -2.36437, -3.01782, 0.201999, -0.466775})
setQ({-2.46008, -0.656925, -2.33004, -2.98293, 0.209919, -0.400106})
setQ({-2.40519, -0.647755, -2.2957, -2.94804, 0.217839, -0.333438})
setQ({-2.35031, -0.638585, -2.26137, -2.91315, 0.22576, -0.266769})
setQ({-2.29542, -0.629415, -2.22703, -2.87827, 0.23368, -0.2001})
setQ({-2.24054, -0.620245, -2.1927, -2.84338, 0.241601, -0.133431})
setQ({-2.18565, -0.611075, -2.15836, -2.80849, 0.249521, -0.0667621})
setQ({-2.13077, -0.601905, -2.12403, -2.7736, 0.257442, -9.31954e-05})
setQ({-2.07589, -0.592735, -2.08969, -2.73871, 0.265362, 0.0665757})
setQ({-2.021, -0.583565, -2.05536, -2.70382, 0.273283, 0.133245})
setQ({-1.96612, -0.574395, -2.02102, -2.66893, 0.281203, 0.199913})
setQ({-1.91123, -0.565225, -1.98669, -2.63404, 0.289124, 0.266582})
setQ({-1.85635, -0.556055, -1.95235, -2.59915, 0.297044, 0.333251})
setQ({-1.80146, -0.546885, -1.91802, -2.56426, 0.304964, 0.39992})
setQ({-1.74658, -0.537715, -1.88368, -2.52938, 0.312885, 0.466589})
setQ({-1.6917, -0.528545, -1.84935, -2.49449, 0.320805, 0.533258})
setQ({-1.63681, -0.519375, -1.81501, -2.4596, 0.328726, 0.599927})
setQ({-1.58193, -0.510205, -1.78068, -2.42471, 0.336646, 0.666595})
setQ({-1.52704, -0.501035, -1.74634, -2.38982, 0.344567, 0.733264})
setQ({-1.47216, -0.491865, -1.71201, -2.35493, 0.352487, 0.799933})
setQ({-1.41727, -0.482695, -1.67767, -2.32004, 0.360408, 0.866602})
setQ({-1.36239, -0.473525, -1.64333, -2.28515, 0.368328, 0.933271})
setQ({-1.3075, -0.464355, -1.609, -2.25026, 0.376248, 0.99994})
setQ({-1.25262, -0.455185, -1.57466, -2.21537, 0.384169, 1.06661})
setQ({-1.19774, -0.446015, -1.54033, -2.18048, 0.392089, 1.13328})
setQ({-1.14285, -0.436845, -1.50599, -2.1456, 0.40001, 1.19995})
setQ({-1.08797, -0.427675, -1.47166, -2.11071, 0.40793, 1.26662})
setQ({-1.03308, -0.418505, -1.43732, -2.07582, 0.415851, 1.33328})
setQ({-0.978199, -0.409335, -1.40299, -2.04093, 0.423771, 1.39995})
setQ({-0.923314, -0.400165, -1.36865, -2.00604, 0.431692, 1.46662})
setQ({-0.86843, -0.390995, -1.33432, -1.97115, 0.439612, 1.53329})
setQ({-0.813546, -0.381825, -1.29998, -1.93626, 0.447533, 1.59996})
setQ({-0.758661, -0.372655, -1.26565, -1.90137, 0.455453, 1.66663})
setQ({-0.703777, -0.363485, -1.23131, -1.86648, 0.463373, 1.7333})
setQ({-0.648893, -0.354315, -1.19698, -1.83159, 0.471294, 1.79997})
setQ({-0.594008, -0.345145, -1.16264, -1.79671, 0.479214, 1.86664})
setQ({-0.539124, -0.335975, -1.12831, -1.76182, 0.487135, 1.9333})
setQ({-0.48424, -0.326805, -1.09397, -1.72693, 0.495055, 1.99997})
setQ({-0.429355, -0.317635, -1.05964, -1.69204, 0.502976, 2.06664})
setQ({-0.405479, -0.312228, -1.06072, -1.61499, 0.49076, 2.00908})
setQ({-0.381603, -0.306822, -1.06181, -1.53794, 0.478544, 1.95152})
setQ({-0.357726, -0.301415, -1.0629, -1.46088, 0.466329, 1.89396})
setQ({-0.33385, -0.296009, -1.06399, -1.38383, 0.454113, 1.83639})
setQ({-0.309973, -0.290602, -1.06508, -1.30678, 0.441898, 1.77883})
setQ({-0.286097, -0.285196, -1.06617, -1.22973, 0.429682, 1.72127})
setQ({-0.26222, -0.279789, -1.06726, -1.15268, 0.417466, 1.66371})
setQ({-0.238344, -0.274383, -1.06835, -1.07563, 0.405251, 1.60615})
setQ({-0.214467, -0.268976, -1.06944, -0.998576, 0.393035, 1.54859})
setQ({-0.190591, -0.26357, -1.07052, -0.921525, 0.38082, 1.49102})
setQ({-0.166715, -0.258163, -1.07161, -0.844474, 0.368604, 1.43346})
setQ({-0.142838, -0.252757, -1.0727, -0.767422, 0.356388, 1.3759})
setQ({-0.118962, -0.24735, -1.07379, -0.690371, 0.344173, 1.31834})
setQ({-0.0950853, -0.241944, -1.07488, -0.61332, 0.331957, 1.26078})
setQ({-0.0712088, -0.236537, -1.07597, -0.536268, 0.319742, 1.20321})
setQ({-0.0473324, -0.231131, -1.07706, -0.459217, 0.307526, 1.14565})
setQ({-0.023456, -0.225724, -1.07815, -0.382165, 0.29531, 1.08809})
setQ({0.000420465, -0.220318, -1.07923, -0.305114, 0.283095, 1.03053})
setQ({0.0242969, -0.214911, -1.08032, -0.228063, 0.270879, 0.972967})
setQ({0.0481733, -0.209505, -1.08141, -0.151011, 0.258664, 0.915405})
setQ({0.0720498, -0.204098, -1.0825, -0.0739599, 0.246448, 0.857843})
setQ({0.0959262, -0.198692, -1.08359, 0.00309152, 0.234233, 0.800281})
setQ({0.119803, -0.193285, -1.08468, 0.0801429, 0.222017, 0.742719})
setQ({0.143679, -0.187879, -1.08577, 0.157194, 0.209801, 0.685158})
setQ({0.167556, -0.182473, -1.08686, 0.234246, 0.197586, 0.627596})
setQ({0.191432, -0.177066, -1.08794, 0.311297, 0.18537, 0.570034})
setQ({0.215308, -0.17166, -1.08903, 0.388348, 0.173155, 0.512472})
setQ({0.239185, -0.166253, -1.09012, 0.4654, 0.160939, 0.45491})
setQ({0.263061, -0.160847, -1.09121, 0.542451, 0.148723, 0.397349})
setQ({0.286938, -0.15544, -1.0923, 0.619503, 0.136508, 0.339787})
setQ({0.310814, -0.150034, -1.09339, 0.696554, 0.124292, 0.282225})
setQ({0.334691, -0.144627, -1.09448, 0.773605, 0.112077, 0.224663})
setQ({0.358567, -0.139221, -1.09557, 0.850657, 0.0998609, 0.167101})
setQ({0.382443, -0.133814, -1.09665, 0.927708, 0.0876453, 0.109539})
setQ({0.40632, -0.128408, -1.09774, 1.00476, 0.0754298, 0.0519775})
setQ({0.430196, -0.123001, -1.09883, 1.08181, 0.0632142, -0.00558432})
setQ({0.454073, -0.117595, -1.09992, 1.15886, 0.0509986, -0.0631462})
setQ({0.477949, -0.112188, -1.10101, 1.23591, 0.038783, -0.120708})
setQ({0.501826, -0.106782, -1.1021, 1.31296, 0.0265674, -0.17827})
setQ({0.525702, -0.101375, -1.10319, 1.39002, 0.0143518, -0.235832})
setQ({0.549579, -0.0959688, -1.10428, 1.46707, 0.00213617, -0.293393})
setQ({0.573455, -0.0905624, -1.10536, 1.54412, -0.0100794, -0.350955})
setQ({0.597331, -0.0851559, -1.10645, 1.62117, -0.022295, -0.408517})
setQ({0.610427, -0.0821905, -1.10705, 1.66343, -0.0289952, -0.440089})
setQ({0.649139, -0.0728597, -1.1399, 1.70432, 0.0403302, -0.41081})
setQ({0.667493, -0.0347012, -1.16868, 1.71739, 0.124875, -0.403036})
setQ({0.628435, -0.076002, -1.11901, 1.69615, 0.186805, -0.399083})
setQ({0.579443, -0.0524178, -1.16251, 1.69551, 0.213875, -0.332612})
setQ({0.528324, -0.103932, -1.15557, 1.65754, 0.176626, -0.28953})
setQ({0.532219, -0.0783528, -1.17341, 1.6048, 0.177745, -0.210604})
setQ({0.519786, -0.122592, -1.18115, 1.61014, 0.198525, -0.124766})
setQ({0.534187, -0.137086, -1.134, 1.6185, 0.235512, -0.0478162})
setQ({0.568746, -0.13381, -1.13753, 1.55632, 0.282527, 0.00419606})
setQ({0.54778, -0.121173, -1.14407, 1.46298, 0.307926, 0.00466226})
setQ({0.524593, -0.146693, -1.1004, 1.42702, 0.281844, 0.0748834})
setQ({0.519936, -0.175871, -1.04033, 1.42199, 0.247549, 0.140586})
setQ({0.590206, -0.162584, -0.999291, 1.41296, 0.24295, 0.196251})
setQ({0.569781, -0.174209, -0.952747, 1.38251, 0.206575, 0.267178})
setQ({0.585108, -0.164788, -0.96153, 1.3636, 0.179982, 0.359561})
setQ({0.620476, -0.167387, -0.933496, 1.31888, 0.157822, 0.433489})
setQ({0.685393, -0.14478, -0.899663, 1.28808, 0.199785, 0.47118})
setQ({0.732541, -0.134733, -0.883651, 1.21215, 0.226689, 0.440685})
setQ({0.778186, -0.121882, -0.865134, 1.12688, 0.226555, 0.452399})
setQ({0.78516, -0.13202, -0.822555, 1.09728, 0.2181, 0.536592})
setQ({0.813961, -0.130879, -0.811861, 1.04515, 0.231379, 0.615084})
setQ({0.864746, -0.129185, -0.803387, 0.965031, 0.247237, 0.641062})
setQ({0.839567, -0.11815, -0.822732, 0.980521, 0.26512, 0.732222})
setQ({0.859787, -0.108285, -0.847907, 0.918594, 0.265399, 0.80311})
setQ({0.85422, -0.114047, -0.825827, 0.894647, 0.260904, 0.897209})
setQ({0.868189, -0.142193, -0.788265, 0.855083, 0.315462, 0.952526})
setQ({0.836166, -0.137868, -0.780126, 0.854663, 0.297099, 1.045})
setQ({0.828929, -0.144534, -0.763818, 0.79208, 0.31271, 1.11901})
setQ({0.836518, -0.1475, -0.775771, 0.715924, 0.323588, 1.18124})
setQ({0.871447, -0.146074, -0.749875, 0.640102, 0.359563, 1.21386})
setQ({0.86378, -0.138594, -0.775555, 0.62138, 0.389115, 1.30332})
setQ({0.869237, -0.146098, -0.788714, 0.615221, 0.373543, 1.40058})
setQ({0.862788, -0.139665, -0.813746, 0.541557, 0.380397, 1.46236})
setQ({0.872277, -0.137962, -0.841972, 0.459599, 0.401174, 1.50665})
setQ({0.905556, -0.132725, -0.805936, 0.433442, 0.433051, 1.58324})
setQ({0.929121, -0.128093, -0.794331, 0.385288, 0.445543, 1.66579})
setQ({0.910202, -0.129991, -0.772969, 0.315647, 0.475489, 1.7244})
setQ({0.909011, -0.123126, -0.788218, 0.2565, 0.476351, 1.80327})
setQ({0.937295, -0.109776, -0.78753, 0.180521, 0.506596, 1.85157})
setQ({0.897537, -0.0993703, -0.748615, 0.133932, 0.531971, 1.91468})
setQ({0.877169, -0.0982325, -0.756525, 0.0915227, 0.565589, 1.99587})
setQ({0.870437, -0.112653, -0.735978, 0.0680416, 0.567321, 2.08952})
setQ({0.814009, -0.115667, -0.695131, 0.0245382, 0.581138, 2.14479})
setQ({0.811473, -0.114907, -0.677559, 0.0909036, 0.610491, 2.21126})
setQ({0.844242, -0.108453, -0.636594, 0.0277917, 0.64821, 2.2537})
setQ({0.848584, -0.0945644, -0.643608, 0.0379064, 0.665071, 2.35041})
setQ({0.853486, -0.101286, -0.609649, 0.098834, 0.683575, 2.41913})
setQ({0.847226, -0.116464, -0.602252, 0.0217667, 0.704164, 2.47668})
setQ({0.845159, -0.131421, -0.593755, 0.0570441, 0.688956, 2.56737})
setQ({0.828745, -0.128052, -0.606726, 0.0624798, 0.676265, 2.66412})
setQ({0.819842, -0.131936, -0.604838, 0.00475704, 0.660194, 2.74357})
setQ({0.79209, -0.12869, -0.604219, 0.0600484, 0.660107, 2.82206})
setQ({0.835718, -0.121894, -0.574518, 0.0419141, 0.651728, 2.90434})
setQ({0.813309, -0.121536, -0.567096, 0.00746059, 0.648403, 2.99514})
setQ({0.801736, -0.124421, -0.552077, -0.0184871, 0.648367, 3.08979})
setQ({0.786896, -0.117569, -0.531292, -0.0981435, 0.641413, 3.14371})
setQ({0.776018, -0.136662, -0.521611, -0.162897, 0.64483, 3.21595})
setQ({0.776379, -0.147181, -0.519792, -0.186102, 0.67183, 3.30879})
setQ({0.770927, -0.142931, -0.50532, -0.273272, 0.660586, 3.3537})
setQ({0.749088, -0.140803, -0.470532, -0.323482, 0.638556, 3.42652})
setQ({0.790733, -0.132694, -0.469401, -0.403979, 0.65403, 3.46498})
setQ({0.842751, -0.123448, -0.436107, -0.366847, 0.661228, 3.53332})
setQ({0.894769, -0.114202, -0.402814, -0.329715, 0.668426, 3.60165})
setQ({0.946786, -0.104955, -0.36952, -0.292584, 0.675624, 3.66999})
setQ({0.998804, -0.095709, -0.336227, -0.255452, 0.682822, 3.73832})
setQ({1.05082, -0.0864627, -0.302934, -0.21832, 0.69002, 3.80665})
setQ({1.10284, -0.0772164, -0.26964, -0.181188, 0.697218, 3.87499})
setQ({1.15486, -0.0679702, -0.236347, -0.144056, 0.704416, 3.94332})
setQ({1.20688, -0.0587239, -0.203054, -0.106924, 0.711614, 4.01166})
setQ({1.25889, -0.0494776, -0.16976, -0.0697918, 0.718812, 4.07999})
setQ({1.31091, -0.0402314, -0.136467, -0.0326598, 0.72601, 4.14833})
setQ({1.36293, -0.0309851, -0.103173, 0.00447217, 0.733208, 4.21666})
setQ({1.41495, -0.0217388, -0.0698801, 0.0416041, 0.740406, 4.285})
setQ({1.46696, -0.0124925, -0.0365867, 0.0787361, 0.747604, 4.35333})
setQ({1.51898, -0.00324627, -0.00329337, 0.115868, 0.754802, 4.42167})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 177
Time elapsed: 1.008
LUAfile.close();