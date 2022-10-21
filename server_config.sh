#!/bin/bash

apt -y install proftpd

apt -y update | apt upgrade

cp /etc-proftpd/proftpd.conf /etc/proftpd/proftpd_backup.conf

sed -i "164,203 s^/"#//" /etc/proftpd/proftpd_backup.conf
sed -i '143 s/"//' /etc/proftpd/proftpd.conf

sed -i "9,12 s^/#//' /etc/proftpd/tls.conf
sed -i "27,28 s^/#//' /etc/proftpd/proftpd.conf

sed -i "9,12 s^/#//' / etc/proftpd/tls.conf
sed -i "27,28 s^/#//' /etc/proftpd/tls.conf
sed -i "49 s^/#//' /etc/proftpd/tls.conf
sed -i 45 s^/#//' /etc/proftpd/tsl.conf

openssl genrsa -out /etc/ssl/private/private/proftp.key 1024
openssl req -new -x509 -days 3650 -key /etc/ssl/private/proftpd.key -out /etc/ssl/certs/proftpd
	-subj '/C= /ST= /L= /O= /Ou= /CN= /emailAddress= '

service proftpd restart
