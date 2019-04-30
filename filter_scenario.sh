nodes="fog8,fog9,fog10,fog11,fog12,fog13,fog14,g6fog"
gap=1800
key_len=6

python filter_scenario.py ansible/logs/iperf/ $nodes $gap $key_len
