import argparse
import numpy

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, help='file to parse')
parser.add_argument('ts1', type=int, help='Timestamp')
parser.add_argument('ts2', type=int, help='Timestamp')
args = parser.parse_args()

with open(args.filepath, 'r') as resfile:
    last = []
    for l in resfile.readlines():
        s = l.split(' ')
        ts = int(s[0])
        v1 = s[14]
        v2 = s[15]
        if (ts < args.ts1) or (ts > args.ts2):
            continue
            
        try:
            v = float(v1)
        except:
            try:
                v = float(v2)
            except:
                continue
        
        last.append(v)
        last = last[-5:]
        print '%d\t%f' % (ts, numpy.median(last))

