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
setQ({-3.08278, -0.818232, -2.96418, -3.19204, 0.0948812, -1.62365})
setQ({-3.05707, -0.818032, -2.97531, -3.24232, 0.108883, -1.70421})
setQ({-3.0296, -0.78687, -2.94402, -3.23834, 0.135762, -1.78518})
setQ({-2.94441, -0.780582, -2.91016, -3.27459, 0.131595, -1.8002})
setQ({-2.92076, -0.776772, -2.89006, -3.20087, 0.102403, -1.8525})
setQ({-2.83706, -0.771766, -2.89946, -3.15584, 0.0880321, -1.87796})
setQ({-2.80396, -0.754753, -2.83424, -3.1489, 0.080593, -1.94321})
setQ({-2.8101, -0.751499, -2.80607, -3.07917, 0.0572792, -2.00446})
setQ({-2.77151, -0.749802, -2.77447, -3.00261, 0.0700497, -2.043})
setQ({-2.72171, -0.732939, -2.7847, -2.92047, 0.0645638, -2.0618})
setQ({-2.69969, -0.725132, -2.70848, -2.90493, 0.11163, -2.09628})
setQ({-2.69494, -0.723742, -2.66526, -2.86049, 0.117594, -2.17436})
setQ({-2.67836, -0.715462, -2.57966, -2.82291, 0.100599, -2.14928})
setQ({-2.62978, -0.697759, -2.60025, -2.79181, 0.0960413, -2.15763})
setQ({-2.55441, -0.670295, -2.63218, -2.74356, 0.0889705, -2.17058})
setQ({-2.55817, -0.692593, -2.67261, -2.7633, 0.122951, -2.09115})
setQ({-2.57423, -0.697501, -2.64611, -2.80856, 0.103804, -2.0099})
setQ({-2.50918, -0.683176, -2.61377, -2.7586, 0.0997467, -1.96512})
setQ({-2.44413, -0.66885, -2.58143, -2.70864, 0.0956895, -1.92033})
setQ({-2.37908, -0.654525, -2.5491, -2.65868, 0.0916322, -1.87555})
setQ({-2.31404, -0.640199, -2.51676, -2.60872, 0.0875749, -1.83077})
setQ({-2.24899, -0.625874, -2.48442, -2.55877, 0.0835176, -1.78599})
setQ({-2.18394, -0.611548, -2.45208, -2.50881, 0.0794603, -1.7412})
setQ({-2.11889, -0.597223, -2.41975, -2.45885, 0.075403, -1.69642})
setQ({-2.05385, -0.582898, -2.38741, -2.40889, 0.0713457, -1.65164})
setQ({-1.9888, -0.568572, -2.35507, -2.35893, 0.0672884, -1.60686})
setQ({-1.92375, -0.554247, -2.32274, -2.30897, 0.0632311, -1.56207})
setQ({-1.8587, -0.539921, -2.2904, -2.25901, 0.0591738, -1.51729})
setQ({-1.79366, -0.525596, -2.25806, -2.20905, 0.0551165, -1.47251})
setQ({-1.72861, -0.51127, -2.22572, -2.15909, 0.0510592, -1.42772})
setQ({-1.66356, -0.496945, -2.19339, -2.10913, 0.0470019, -1.38294})
setQ({-1.59851, -0.48262, -2.16105, -2.05917, 0.0429446, -1.33816})
setQ({-1.53347, -0.468294, -2.12871, -2.00921, 0.0388873, -1.29338})
setQ({-1.46842, -0.453969, -2.09638, -1.95925, 0.03483, -1.24859})
setQ({-1.40337, -0.439643, -2.06404, -1.90929, 0.0307727, -1.20381})
setQ({-1.33832, -0.425318, -2.0317, -1.85933, 0.0267155, -1.15903})
setQ({-1.30431, -0.429521, -2.02624, -1.9225, 0.0642012, -1.10071})
setQ({-1.3119, -0.44707, -2.00886, -1.87303, 0.110975, -1.03218})
setQ({-1.27577, -0.44071, -2.03131, -1.86457, 0.109722, -0.942305})
setQ({-1.30542, -0.449168, -2.05876, -1.92152, 0.114323, -0.871375})
setQ({-1.31083, -0.466954, -2.05829, -1.96417, 0.134071, -0.785089})
setQ({-1.33639, -0.483446, -2.05003, -2.02679, 0.12312, -0.714629})
setQ({-1.33871, -0.470943, -2.07047, -2.0483, 0.140837, -0.621654})
setQ({-1.27772, -0.45913, -2.03868, -2.00249, 0.143345, -0.566648})
setQ({-1.21673, -0.447317, -2.00689, -1.95668, 0.145852, -0.511642})
setQ({-1.15575, -0.435505, -1.9751, -1.91087, 0.14836, -0.456636})
setQ({-1.09476, -0.423692, -1.94331, -1.86506, 0.150867, -0.40163})
setQ({-1.03377, -0.411879, -1.91152, -1.81925, 0.153375, -0.346624})
setQ({-0.972785, -0.400066, -1.87973, -1.77344, 0.155882, -0.291618})
setQ({-0.911798, -0.388253, -1.84794, -1.72763, 0.15839, -0.236612})
setQ({-0.850811, -0.376441, -1.81615, -1.68182, 0.160897, -0.181606})
setQ({-0.789824, -0.364628, -1.78436, -1.63601, 0.163405, -0.1266})
setQ({-0.728837, -0.352815, -1.75257, -1.5902, 0.165912, -0.0715941})
setQ({-0.66785, -0.341002, -1.72078, -1.54439, 0.16842, -0.0165882})
setQ({-0.606863, -0.329189, -1.68899, -1.49858, 0.170927, 0.0384178})
setQ({-0.545876, -0.317377, -1.6572, -1.45277, 0.173435, 0.0934238})
setQ({-0.484889, -0.305564, -1.62541, -1.40696, 0.175942, 0.14843})
setQ({-0.423902, -0.293751, -1.59362, -1.36115, 0.17845, 0.203436})
setQ({-0.362915, -0.281938, -1.56183, -1.31534, 0.180957, 0.258442})
setQ({-0.301928, -0.270125, -1.53005, -1.26954, 0.183465, 0.313448})
setQ({-0.240941, -0.258313, -1.49826, -1.22373, 0.185972, 0.368454})
setQ({-0.179954, -0.2465, -1.46647, -1.17792, 0.18848, 0.42346})
setQ({-0.118967, -0.234687, -1.43468, -1.13211, 0.190987, 0.478466})
setQ({-0.0579803, -0.222874, -1.40289, -1.0863, 0.193495, 0.533472})
setQ({0.00300668, -0.211062, -1.3711, -1.04049, 0.196002, 0.588478})
setQ({0.0639937, -0.199249, -1.33931, -0.994678, 0.19851, 0.643483})
setQ({0.124981, -0.187436, -1.30752, -0.948868, 0.201017, 0.698489})
setQ({0.185968, -0.175623, -1.27573, -0.903059, 0.203525, 0.753495})
setQ({0.246955, -0.16381, -1.24394, -0.857249, 0.206032, 0.808501})
setQ({0.307942, -0.151998, -1.21215, -0.811439, 0.20854, 0.863507})
setQ({0.368929, -0.140185, -1.18036, -0.76563, 0.211047, 0.918513})
setQ({0.429916, -0.128372, -1.14857, -0.71982, 0.213555, 0.973519})
setQ({0.490903, -0.116559, -1.11678, -0.674011, 0.216062, 1.02853})
setQ({0.55189, -0.104746, -1.08499, -0.628201, 0.21857, 1.08353})
setQ({0.612876, -0.0929336, -1.0532, -0.582392, 0.221077, 1.13854})
setQ({0.673863, -0.0811209, -1.02141, -0.536582, 0.223585, 1.19354})
setQ({0.73485, -0.0693081, -0.98962, -0.490772, 0.226092, 1.24855})
setQ({0.795837, -0.0574953, -0.95783, -0.444963, 0.2286, 1.30356})
setQ({0.856824, -0.0456825, -0.926041, -0.399153, 0.231107, 1.35856})
setQ({0.857816, -0.0374704, -0.932535, -0.332586, 0.266871, 1.42321})
setQ({0.882625, -0.0592911, -0.877924, -0.298942, 0.281886, 1.4908})
setQ({0.913103, -0.0525072, -0.899618, -0.251331, 0.304937, 1.56667})
setQ({0.929122, -0.0456623, -0.928993, -0.190354, 0.33921, 1.62945})
setQ({0.988592, -0.050974, -0.906188, -0.163042, 0.356369, 1.69926})
setQ({0.980771, -0.0208651, -0.965743, -0.162488, 0.388877, 1.76581})
setQ({0.999428, -0.0234455, -0.932388, -0.183833, 0.370865, 1.85386})
setQ({0.973891, -0.0310465, -0.884223, -0.226048, 0.441792, 1.86641})
setQ({0.959923, -0.0321539, -0.890277, -0.29898, 0.438598, 1.93303})
setQ({0.966908, -0.0446063, -0.85869, -0.342711, 0.456011, 2.01416})
setQ({0.953379, -0.0415935, -0.831453, -0.375624, 0.447833, 2.10313})
setQ({0.921978, -0.0449639, -0.761576, -0.429948, 0.442559, 2.13691})
setQ({0.894592, -0.0325671, -0.772798, -0.502462, 0.468105, 2.19222})
setQ({0.857491, -0.0121675, -0.72611, -0.502366, 0.428657, 2.25909})
setQ({0.853721, -0.0171009, -0.716857, -0.445441, 0.416234, 2.33959})
setQ({0.855249, -0.0307573, -0.673366, -0.465407, 0.412624, 2.42624})
setQ({0.84524, -0.0414551, -0.655537, -0.497657, 0.42479, 2.51723})
setQ({0.855678, -0.0466867, -0.632446, -0.499653, 0.426152, 2.6138})
setQ({0.847779, -0.0424487, -0.645806, -0.43502, 0.416694, 2.68779})
setQ({0.858179, -0.0535272, -0.611142, -0.404518, 0.431989, 2.77383})
setQ({0.855195, -0.0576164, -0.589375, -0.362312, 0.453825, 2.85893})
setQ({0.827826, -0.0519771, -0.539246, -0.41514, 0.501705, 2.89922})
setQ({0.812775, -0.0630621, -0.534077, -0.456131, 0.540828, 2.9793})
setQ({0.854541, -0.0457305, -0.552489, -0.443795, 0.584792, 3.05367})
setQ({0.848204, -0.107732, -0.526931, -0.398153, 0.565413, 3.10848})
setQ({0.843217, -0.109384, -0.530825, -0.435418, 0.605086, 3.19211})
setQ({0.815942, -0.107282, -0.498387, -0.36918, 0.630948, 3.24817})
setQ({0.799789, -0.0966191, -0.502729, -0.430539, 0.650975, 3.32193})
setQ({0.784721, -0.111746, -0.488619, -0.416391, 0.63478, 3.41618})
setQ({0.775853, -0.112264, -0.491769, -0.383928, 0.632218, 3.51026})
setQ({0.803953, -0.120876, -0.497136, -0.296581, 0.660276, 3.53654})
setQ({0.856489, -0.111448, -0.463899, -0.259361, 0.667927, 3.60438})
setQ({0.909024, -0.10202, -0.430663, -0.22214, 0.675579, 3.67223})
setQ({0.96156, -0.0925921, -0.397427, -0.18492, 0.68323, 3.74007})
setQ({1.0141, -0.083164, -0.364191, -0.147699, 0.690882, 3.80791})
setQ({1.06663, -0.0737359, -0.330955, -0.110479, 0.698534, 3.87575})
setQ({1.11917, -0.0643078, -0.297719, -0.0732584, 0.706185, 3.9436})
setQ({1.1717, -0.0548798, -0.264482, -0.0360379, 0.713837, 4.01144})
setQ({1.22424, -0.0454517, -0.231246, 0.00118259, 0.721488, 4.07928})
setQ({1.27677, -0.0360236, -0.19801, 0.0384031, 0.72914, 4.14712})
setQ({1.32931, -0.0265955, -0.164774, 0.0756235, 0.736792, 4.21496})
setQ({1.38184, -0.0171674, -0.131538, 0.112844, 0.744443, 4.28281})
setQ({1.43438, -0.00773937, -0.0983016, 0.150064, 0.752095, 4.35065})
setQ({1.48692, 0.00168871, -0.0650654, 0.187285, 0.759746, 4.41849})
setQ({1.53945, 0.0111168, -0.0318293, 0.224505, 0.767398, 4.48633})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
Path of length: 126
Time elapsed: 0.435
LUAfile.close();
