#!/bin/bash
echo 'CN:'
echo $CN


#Do not use standalone here, as that tries to create a new webserver.  Using --webroot and -w means that
#nginx will do the serving of the auth file
#Use --staging to test creation of certs
certbot certonly -v --no-eff-email --webroot  --staging --preferred-challenges http --email "gordon.b.anderson@gmail.com" --agree-tos -d gordonbanderson.com -d www.gordonbanderson.com -w /var/www/public/

find /  | grep pem
find / | grep archive
ls -lh /etc/letsencrypt/live/gordonbanderson.com/
cat /etc/letsencrypt/live/gordonbanderson.com/privkey.pem
echo '---- etc le ----'
ls -lh /etc/letsencrypt

echo '---- etc le archive ----'
find /etc/letsencrypt/archive/

