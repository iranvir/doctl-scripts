#!/bin/sh
doctl compute droplet list --tag-name galera --no-header --format=ID | xargs -I vm doctl compute droplet-action rebuild --image debian-11-x64 vm
rm $HOME/.ssh/known_hosts
exit 0
