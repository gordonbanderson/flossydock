#!/bin/bash

sudo certbot certonly --standalone --preferred-challenges http --email "gordon.b.anderson@gmail.com" --agree-tos -d gordonbanderson.com -d www.gordonbanderson.com

cp /etc/letsencrypt/archive/"$CN"/cert1.pem /var/certs/cert1.pem
cp /etc/letsencrypt/archive/"$CN"/privkey1.pem /var/certs/privkey1.pem
