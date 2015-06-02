#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install -y php5 libapache2-mod-php5
/etc/init.d/apache2 restart

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi