import os
import numpy as np

pairs = [ "fog8-fog11", 
          "fog8-fog10",
          "fog8-fog9",
          "fog9-fog11", 
          "fog9-fog10",
          "fog9-fog8",
          "fog10-fog11", 
          "fog10-fog8",
          "fog10-fog9",
          "fog11-fog8", 
          "fog11-fog9",
          "fog11-fog10"
      ]
results = {}

for dirname in os.listdir('logs'):
    for pair in pairs:
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
for pair in pairs:
    avg = np.average(results[pair])
    print pair + ": " + str(avg) + " (" + str(len(results[pair])) + " results)"