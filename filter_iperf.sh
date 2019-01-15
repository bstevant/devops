xp1="fog8 fog10 fog12 fog13 fog14 g6fog"
xp2="fog8 fog10 fog12 fog13 fog14 g6fog"
xp3="fog8 fog9 fog10 fog12 fog13 fog14 g6fog"
xp4="fog8 fog10 fog12 fog13 fog14 g6fog"
xp5="fog8 fog10 fog12 fog13 fog14 g6fog"
xp6="fog8 fog10 fog12 fog13 fog14 g6fog"

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