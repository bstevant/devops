import argparse

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, help='dirname')
parser.add_argument('node', type=str, help='node')
parser.add_argument('gap', type=int, help='Gap btw scenario (in s)')
args = parser.parse_args()

nb_scenario = 0
filenames = ['iperf-fog3n1.ipv6.enstb.fr-%s',
             'iperf-%s-fog3n1.ipv6.enstb.fr' ]
scenarios_raw = []

for f in filenames:
    path =  args.filepath + (f % args.node)
    scenarios_raw[f] = []
    with open(path, 'r') as resfile:
        last_ts = 0
        for l in resfile.readlines():
            s = l.split(' ')
            ts = int(s[0])
            if (ts - last_ts) > args.gap:
                nb_scenario+=1
                if last_ts != 0:
                    scenarios_raw[f].append([start_ts, last_ts])
                start_ts = ts
            last_ts = ts
    #print("%s: %d" % (path, nb_scenario))

scenarios_inter = []
for s in scenarios_raw.values:
    if len(scenarios_inter) == 0:
        scenarios_inter = s.copy()
        continue
    new_scenarios = []
    for intv1 in scenarios_inter:
        for intv2 in s:
            # Disjoint
            if (intv1[1] < intv2[0]) or (intv2[1] < intv1[0]):
                 continue
            # Equal
            if (intv1[0] == intv2[0]) and (intv2[1] == intv1[1]):
                new_scenarios.append(intv1)
                continue
            # intv1 in intv2
            if (intv1[0] >= intv2[0]) and (intv1[1] <= intv2[1]):
                new_scenarios.append(intv1)
                continue
            # intv2 in intv1
            if (intv2[0] >= intv1[0]) and (intv2[1] <= intv1[1]):
                new_scenarios.append(intv2)
                continue
            # intv2 overlap with intv1
            if (intv1[0] <= intv2[0]) and (intv1[1] <= intv2[1]):
                new_scenarios.append([intv2[0], intv1[1]])
                continue
            # intv1 overlap with intv2
            if (intv2[0] <= intv1[0]) and (intv2[1] <= intv1[1]):
                new_scenarios.append([intv1[0], intv2[1]])
                continue
    scenarios_inter = new_scenarios
print("%s: %d" % (args.node, len(scenarios_inter)))
            