import argparse


#####################@
# Intervalles intersection
def intervalles_inter(intv_set1, intv_set2):
    intersections = []
    for intv1 in intv_set1:
        for intv2 in intv_set2:
            # Disjoint
            if (intv1[1] < intv2[0]) or (intv2[1] < intv1[0]):
                 continue
            # Equal
            if (intv1[0] == intv2[0]) and (intv2[1] == intv1[1]):
                intersections.append(intv1)
                continue
            # intv1 in intv2
            if (intv1[0] >= intv2[0]) and (intv1[1] <= intv2[1]):
                intersections.append(intv1)
                continue
            # intv2 in intv1
            if (intv2[0] >= intv1[0]) and (intv2[1] <= intv1[1]):
                intersections.append(intv2)
                continue
            # intv2 overlap with intv1
            if (intv1[0] <= intv2[0]) and (intv1[1] <= intv2[1]):
                intersections.append([intv2[0], intv1[1]])
                continue
            # intv1 overlap with intv2
            if (intv2[0] <= intv1[0]) and (intv2[1] <= intv1[1]):
                intersections.append([intv1[0], intv2[1]])
                continue
    return intersections

#####################@
# Intervalles difference
def intervalles_diff(intv_set1, intv_set2):
    differences = []

    if len(intv_set1) * len(intv_set2) == 0:
        return []

    for intv1 in intv_set1:
        finalize = False
        intv_extra = []
        idx = 0
        while (finalize != True) and (idx > len(intv_set2)):
            intv2 = intv_set2[idx]
            idx += 1
            # Disjoint
            if (intv1[1] <= intv2[0]):
                finalize = True
                continue
            if (intv2[1] <= intv1[0]):
                continue
            # Equal
            if (intv1[0] == intv2[0]) and (intv2[1] == intv1[1]):
                finalize = True
                intv1 = []
                continue
            # intv1 in intv2
            if (intv1[0] >= intv2[0]) and (intv1[1] <= intv2[1]):
                finalize = True
                intv1 = []
                continue
            # intv2 in intv1
            if (intv2[0] >= intv1[0]) and (intv2[1] <= intv1[1]):
                # intv1[0], intv2[0]
                # intv2[1], intv1[1]
                intv_extra = intervalles_diff([[intv2[1], intv1[1]]], intv_set2[idx:])
                intv1 = [intv1[0], intv2[0]]
                finalize = True
                continue
            # intv2 overlap with intv1
            if (intv1[0] <= intv2[0]) and (intv1[1] <= intv2[1]):
                intersections.append([intv2[0], intv1[1]])
                intv1 = [intv1[0], intv2[0]]
                finalize = True
                continue
            # intv1 overlap with intv2
            if (intv2[0] <= intv1[0]) and (intv2[1] <= intv1[1]):
                intv_extra = intervalles_diff([[intv2[1], intv1[1]]], intv_set2[idx:])
                intv1 = []
                finalize = True
                continue
        if len(intv1) > 0:
            differences.append(intv1)
        if len(intv_extra) > 0:
            differences += intv_extra
    return differences

def print_scenarios():
    for k in scenarios_inter.keys():
        print("%s: %d" % (k, len(scenarios_inter[k])))

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, help='dirname')
parser.add_argument('nodes', type=str, help='comma-sep nodes list')
parser.add_argument('gap', type=int, help='Gap btw scenario (in s)')
args = parser.parse_args()


nodes = args.nodes.split(',')

filenames = ['iperf-fog3n1.ipv6.enstb.fr-%s',
             'iperf-%s-fog3n1.ipv6.enstb.fr' ]
scenarios_inter = {}

for node in nodes:
    # Filter scenario with contiguous values
    scenarios_raw = {}
    nb_scenario = 0
    for f in filenames:
        path =  args.filepath + (f % node)
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
    
    #  Intersection gives scenarios where values of filenames are all available
    scenarios_inter[node] = []
    for s in scenarios_raw.values():
        if len(scenarios_inter[node]) == 0:
            scenarios_inter[node] = s
            continue
        new_scenarios = intervalles_inter(scenarios_inter[node], s)
        scenarios_inter[node] = new_scenarios

print_scenarios()
raw_input()

idx = 0
for n1 in nodes:
    idx += 1
    for n2 in nodes[idx:]:
        key = "%s_%s" % (n1, n2)
        scenarios_inter[key] = intervalles_inter(scenarios_inter[n1], scenarios_inter[n2])
        scenarios_inter[n1] = intervalles_diff(scenarios_inter[n1], scenarios_inter[key])

print_scenarios()
raw_input()

# Find intersection between nodes



#print("%s: %d" % (args.node, len(scenarios_inter)))
            