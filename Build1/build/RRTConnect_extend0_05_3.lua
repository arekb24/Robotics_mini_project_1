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
setQ({-3.10752, -0.828588, -2.97159, -3.06536, 0.0807943, -1.53396})
setQ({-3.07305, -0.830177, -2.94118, -2.98771, 0.0625885, -1.49492})
setQ({-3.03857, -0.831765, -2.91077, -2.91007, 0.0443828, -1.45589})
setQ({-3.00409, -0.833353, -2.88037, -2.83242, 0.026177, -1.41685})
setQ({-2.96962, -0.834942, -2.84996, -2.75478, 0.00797128, -1.37781})
setQ({-2.93514, -0.83653, -2.81955, -2.67713, -0.0102345, -1.33877})
setQ({-2.90066, -0.838119, -2.78914, -2.59949, -0.0284402, -1.29973})
setQ({-2.86618, -0.839707, -2.75873, -2.52184, -0.046646, -1.2607})
setQ({-2.83171, -0.841295, -2.72832, -2.4442, -0.0648517, -1.22166})
setQ({-2.79723, -0.842884, -2.69792, -2.36655, -0.0830574, -1.18262})
setQ({-2.76275, -0.844472, -2.66751, -2.28891, -0.101263, -1.14358})
setQ({-2.72828, -0.84606, -2.6371, -2.21126, -0.119469, -1.10454})
setQ({-2.6938, -0.847649, -2.60669, -2.13362, -0.137675, -1.06551})
setQ({-2.65932, -0.849237, -2.57628, -2.05597, -0.15588, -1.02647})
setQ({-2.62485, -0.850826, -2.54587, -1.97833, -0.174086, -0.987429})
setQ({-2.59037, -0.852414, -2.51547, -1.90068, -0.192292, -0.948391})
setQ({-2.55589, -0.854002, -2.48506, -1.82304, -0.210498, -0.909353})
setQ({-2.52141, -0.855591, -2.45465, -1.74539, -0.228703, -0.870315})
setQ({-2.48694, -0.857179, -2.42424, -1.66775, -0.246909, -0.831277})
setQ({-2.45246, -0.858767, -2.39383, -1.5901, -0.265115, -0.792239})
setQ({-2.41798, -0.860356, -2.36342, -1.51246, -0.283321, -0.753201})
setQ({-2.38351, -0.861944, -2.33302, -1.43481, -0.301526, -0.714163})
setQ({-2.34903, -0.863533, -2.30261, -1.35717, -0.319732, -0.675125})
setQ({-2.31455, -0.865121, -2.2722, -1.27952, -0.337938, -0.636087})
setQ({-2.28008, -0.866709, -2.24179, -1.20188, -0.356144, -0.597049})
setQ({-2.2456, -0.868298, -2.21138, -1.12423, -0.374349, -0.558011})
setQ({-2.21112, -0.869886, -2.18097, -1.04659, -0.392555, -0.518973})
setQ({-2.17664, -0.871474, -2.15057, -0.968943, -0.410761, -0.479934})
setQ({-2.14217, -0.873063, -2.12016, -0.891299, -0.428967, -0.440896})
setQ({-2.10583, -0.845873, -2.1221, -0.946183, -0.451101, -0.374307})
setQ({-2.06949, -0.818684, -2.12405, -1.00107, -0.473235, -0.307717})
setQ({-2.03315, -0.791494, -2.12599, -1.05595, -0.49537, -0.241127})
setQ({-1.99681, -0.764305, -2.12794, -1.11084, -0.517504, -0.174537})
setQ({-1.96047, -0.737115, -2.12988, -1.16572, -0.539638, -0.107948})
setQ({-1.92413, -0.709926, -2.13183, -1.22061, -0.561773, -0.041358})
setQ({-1.88779, -0.682736, -2.13377, -1.27549, -0.583907, 0.0252317})
setQ({-1.85146, -0.655547, -2.13572, -1.33037, -0.606041, 0.0918215})
setQ({-1.81512, -0.628357, -2.13766, -1.38526, -0.628176, 0.158411})
setQ({-1.77878, -0.601168, -2.13961, -1.44014, -0.65031, 0.225001})
setQ({-1.74244, -0.573978, -2.14155, -1.49503, -0.672445, 0.291591})
setQ({-1.7061, -0.546789, -2.1435, -1.54991, -0.694579, 0.35818})
setQ({-1.66976, -0.519599, -2.14544, -1.6048, -0.716713, 0.42477})
setQ({-1.63342, -0.492409, -2.14739, -1.65968, -0.738848, 0.49136})
setQ({-1.59708, -0.46522, -2.14933, -1.71456, -0.760982, 0.55795})
setQ({-1.56074, -0.43803, -2.15128, -1.76945, -0.783116, 0.624539})
setQ({-1.5244, -0.410841, -2.15322, -1.82433, -0.805251, 0.691129})
setQ({-1.48807, -0.383651, -2.15517, -1.87922, -0.827385, 0.757719})
setQ({-1.45173, -0.356462, -2.15711, -1.9341, -0.849519, 0.824309})
setQ({-1.41539, -0.329272, -2.15906, -1.98899, -0.871654, 0.890898})
setQ({-1.37905, -0.302083, -2.161, -2.04387, -0.893788, 0.957488})
setQ({-1.34271, -0.274893, -2.16295, -2.09876, -0.915922, 1.02408})
setQ({-1.30637, -0.247704, -2.16489, -2.15364, -0.938057, 1.09067})
setQ({-1.27003, -0.220514, -2.16684, -2.20852, -0.960191, 1.15726})
setQ({-1.23369, -0.193325, -2.16878, -2.26341, -0.982325, 1.22385})
setQ({-1.17277, -0.213788, -2.101, -2.22871, -0.990016, 1.22722})
setQ({-1.11185, -0.234252, -2.03321, -2.19401, -0.997707, 1.2306})
setQ({-1.05092, -0.254716, -1.96543, -2.15931, -1.0054, 1.23397})
setQ({-0.990001, -0.27518, -1.89764, -2.1246, -1.01309, 1.23735})
setQ({-0.929078, -0.295643, -1.82985, -2.0899, -1.02078, 1.24073})
setQ({-0.868155, -0.316107, -1.76207, -2.0552, -1.02847, 1.2441})
setQ({-0.807232, -0.336571, -1.69428, -2.0205, -1.03616, 1.24748})
setQ({-0.746309, -0.357035, -1.6265, -1.9858, -1.04385, 1.25085})
setQ({-0.685386, -0.377498, -1.55871, -1.9511, -1.05154, 1.25423})
setQ({-0.624463, -0.397962, -1.49093, -1.9164, -1.05923, 1.2576})
setQ({-0.56354, -0.418426, -1.42314, -1.8817, -1.06692, 1.26098})
setQ({-0.502617, -0.43889, -1.35535, -1.847, -1.07461, 1.26436})
setQ({-0.441694, -0.459353, -1.28757, -1.81229, -1.0823, 1.26773})
setQ({-0.380772, -0.479817, -1.21978, -1.77759, -1.08999, 1.27111})
setQ({-0.319849, -0.500281, -1.152, -1.74289, -1.09768, 1.27448})
setQ({-0.258926, -0.520744, -1.08421, -1.70819, -1.10537, 1.27786})
setQ({-0.198003, -0.541208, -1.01642, -1.67349, -1.11306, 1.28123})
setQ({-0.13708, -0.561672, -0.948638, -1.63879, -1.12076, 1.28461})
setQ({-0.076157, -0.582136, -0.880852, -1.60409, -1.12845, 1.28799})
setQ({-0.0152341, -0.602599, -0.813066, -1.56939, -1.13614, 1.29136})
setQ({0.0456888, -0.623063, -0.745281, -1.53468, -1.14383, 1.29474})
setQ({0.106612, -0.643527, -0.677495, -1.49998, -1.15152, 1.29811})
setQ({0.167535, -0.663991, -0.609709, -1.46528, -1.15921, 1.30149})
setQ({0.228458, -0.684454, -0.541923, -1.43058, -1.1669, 1.30486})
setQ({0.28938, -0.704918, -0.474137, -1.39588, -1.17459, 1.30824})
setQ({0.350303, -0.725382, -0.406351, -1.36118, -1.18228, 1.31162})
setQ({0.411226, -0.745846, -0.338565, -1.32648, -1.18997, 1.31499})
setQ({0.472149, -0.766309, -0.270779, -1.29178, -1.19766, 1.31837})
setQ({0.479003, -0.768612, -0.263153, -1.28787, -1.19853, 1.31875})
setQ({0.536977, -0.773683, -0.253935, -1.25004, -1.14061, 1.27701})
setQ({0.594952, -0.778755, -0.244717, -1.2122, -1.08268, 1.23527})
setQ({0.652926, -0.783826, -0.235499, -1.17437, -1.02476, 1.19353})
setQ({0.7109, -0.788898, -0.22628, -1.13654, -0.966843, 1.15179})
setQ({0.768874, -0.793969, -0.217062, -1.0987, -0.908922, 1.11006})
setQ({0.826848, -0.799041, -0.207844, -1.06087, -0.851002, 1.06832})
setQ({0.884822, -0.804112, -0.198626, -1.02303, -0.793081, 1.02658})
setQ({0.942796, -0.809184, -0.189408, -0.985199, -0.73516, 0.984842})
setQ({1.00077, -0.814256, -0.180189, -0.947365, -0.677239, 0.943104})
setQ({1.05874, -0.819327, -0.170971, -0.909531, -0.619319, 0.901366})
setQ({1.11672, -0.824399, -0.161753, -0.871696, -0.561398, 0.859628})
setQ({1.17469, -0.82947, -0.152535, -0.833862, -0.503477, 0.81789})
setQ({1.23267, -0.834542, -0.143317, -0.796028, -0.445556, 0.776151})
setQ({1.29064, -0.839613, -0.134098, -0.758194, -0.387636, 0.734413})
setQ({1.34862, -0.844685, -0.12488, -0.72036, -0.329715, 0.692675})
setQ({1.40659, -0.849756, -0.115662, -0.682526, -0.271794, 0.650937})
setQ({1.46456, -0.854828, -0.106444, -0.644691, -0.213873, 0.609199})
setQ({1.52254, -0.8599, -0.0972256, -0.606857, -0.155953, 0.567461})
setQ({1.58051, -0.864971, -0.0880074, -0.569023, -0.0980319, 0.525723})
setQ({1.63849, -0.870043, -0.0787892, -0.531189, -0.0401111, 0.483985})
setQ({1.69646, -0.875114, -0.069571, -0.493355, 0.0178096, 0.442247})
setQ({1.75443, -0.880186, -0.0603528, -0.455521, 0.0757304, 0.400509})
setQ({1.81241, -0.885257, -0.0511346, -0.417686, 0.133651, 0.358771})
setQ({1.85239, -0.888755, -0.0447777, -0.391596, 0.173593, 0.329988})
setQ({1.8262, -0.873933, -0.0518798, -0.377405, 0.177897, 0.393296})
setQ({1.78982, -0.853347, -0.061744, -0.357696, 0.183874, 0.481225})
setQ({1.75344, -0.832761, -0.0716082, -0.337986, 0.189852, 0.569154})
setQ({1.71707, -0.812175, -0.0814724, -0.318277, 0.195829, 0.657082})
setQ({1.68069, -0.791589, -0.0913366, -0.298567, 0.201806, 0.745011})
setQ({1.64432, -0.771003, -0.101201, -0.278857, 0.207784, 0.83294})
setQ({1.60794, -0.750416, -0.111065, -0.259148, 0.213761, 0.920869})
setQ({1.57156, -0.72983, -0.120929, -0.239438, 0.219738, 1.0088})
setQ({1.53519, -0.709244, -0.130793, -0.219729, 0.225716, 1.09673})
setQ({1.49881, -0.688658, -0.140658, -0.200019, 0.231693, 1.18466})
setQ({1.46244, -0.668072, -0.150522, -0.18031, 0.237671, 1.27258})
setQ({1.42606, -0.647486, -0.160386, -0.1606, 0.243648, 1.36051})
setQ({1.38968, -0.6269, -0.17025, -0.14089, 0.249625, 1.44844})
setQ({1.35331, -0.606314, -0.180114, -0.121181, 0.255603, 1.53637})
setQ({1.31693, -0.585728, -0.189979, -0.101471, 0.26158, 1.6243})
setQ({1.28056, -0.565142, -0.199843, -0.0817616, 0.267557, 1.71223})
setQ({1.24418, -0.544556, -0.209707, -0.062052, 0.273535, 1.80016})
setQ({1.2078, -0.523969, -0.219571, -0.0423424, 0.279512, 1.88809})
setQ({1.17143, -0.503383, -0.229435, -0.0226328, 0.28549, 1.97602})
setQ({1.13505, -0.482797, -0.2393, -0.00292326, 0.291467, 2.06394})
setQ({1.09867, -0.462211, -0.249164, 0.0167863, 0.297444, 2.15187})
setQ({1.0623, -0.441625, -0.259028, 0.0364959, 0.303422, 2.2398})
setQ({1.02592, -0.421039, -0.268892, 0.0562055, 0.309399, 2.32773})
setQ({0.989546, -0.400453, -0.278756, 0.0759151, 0.315376, 2.41566})
setQ({0.95317, -0.379867, -0.288621, 0.0956247, 0.321354, 2.50359})
setQ({0.916794, -0.359281, -0.298485, 0.115334, 0.327331, 2.59152})
setQ({0.880418, -0.338695, -0.308349, 0.135044, 0.333309, 2.67945})
setQ({0.844042, -0.318109, -0.318213, 0.154753, 0.339286, 2.76738})
setQ({0.807666, -0.297522, -0.328077, 0.174463, 0.345263, 2.8553})
setQ({0.77129, -0.276936, -0.337942, 0.194173, 0.351241, 2.94323})
setQ({0.734914, -0.25635, -0.347806, 0.213882, 0.357218, 3.03116})
setQ({0.746862, -0.252553, -0.351261, 0.248705, 0.349781, 3.1237})
setQ({0.758811, -0.248755, -0.354716, 0.283528, 0.342344, 3.21624})
setQ({0.77076, -0.244958, -0.358171, 0.31835, 0.334907, 3.30877})
setQ({0.782708, -0.24116, -0.361626, 0.353173, 0.32747, 3.40131})
setQ({0.835261, -0.224683, -0.335518, 0.339828, 0.356439, 3.47389})
setQ({0.887814, -0.208205, -0.309409, 0.326483, 0.385408, 3.54647})
setQ({0.940367, -0.191728, -0.283301, 0.313138, 0.414376, 3.61905})
setQ({0.992919, -0.175251, -0.257192, 0.299794, 0.443345, 3.69163})
setQ({1.04547, -0.158773, -0.231084, 0.286449, 0.472314, 3.7642})
setQ({1.09802, -0.142296, -0.204976, 0.273104, 0.501282, 3.83678})
setQ({1.15058, -0.125819, -0.178867, 0.259759, 0.530251, 3.90936})
setQ({1.20313, -0.109341, -0.152759, 0.246414, 0.55922, 3.98194})
setQ({1.25568, -0.0928641, -0.12665, 0.233069, 0.588188, 4.05452})
setQ({1.30824, -0.0763867, -0.100542, 0.219724, 0.617157, 4.1271})
setQ({1.36079, -0.0599094, -0.0744336, 0.206379, 0.646125, 4.19968})
setQ({1.41334, -0.043432, -0.0483252, 0.193035, 0.675094, 4.27226})
setQ({1.46589, -0.0269547, -0.0222168, 0.17969, 0.704063, 4.34484})
setQ({1.51845, -0.0104773, 0.0038916, 0.166345, 0.733031, 4.41742})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
LUAfile.close();