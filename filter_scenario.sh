nodes="fog8 fog9 fog10 fog11 fog12 fog13 fog14 g6fog"
gap=3600

for i in $nodes; do
  python filter_scenario.py ansible/logs/iperf/ $i $gap
done
