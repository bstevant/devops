import argparse

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, help='file to parse')
parser.add_argument('ts1', type=int, help='Timestamp')
parser.add_argument('ts2', type=int, help='Timestamp')
args = parser.parse_args()

with open(args.filepath, 'r') as resfile:
    last = 0
    for l in resfile.readlines():
        s = l.split(' ')
        ts = int(s[0])
        v1 = s[14]
        v2 = s[15]
        try:
            v = float(v1)
        except:
            try:
                v = float(v2)
            except:
                continue
        if last !=0:
            v2 = (v+last)/2
            v = v2
	last = v
        if (ts >= args.ts1) and (ts <= args.ts2):
            print '%d\t%f' % (ts, v)

