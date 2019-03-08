import argparse

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, help='dirname')
parser.add_argument('node', type=str, help='node')
parser.add_argument('gap', type=int, help='Gap btw scenario (in s)')
args = parser.parse_args()

nb_scenario = 0
filenames = ['iperf-fog3n1.ipv6.enstb.fr-%s',
             'iperf-%s-fog3n1.ipv6.enstb.fr' ]
scenarios = []

for f in filenames:
    path =  args.filepath + (f % args.node)
    with open(path, 'r') as resfile:
        last_ts = 0
        for l in resfile.readlines():
            s = l.split(' ')
            ts = int(s[0])
            if (ts - last_ts) > args.gap:
                nb_scenario+=1
                if last_ts != 0:
                    scenarios.append([start_ts, last-ts])
                start_ts = ts
            last_ts = ts
    print("%s: %d" % (path, nb_scenario))
