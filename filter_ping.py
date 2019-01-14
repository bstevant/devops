import argparse

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, help='file to parse')
parser.add_argument('ts1', type=int, help='Timestamp')
parser.add_argument('ts2', type=int, help='Timestamp')
args = parser.parse_args()

with open(args.filepath, 'r') as resfile:
    for l in resfile.readlines():
        s = l.split(' ')
        ts = int(s[0])
        values = s[5]
        vs = values.split('/')
        try:
            v = float(vs[1])
        except:
            continue
        if (ts >= args.ts1) and (ts <= args.ts2):
            print '%d\t%f' % (ts, v)

