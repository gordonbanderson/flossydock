#!/bin/bash
echo 'CN:'
echo $CN

#Do not use standalone here, as that tries to create a new webserver.  Using --webroot and -w means that
#nginx will do the serving of the auth file
certbot certonly --debug-challenges -v --no-eff-email --webroot  --staging --preferred-challenges http --email "gordon.b.anderson@gmail.com" --agree-tos -d gordonbanderson.com -d www.gordonbanderson.com -w /var/www/public/

cp /etc/letsencrypt/archive/"$CN"/cert1.pem /var/certs/cert1.pem
cp /etc/letsencrypt/archive/"$CN"/privkey1.pem /var/certs/privkey1.pem
