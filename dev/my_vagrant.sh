#!/usr/bin/env bash

sudo ln -s /srv/www/andrewcassell/dev/apache_dev_vhost.conf /etc/httpd/sites-available/andrewcassell.conf
sudo ln -s /etc/httpd/sites-available/andrewcassell.conf /etc/httpd/sites-enabled/andrewcassell.conf
sudo apachectl restart