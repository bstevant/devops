nodes="fog8 fog9 fog10 fog11 fog12 fog13 fog14 g6fog"
gap=3600

for i in $nodes; do
  python filter_iperf.py ansible/logs/iperf/iperf-fog3n1.ipv6.enstb.fr-$i $gap
  python filter_iperf.py ansible/logs/iperf/iperf-$i-fog3n1.ipv6.enstb.fr $gap
  python filter_ping.py ansible/logs/ping/ping-$i-fog3n1.ipv6.enstb.fr $gap
done
