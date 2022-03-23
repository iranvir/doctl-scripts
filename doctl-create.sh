#!/bin/sh
hosts=$(cat ./hosts)
for host in $hosts ; do
    doctl compute droplet create --image debian-11-x64 --ssh-keys 69:aa:d1:f0:48:59:c2:a4:1b:11:fe:d7:40:e2:80:22 --region lon1 --size s-1vcpu-1gb --no-header --tag-name galera $host
done
exit 0
