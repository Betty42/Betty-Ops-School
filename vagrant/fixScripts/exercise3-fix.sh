#!/bin/bash

cd /etc/apache2/sites-available 
sudo sed -i 's/deny from all/Allow from all/i' ./default
sudo service apache2 restart
