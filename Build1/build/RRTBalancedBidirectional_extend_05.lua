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
setQ({-2.7482, -0.721121, -2.9184, -2.95988, 0.14969, -1.77454})
setQ({-2.35439, -0.615243, -2.83479, -2.77676, 0.20038, -1.97607})
setQ({-1.96059, -0.509364, -2.75119, -2.59364, 0.251071, -2.17761})
setQ({-1.56679, -0.403486, -2.66759, -2.41052, 0.301761, -2.37914})
setQ({-1.36809, -0.378642, -2.48193, -2.27742, 0.338119, -1.98367})
setQ({-1.47986, -0.276171, -2.31431, -1.97591, 0.238133, -1.67061})
setQ({-1.59163, -0.173699, -2.14669, -1.67441, 0.138146, -1.35755})
setQ({-1.7034, -0.0712278, -1.97907, -1.37291, 0.0381601, -1.04448})
setQ({-1.81518, 0.0312436, -1.81145, -1.0714, -0.0618262, -0.731421})
setQ({-1.92695, 0.133715, -1.64383, -0.769902, -0.161813, -0.418357})
setQ({-2.02209, 0.22094, -1.50114, -0.513259, -0.246922, -0.151874})
setQ({-2.03763, 0.18302, -1.57746, -0.238081, -0.132106, 0.240033})
setQ({-2.05317, 0.145101, -1.65377, 0.0370977, -0.0172899, 0.631939})
setQ({-2.06871, 0.107181, -1.73009, 0.312276, 0.0975261, 1.02385})
setQ({-2.08425, 0.0692619, -1.8064, 0.587455, 0.212342, 1.41575})
setQ({-2.09978, 0.0313424, -1.88271, 0.862633, 0.327158, 1.80766})
setQ({-2.11532, -0.00657712, -1.95903, 1.13781, 0.441974, 2.19957})
setQ({-2.13086, -0.0444966, -2.03534, 1.41299, 0.55679, 2.59147})
setQ({-2.1464, -0.0824161, -2.11165, 1.68817, 0.671606, 2.98338})
setQ({-2.16194, -0.120336, -2.18797, 1.96335, 0.786422, 3.37529})
setQ({-1.74424, -0.144206, -2.15649, 2.16422, 0.61775, 3.44718})
setQ({-1.32655, -0.168077, -2.12501, 2.36509, 0.449077, 3.51908})
setQ({-0.90885, -0.191947, -2.09353, 2.56596, 0.280405, 3.59098})
setQ({-0.491153, -0.215818, -2.06205, 2.76682, 0.111732, 3.66288})
setQ({-0.0734556, -0.239688, -2.03057, 2.96769, -0.0569405, 3.73477})
setQ({0.344242, -0.263559, -1.99909, 3.16856, -0.225613, 3.80667})
setQ({0.761939, -0.28743, -1.9676, 3.36943, -0.394286, 3.87857})
setQ({1.17964, -0.3113, -1.93612, 3.5703, -0.562958, 3.95047})
setQ({1.59733, -0.335171, -1.90464, 3.77117, -0.731631, 4.02236})
setQ({2.01503, -0.359041, -1.87316, 3.97204, -0.900303, 4.09426})
setQ({2.36873, -0.379254, -1.84651, 4.14213, -1.04313, 4.15514})
setQ({2.17824, -0.362809, -1.67087, 3.74788, -0.885541, 4.10688})
setQ({1.98775, -0.346363, -1.49523, 3.35364, -0.727952, 4.05861})
setQ({1.79726, -0.329917, -1.31959, 2.95939, -0.570362, 4.01035})
setQ({1.60677, -0.313471, -1.14395, 2.56514, -0.412772, 3.96208})
setQ({1.41628, -0.297026, -0.968316, 2.1709, -0.255182, 3.91382})
setQ({1.22579, -0.28058, -0.792678, 1.77665, -0.0975927, 3.86556})
setQ({1.0353, -0.264134, -0.61704, 1.3824, 0.0599971, 3.81729})
setQ({0.84481, -0.247688, -0.441402, 0.988157, 0.217587, 3.76903})
setQ({0.654321, -0.231243, -0.265764, 0.59391, 0.375177, 3.72076})
setQ({0.926806, -0.136876, -0.277663, 0.221615, 0.541328, 3.69851})
setQ({1.19929, -0.0425087, -0.289562, -0.150681, 0.707479, 3.67627})
setQ({1.38515, -0.0182543, -0.129781, 0.00115949, 0.734739, 4.08313})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
setQ({1.571, 0.006, 0.03, 0.153, 0.762, 4.49})
attach(bottle,table)
LUAfile.close();
