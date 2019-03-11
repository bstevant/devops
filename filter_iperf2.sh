scn1="fog8 fog10 fog11 fog12 fog13 fog14 g6fog"
xp2="fog8 fog10 fog12 fog13 fog14 g6fog"
xp3="fog8 fog9 fog10 fog12 fog13 fog14 g6fog"
xp4="fog8 fog10 fog12 fog13 fog14 g6fog"
xp5="fog8 fog10 fog12 fog13 fog14 g6fog"
xp6="fog8 fog10 fog12 fog13 fog14 g6fog"
scn14="fog8 fog10 fog12 fog13 fog14 g6fog"

for i in $scn1; do
  echo "time bw" > filtered_scores/scn1_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547047314 1547064073 >> filtered_scores/scn1_downbw_$i.txt
  echo "time bw" > filtered_scores/scn1_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547047314 1547064073 >> filtered_scores/scn1_upbw_$i.txt
  echo "time ms" > filtered_scores/scn1_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547047314 1547064073 >> filtered_scores/scn1_ping_$i.txt
done
