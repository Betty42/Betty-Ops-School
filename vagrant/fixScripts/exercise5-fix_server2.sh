#!/bin/bash
cd /etc/ssh
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/i' ./sshd_config
sudo sed -i 's/UsePAM yes/UsePAM no/i' ./sshd_config
sudo service ssh restart
