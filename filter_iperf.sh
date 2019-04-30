xp1="fog8 fog10 fog12 fog13 fog14 g6fog"
xp2="fog8 fog10 fog12 fog13 fog14 g6fog"
xp3="fog8 fog9 fog10 fog12 fog13 fog14 g6fog"
xp4="fog8 fog10 fog12 fog13 fog14 g6fog"
xp5="fog8 fog10 fog12 fog13 fog14 g6fog"
xp6="fog8 fog10 fog12 fog13 fog14 g6fog"
xp14="fog8 fog10 fog12 fog13 fog14 g6fog"
xp18="fog8 fog9 fog10 fog11 fog12 fog13 g6fog"
xp19="fog8 fog9 fog10 fog12 fog13 g6fog"
xp20="fog8 fog9 fog10 fog11 fog12 fog13 fog14 g6fog"
xp30="fog9 fog10 fog12 fog13 fog14 g6fog"
xp31="fog9 fog10 fog12 fog13 fog14 g6fog"
xp32="fog9 fog10 fog12 fog13 fog14 g6fog"
xp34="fog8 fog9 fog10 fog12 fog13 fog14 g6fog"

for i in $xp1; do
  echo "time bw" > filtered_scores/xp1_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547047314 1547064073 >> filtered_scores/xp1_downbw_$i.txt
  echo "time bw" > filtered_scores/xp1_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547047314 1547064073 >> filtered_scores/xp1_upbw_$i.txt
  echo "time ms" > filtered_scores/xp1_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547047314 1547064073 >> filtered_scores/xp1_ping_$i.txt
done

for i in $xp2; do
  echo "time bw" > filtered_scores/xp2_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547112096 1547215700 >> filtered_scores/xp2_downbw_$i.txt
  echo "time bw" > filtered_scores/xp2_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547112096 1547215700 >> filtered_scores/xp2_upbw_$i.txt
  echo "time ms" > filtered_scores/xp2_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547112096 1547215700 >> filtered_scores/xp2_ping_$i.txt
done

for i in $xp3; do
  echo "time bw" > filtered_scores/xp3_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547222465 1547238019 >> filtered_scores/xp3_downbw_$i.txt
  echo "time bw" > filtered_scores/xp3_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547222465 1547238019 >> filtered_scores/xp3_upbw_$i.txt
  echo "time ms" > filtered_scores/xp3_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547222465 1547238019 >> filtered_scores/xp3_ping_$i.txt
done

for i in $xp4; do
  echo "time bw" > filtered_scores/xp4_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547250729 1547280703 >> filtered_scores/xp4_downbw_$i.txt
  echo "time bw" > filtered_scores/xp4_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547250729 1547280703 >> filtered_scores/xp4_upbw_$i.txt
  echo "time ms" > filtered_scores/xp4_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547250729 1547280703 >> filtered_scores/xp4_ping_$i.txt
done

for i in $xp5; do
  echo "time bw" > filtered_scores/xp5_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547288046 1547407809 >> filtered_scores/xp5_downbw_$i.txt
  echo "time bw" > filtered_scores/xp5_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547288046 1547407809 >> filtered_scores/xp5_upbw_$i.txt
  echo "time ms" > filtered_scores/xp5_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547288046 1547407809 >> filtered_scores/xp5_ping_$i.txt
done

for i in $xp6; do
  echo "time bw" > filtered_scores/xp6_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547411663 1547453163 >> filtered_scores/xp6_downbw_$i.txt
  echo "time bw" > filtered_scores/xp6_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547411663 1547453163 >> filtered_scores/xp6_upbw_$i.txt
  echo "time ms" > filtered_scores/xp6_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547411663 1547453163 >> filtered_scores/xp6_ping_$i.txt
done

for i in $xp6; do
  echo "time bw" > filtered_scores/xp6b_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547380000 1547453163 >> filtered_scores/xp6b_downbw_$i.txt
  echo "time bw" > filtered_scores/xp6b_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547380000 1547453163 >> filtered_scores/xp6b_upbw_$i.txt
  echo "time ms" > filtered_scores/xp6b_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547380000 1547453163 >> filtered_scores/xp6b_ping_$i.txt
done

for i in $xp14; do
  echo "time bw" > filtered_scores/xp14_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1548980086 1549025604 >> filtered_scores/xp14_downbw_$i.txt
  echo "time bw" > filtered_scores/xp14_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1548980086 1549025604 >> filtered_scores/xp14_upbw_$i.txt
  echo "time ms" > filtered_scores/xp14_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1548980086 1549025604 >> filtered_scores/xp14_ping_$i.txt
done

for i in $xp18; do
  echo "time bw" > filtered_scores/xp18_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1550183500 1550193900 >> filtered_scores/xp18_downbw_$i.txt
  echo "time bw" > filtered_scores/xp18_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1550183500 1550193900 >> filtered_scores/xp18_upbw_$i.txt
  echo "time ms" > filtered_scores/xp18_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1550183500 1550193900 >> filtered_scores/xp18_ping_$i.txt
done

for i in $xp19; do
  echo "time bw" > filtered_scores/xp19_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1551707000 1551773000 >> filtered_scores/xp19_downbw_$i.txt
  echo "time bw" > filtered_scores/xp19_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1551707000 1551773000 >> filtered_scores/xp19_upbw_$i.txt
  echo "time ms" > filtered_scores/xp19_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1551707000 1551773000 >> filtered_scores/xp19_ping_$i.txt
done

for i in $xp20; do
  echo "time bw" > filtered_scores/xp20_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1550095300 1550193400 >> filtered_scores/xp20_downbw_$i.txt
  echo "time bw" > filtered_scores/xp20_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1550095300 1550193400 >> filtered_scores/xp20_upbw_$i.txt
  echo "time ms" > filtered_scores/xp20_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1550095300 1550193400 >> filtered_scores/xp20_ping_$i.txt
done

for i in $xp30; do
  echo "time bw" > filtered_scores/xp30_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1553636370 1553699307 >> filtered_scores/xp30_downbw_$i.txt
  echo "time bw" > filtered_scores/xp30_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1553636370 1553699307 >> filtered_scores/xp30_upbw_$i.txt
  echo "time ms" > filtered_scores/xp30_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1553636370 1553699307 >> filtered_scores/xp30_ping_$i.txt
done

for i in $xp31; do
  echo "time bw" > filtered_scores/xp31_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1553712462 1553777198 >> filtered_scores/xp31_downbw_$i.txt
  echo "time bw" > filtered_scores/xp31_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1553712462 1553777198 >> filtered_scores/xp31_upbw_$i.txt
  echo "time ms" > filtered_scores/xp31_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1553712462 1553777198 >> filtered_scores/xp31_ping_$i.txt
done

for i in $xp32; do
  echo "time bw" > filtered_scores/xp32_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1553860656 1554111936 >> filtered_scores/xp32_downbw_$i.txt
  echo "time bw" > filtered_scores/xp32_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1553860656 1554111936 >> filtered_scores/xp32_upbw_$i.txt
  echo "time ms" > filtered_scores/xp32_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1553860656 1554111936 >> filtered_scores/xp32_ping_$i.txt
done

for i in $xp34; do
  echo "time bw" > filtered_scores/xp34_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1554247714 1554418804 >> filtered_scores/xp34_downbw_$i.txt
  echo "time bw" > filtered_scores/xp34_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1554247714 1554418804 >> filtered_scores/xp34_upbw_$i.txt
  echo "time ms" > filtered_scores/xp34_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1554247714 1554418804 >> filtered_scores/xp34_ping_$i.txt
done
