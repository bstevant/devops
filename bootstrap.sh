#!/bin/bash

apt-get update
apt-get install sudo
echo "fogadmin ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
chmod 0440 /etc/sudoers.d/ansible