#!/bin/sh

# Declare date variable, combine eith env vars, and append to logfile
date=`date`
printf "$date $common_name at $trusted_ip disconnected - Session duration:$time_duration \n" >> /scripts/ovpn_auth

# Send vars via UDP nc command. -w0 is required to prevent waiting for stdin to close
printf "disconnect $common_name $trusted_ip $time_duration" | nc -u 10.7.2.94 30001 -w0

exit 0
