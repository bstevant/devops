import os
import numpy as np

pairs = [ 
          "fog9-fog10", 
          "fog9-fog11",
          "fog9-fog12",
          "fog10-fog9a", 
          "fog10-fog11",
          "fog10-fog12",
          "fog11-fog9a",
          "fog11-fog10", 
          "fog11-fog12",
          "fog12-fog9a",
          "fog12-fog10", 
          "fog12-fog11"
      ]
results = {}

for dirname in os.listdir('logs'):
    for pair in pairs:
	try:
        	text_file = open("logs/"+ dirname + "/iperf-" + pair + ".ipv6.enstb.fr", "r")
        	lines = text_file.readlines()
        	l = lines[0]
        	a = eval(l)
        	s = a[16]
        	sp = s.split()
        	res = float(sp[6])
        	unit = sp[7]
        	if unit == 'Mbits/sec':
            		res *= 1000
        	if pair not in results.keys():
            		results[pair] = []
        	results[pair].append(res)
        	text_file.close()
	except:
		continue
for pair in pairs:
    avg = np.average(results[pair])
    std = int(np.std(results[pair]) * 100 / avg)
    print pair + ": " + str(avg) + " dev: " + str(std) + "% (" + str(len(results[pair])) + " results)"
