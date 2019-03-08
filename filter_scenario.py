import argparse

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, help='file to parse')
parser.add_argument('gap', type=int, help='Gap btw scenario (in s)')
args = parser.parse_args()

nb_scenario = 0
with open(args.filepath, 'r') as resfile:
    last_ts = 0
    for l in resfile.readlines():
        s = l.split(' ')
        ts = int(s[0])
        if (ts - last_ts) > 3600:
            nb_scenario+=1
        if last_ts == 0:
            last_ts = ts
print("%s: %d" % (args.filepath, nb_scenario))
