scn1="fog8 fog10 fog11 fog12 fog13 fog14 g6fog"
for i in $scn1; do
  echo "time bw" > filtered_scores/scn1_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1547856157 1548411965 >> filtered_scores/scn1_downbw_$i.txt
  echo "time bw" > filtered_scores/scn1_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1547856157 1548411965 >> filtered_scores/scn1_upbw_$i.txt
  echo "time ms" > filtered_scores/scn1_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1547856157 1548411965 >> filtered_scores/scn1_ping_$i.txt
done

scn21="fog8 fog9 fog10 fog11 fog12 fog13 fog14 g6fog"
for i in $scn21; do
  echo "time bw" > filtered_scores/scn21_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1549732972 1549758688 >> filtered_scores/scn21_downbw_$i.txt
  echo "time bw" > filtered_scores/scn21_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1549732972 1549758688 >> filtered_scores/scn21_upbw_$i.txt
  echo "time ms" > filtered_scores/scn21_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1549732972 1549758688 >> filtered_scores/scn21_ping_$i.txt
done

scn22="fog9 fog11 fog12 fog13 fog14 g6fog"
for i in $scn22; do
  echo "time bw" > filtered_scores/scn22_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1549980385 1549999583 >> filtered_scores/scn22_downbw_$i.txt
  echo "time bw" > filtered_scores/scn22_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1549980385 1549999583 >> filtered_scores/scn22_upbw_$i.txt
  echo "time ms" > filtered_scores/scn22_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1549980385 1549999583 >> filtered_scores/scn22_ping_$i.txt
done

scn23="fog8 fog9 fog11 fog12 fog13 g6fog"
for i in $scn23; do
  echo "time bw" > filtered_scores/scn23_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1550083086 1550163411 >> filtered_scores/scn23_downbw_$i.txt
  echo "time bw" > filtered_scores/scn23_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1550083086 1550163411 >> filtered_scores/scn23_upbw_$i.txt
  echo "time ms" > filtered_scores/scn23_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1550083086 1550163411 >> filtered_scores/scn23_ping_$i.txt
done

scn24="fog8 fog9 fog10 fog12 fog13 g6fog"
for i in $scn24; do
  echo "time bw" > filtered_scores/scn24_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1551564994 1551648818 >> filtered_scores/scn24_downbw_$i.txt
  echo "time bw" > filtered_scores/scn24_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1551564994 1551648818 >> filtered_scores/scn24_upbw_$i.txt
  echo "time ms" > filtered_scores/scn24_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1551564994 1551648818 >> filtered_scores/scn24_ping_$i.txt
done

scn25="fog8 fog9 fog10 fog12 fog13 g6fog"
for i in $scn25; do
  echo "time bw" > filtered_scores/scn25_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1551650621 1551696048 >> filtered_scores/scn25_downbw_$i.txt
  echo "time bw" > filtered_scores/scn25_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1551650621 1551696048 >> filtered_scores/scn25_upbw_$i.txt
  echo "time ms" > filtered_scores/scn25_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1551650621 1551696048 >> filtered_scores/scn25_ping_$i.txt
done

scn26="fog8 fog9 fog10 fog12 fog13 g6fog"
for i in $scn26; do
  echo "time bw" > filtered_scores/scn26_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1551701922 1551738635 >> filtered_scores/scn26_downbw_$i.txt
  echo "time bw" > filtered_scores/scn26_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1551701922 1551738635 >> filtered_scores/scn26_upbw_$i.txt
  echo "time ms" > filtered_scores/scn26_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1551701922 1551738635 >> filtered_scores/scn26_ping_$i.txt
done

scn27="fog8 fog9 fog10 fog12 fog13 g6fog"
for i in $scn27; do
  echo "time bw" > filtered_scores/scn27_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1551740583 1551789179 >> filtered_scores/scn27_downbw_$i.txt
  echo "time bw" > filtered_scores/scn27_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1551740583 1551789179 >> filtered_scores/scn27_upbw_$i.txt
  echo "time ms" > filtered_scores/scn27_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1551740583 1551789179 >> filtered_scores/scn27_ping_$i.txt
done

scn28="fog8 fog9 fog10 fog12 fog13 g6fog"
for i in $scn28; do
  echo "time bw" > filtered_scores/scn28_downbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i 1551876715 1551902049 >> filtered_scores/scn28_downbw_$i.txt
  echo "time bw" > filtered_scores/scn28_upbw_$i.txt
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr 1551876715 1551902049 >> filtered_scores/scn28_upbw_$i.txt
  echo "time ms" > filtered_scores/scn28_ping_$i.txt
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr 1551876715 1551902049 >> filtered_scores/scn28_ping_$i.txt
done
