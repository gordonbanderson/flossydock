#!/bin/bash
echo 'CN:'
echo $CN

#Do not use standalone here, as that tries to create a new webserver.  Using --webroot and -w means that
#nginx will do the serving of the auth file
certbot certonly -v --no-eff-email --webroot  --preferred-challenges http --email "gordon.b.anderson@gmail.com" --agree-tos -d gordonbanderson.com -d www.gordonbanderson.com -w /var/www/public/

