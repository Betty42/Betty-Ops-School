#!/bin/bash

vagrant ssh server1 -- -t "sudo sed -i '/ud127.0.0.1 www.ascii-art.de/d' /etc/hosts"
sudo sed -i '/www.ascii-art.de/d' /etc/hosts
