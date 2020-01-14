#!/bin/bash
echo 'CN:'
echo $CN

#Do not use standalone here, as that tries to create a new webserver.  Using --webroot and -w means that
#nginx will do the serving of the auth file
#Use --staging to test creation of certs

# From cron, pass RENEW=1 to run certbot renew
# sudo docker-compose run -e RENEW=1 certbot
echo 'RENEW'
echo $RENEW

if [ $RENEW -eq 1 ]
then
  echo "Checking certs for renew"
  certbot -v renew
else
  echo "Creating certs"

  find /etc/letsencrypt

#certbot certonly -v  --no-eff-email --webroot  --preferred-challenges http --email "gordon.b.anderson+aucc@gmail.com" --agree-tos -d arbroathunited.cc -d www.arbroathunited.cc -d cdn.arbroathunited.cc -d admin.arbroathunited.cc -w /var/www/aucc/public/

echo 'CREATING ERTS';

certbot --version
dpkg -l | grep certbot

certbot certonly -v  --dry-run  --no-eff-email --webroot  --preferred-challenges http --email "gordon.b.anderson+gba@gmail.com" --agree-tos -d gordonbanderson.com -d www.gordonbanderson.com -w /var/www/gba/public/


# certbot certonly -v  --staging --no-eff-email --webroot  --preferred-challenges http --email "gordon.b.anderson+gba@gmail.com" --agree-tos -d gordonbanderson.com -d www.gordonbanderson.com -w /var/www/gba/public/

 # -- original, above is testing -- 
#  certbot certonly -v  --staging --no-eff-email --webroot  --preferred-challenges http --email "gordon.b.anderson+gba@gmail.com" --agree-tos -d gordonbanderson.com -d www.gordonbanderson.com -w /var/www/gba/public/
#  certbot certonly -v  --staging --no-eff-email --webroot  --preferred-challenges http --email "gordon.b.anderson+aucc@gmail.com" --agree-tos -d arbroathunited.cc -d www.arbroathunited.cc -w /var/www/aucc/public/

fi

