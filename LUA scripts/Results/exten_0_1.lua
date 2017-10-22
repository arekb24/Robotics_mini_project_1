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
setQ({-3.10275, -0.82239, -2.95094, -3.07213, 0.0861631, -1.59838})
setQ({-3.05118, -0.79956, -2.95477, -3.06749, 0.0738092, -1.67981})
setQ({-2.97928, -0.794156, -2.94121, -3.11685, 0.0365003, -1.70788})
setQ({-2.93199, -0.781618, -2.89052, -3.0854, 0.0535558, -1.76918})
setQ({-2.89419, -0.770614, -2.88258, -3.00178, 0.0497398, -1.80632})
setQ({-2.84958, -0.767986, -2.82169, -3.02129, 0.0404851, -1.8682})
setQ({-2.79, -0.770055, -2.77692, -2.99774, 0.0653952, -1.92535})
setQ({-2.76656, -0.756301, -2.72877, -3.00285, 0.0826906, -2.00671})
setQ({-2.68878, -0.750559, -2.73204, -2.97009, 0.0532328, -2.05104})
setQ({-2.67734, -0.751825, -2.70174, -2.88725, 0.0616527, -2.09594})
setQ({-2.67794, -0.75487, -2.65019, -2.88187, 0.0502351, -2.18063})
setQ({-2.6882, -0.74826, -2.63917, -2.8958, 0.0723346, -2.27575})
setQ({-2.63366, -0.726823, -2.66223, -2.93279, 0.111834, -2.33147})
setQ({-2.61651, -0.701289, -2.67052, -3.01105, 0.152596, -2.3661})
setQ({-2.55312, -0.701086, -2.61745, -3.04965, 0.122799, -2.39414})
setQ({-2.54633, -0.690483, -2.63194, -3.01381, 0.122636, -2.31227})
setQ({-2.53891, -0.678883, -2.64779, -2.97461, 0.122458, -2.2227})
setQ({-2.49398, -0.665912, -2.63464, -2.95351, 0.10501, -2.13969})
setQ({-2.44906, -0.652941, -2.62148, -2.93241, 0.0875634, -2.05668})
setQ({-2.52181, -0.686656, -2.63687, -2.89491, 0.110557, -2.01928})
setQ({-2.60418, -0.721621, -2.64412, -2.86012, 0.0929525, -1.99881})
setQ({-2.59559, -0.720103, -2.63884, -2.83892, 0.0874447, -1.90178})
setQ({-2.613, -0.734272, -2.64022, -2.88629, 0.12341, -1.8246})
setQ({-2.59667, -0.731235, -2.64044, -2.88422, 0.134501, -1.72663})
setQ({-2.58034, -0.728198, -2.64067, -2.88216, 0.145591, -1.62867})
setQ({-2.6378, -0.732063, -2.70675, -2.84997, 0.163738, -1.5978})
setQ({-2.66656, -0.747479, -2.68617, -2.76953, 0.119807, -1.58721})
setQ({-2.66469, -0.746266, -2.69207, -2.75109, 0.131228, -1.4898})
setQ({-2.66267, -0.745377, -2.69052, -2.72932, 0.142354, -1.39287})
setQ({-2.66064, -0.744488, -2.68898, -2.70755, 0.153479, -1.29595})
setQ({-2.65862, -0.743599, -2.68743, -2.68577, 0.164605, -1.19902})
setQ({-2.65659, -0.74271, -2.68588, -2.664, 0.175731, -1.10209})
setQ({-2.59388, -0.732347, -2.6526, -2.62006, 0.179421, -1.04817})
setQ({-2.53117, -0.721985, -2.61932, -2.57612, 0.183111, -0.994243})
setQ({-2.46846, -0.711622, -2.58604, -2.53218, 0.186801, -0.940319})
setQ({-2.40575, -0.70126, -2.55276, -2.48824, 0.190492, -0.886395})
setQ({-2.34304, -0.690897, -2.51948, -2.4443, 0.194182, -0.832471})
setQ({-2.28033, -0.680535, -2.4862, -2.40035, 0.197872, -0.778547})
setQ({-2.21761, -0.670172, -2.45292, -2.35641, 0.201562, -0.724622})
setQ({-2.1549, -0.659809, -2.41963, -2.31247, 0.205252, -0.670698})
setQ({-2.09219, -0.649447, -2.38635, -2.26853, 0.208943, -0.616774})
setQ({-2.02948, -0.639084, -2.35307, -2.22459, 0.212633, -0.56285})
setQ({-1.96677, -0.628722, -2.31979, -2.18065, 0.216323, -0.508926})
setQ({-1.90406, -0.618359, -2.28651, -2.13671, 0.220013, -0.455002})
setQ({-1.84135, -0.607997, -2.25323, -2.09276, 0.223703, -0.401078})
setQ({-1.77864, -0.597634, -2.21995, -2.04882, 0.227394, -0.347154})
setQ({-1.71592, -0.587272, -2.18667, -2.00488, 0.231084, -0.29323})
setQ({-1.65321, -0.576909, -2.15338, -1.96094, 0.234774, -0.239306})
setQ({-1.5905, -0.566547, -2.1201, -1.917, 0.238464, -0.185382})
setQ({-1.52779, -0.556184, -2.08682, -1.87306, 0.242154, -0.131458})
setQ({-1.46508, -0.545821, -2.05354, -1.82912, 0.245845, -0.0775335})
setQ({-1.40237, -0.535459, -2.02026, -1.78517, 0.249535, -0.0236095})
setQ({-1.33966, -0.525096, -1.98698, -1.74123, 0.253225, 0.0303146})
setQ({-1.27694, -0.514734, -1.9537, -1.69729, 0.256915, 0.0842387})
setQ({-1.21423, -0.504371, -1.92042, -1.65335, 0.260605, 0.138163})
setQ({-1.15152, -0.494009, -1.88713, -1.60941, 0.264295, 0.192087})
setQ({-1.08881, -0.483646, -1.85385, -1.56547, 0.267986, 0.246011})
setQ({-1.0261, -0.473284, -1.82057, -1.52153, 0.271676, 0.299935})
setQ({-0.963388, -0.462921, -1.78729, -1.47758, 0.275366, 0.353859})
setQ({-0.900677, -0.452558, -1.75401, -1.43364, 0.279056, 0.407783})
setQ({-0.837966, -0.442196, -1.72073, -1.3897, 0.282746, 0.461707})
setQ({-0.775255, -0.431833, -1.68745, -1.34576, 0.286437, 0.515631})
setQ({-0.712543, -0.421471, -1.65417, -1.30182, 0.290127, 0.569555})
setQ({-0.649832, -0.411108, -1.62089, -1.25788, 0.293817, 0.623479})
setQ({-0.587121, -0.400746, -1.5876, -1.21394, 0.297507, 0.677404})
setQ({-0.524409, -0.390383, -1.55432, -1.16999, 0.301197, 0.731328})
setQ({-0.461698, -0.380021, -1.52104, -1.12605, 0.304888, 0.785252})
setQ({-0.398987, -0.369658, -1.48776, -1.08211, 0.308578, 0.839176})
setQ({-0.336275, -0.359295, -1.45448, -1.03817, 0.312268, 0.8931})
setQ({-0.273564, -0.348933, -1.4212, -0.994229, 0.315958, 0.947024})
setQ({-0.210853, -0.33857, -1.38792, -0.950287, 0.319648, 1.00095})
setQ({-0.148142, -0.328208, -1.35464, -0.906346, 0.323339, 1.05487})
setQ({-0.0854302, -0.317845, -1.32135, -0.862405, 0.327029, 1.1088})
setQ({-0.0227189, -0.307483, -1.28807, -0.818463, 0.330719, 1.16272})
setQ({0.0399924, -0.29712, -1.25479, -0.774522, 0.334409, 1.21664})
setQ({0.102704, -0.286758, -1.22151, -0.73058, 0.338099, 1.27057})
setQ({0.165415, -0.276395, -1.18823, -0.686639, 0.34179, 1.32449})
setQ({0.228126, -0.266033, -1.15495, -0.642697, 0.34548, 1.37842})
setQ({0.290838, -0.25567, -1.12167, -0.598756, 0.34917, 1.43234})
setQ({0.353549, -0.245307, -1.08839, -0.554815, 0.35286, 1.48626})
setQ({0.41626, -0.234945, -1.0551, -0.510873, 0.35655, 1.54019})
setQ({0.478972, -0.224582, -1.02182, -0.466932, 0.360241, 1.59411})
setQ({0.541683, -0.21422, -0.988542, -0.42299, 0.363931, 1.64804})
setQ({0.604394, -0.203857, -0.955261, -0.379049, 0.367621, 1.70196})
setQ({0.667105, -0.193495, -0.92198, -0.335108, 0.371311, 1.75589})
setQ({0.729817, -0.183132, -0.888699, -0.291166, 0.375001, 1.80981})
setQ({0.792528, -0.17277, -0.855417, -0.247225, 0.378692, 1.86373})
setQ({0.7731, -0.175966, -0.836406, -0.170775, 0.408498, 1.91391})
setQ({0.783332, -0.186944, -0.774949, -0.133211, 0.400812, 1.9812})
setQ({0.745053, -0.183351, -0.754967, -0.102725, 0.400336, 2.06601})
setQ({0.778732, -0.172252, -0.745913, -0.0712533, 0.384749, 2.15219})
setQ({0.754018, -0.172017, -0.737099, 0.00441792, 0.402695, 2.20932})
setQ({0.789403, -0.172414, -0.697057, 0.0768963, 0.398152, 2.25257})
setQ({0.787338, -0.184229, -0.661625, 0.0394378, 0.429839, 2.33127})
setQ({0.780952, -0.17532, -0.648692, 0.0067627, 0.457273, 2.42011})
setQ({0.775018, -0.180093, -0.624439, -0.0602509, 0.457958, 2.48984})
setQ({0.829267, -0.17129, -0.591276, -0.0159797, 0.463876, 2.55216})
setQ({0.800045, -0.144917, -0.588437, 0.000763194, 0.54018, 2.60054})
setQ({0.802922, -0.1418, -0.573367, -0.0248026, 0.562155, 2.69337})
setQ({0.843002, -0.141882, -0.558178, -0.00756002, 0.567332, 2.78191})
setQ({0.813745, -0.129548, -0.553208, 0.064488, 0.564794, 2.84331})
setQ({0.781507, -0.132458, -0.52287, 0.121431, 0.59499, 2.90558})
setQ({0.796892, -0.155017, -0.523763, 0.122385, 0.658735, 2.97761})
setQ({0.754503, -0.148904, -0.511309, 0.0367118, 0.658383, 3.00351})
setQ({0.797528, -0.134831, -0.502486, -0.0055151, 0.666961, 3.08108})
setQ({0.790547, -0.119891, -0.521604, -0.0739848, 0.68888, 3.14584})
setQ({0.769791, -0.137248, -0.510314, -0.157843, 0.663331, 3.18399})
setQ({0.789808, -0.133127, -0.527754, -0.230094, 0.691009, 3.24136})
setQ({0.809145, -0.124334, -0.528487, -0.281175, 0.679007, 3.32379})
setQ({0.8168, -0.135831, -0.515635, -0.333206, 0.666725, 3.40617})
setQ({0.783948, -0.133499, -0.471985, -0.390106, 0.64819, 3.46473})
setQ({0.836419, -0.1242, -0.43852, -0.353899, 0.655778, 3.53308})
setQ({0.888889, -0.1149, -0.405054, -0.317692, 0.663365, 3.60143})
setQ({0.941359, -0.1056, -0.371588, -0.281485, 0.670952, 3.66978})
setQ({0.993829, -0.0962996, -0.338123, -0.245278, 0.678539, 3.73813})
setQ({1.0463, -0.0869996, -0.304657, -0.209071, 0.686127, 3.80649})
setQ({1.09877, -0.0776997, -0.271191, -0.172864, 0.693714, 3.87484})
setQ({1.15124, -0.0683997, -0.237726, -0.136657, 0.701301, 3.94319})
setQ({1.20371, -0.0590998, -0.20426, -0.10045, 0.708889, 4.01154})
setQ({1.25618, -0.0497998, -0.170794, -0.0642426, 0.716476, 4.07989})
setQ({1.30865, -0.0404998, -0.137328, -0.0280355, 0.724063, 4.14824})
setQ({1.36112, -0.0311999, -0.103863, 0.00817161, 0.731651, 4.21659})
setQ({1.41359, -0.0218999, -0.0703971, 0.0443787, 0.739238, 4.28495})
setQ({1.46606, -0.0125999, -0.0369314, 0.0805858, 0.746825, 4.3533})
setQ({1.51853, -0.00329996, -0.00346569, 0.116793, 0.754413, 4.42165})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
-- Path of length: 127
-- Time elapsed: 0.381
LUAfile.close();
