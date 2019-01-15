#!/bin/sh
BASEDIR=/vagrant/ansible
#LOGDIR=`date +%Y-%m-%d-%H:%M`
#mkdir $BASEDIR/logs/$LOGDIR
#rm -f $BASEDIR/logs/current
#ln -s $LOGDIR $BASEDIR/logs/current
ansible-playbook $BASEDIR/iperf.yml -i $BASEDIR/hosts/iperf
#ansible-playbook $BASEDIR/iperf-stop.yml -i $BASEDIR/hosts/iperf
ansible-playbook $BASEDIR/iperf2.yml -i $BASEDIR/hosts/iperf2
#ansible-playbook $BASEDIR/iperf-stop.yml -i $BASEDIR/hosts/iperf2
#ansible-playbook $BASEDIR/iperf.yml -i $BASEDIR/hosts/iperf3
#ansible-playbook $BASEDIR/iperf-stop.yml -i $BASEDIR/hosts/iperf3
#ansible-playbook $BASEDIR/iperf.yml -i $BASEDIR/hosts/iperf4
#ansible-playbook $BASEDIR/iperf-stop.yml -i $BASEDIR/hosts/iperf4
