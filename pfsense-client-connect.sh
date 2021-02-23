#!/bin/sh

# Declare date variable, append line to ovpn_auth
date=`date`
printf "$date $common_name at $trusted_ip connected.\n" >> /scripts/ovpn_auth

# Send logon event to Logstash. -w0 flag is required, else nc waiting for STDIN/STDOUT to close crashes openvpn process
printf "connect $common_name $trusted_ip" | nc -u 10.7.2.94 30001 -w0

exit 0
