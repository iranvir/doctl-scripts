#!/bin/sh
doctl compute droplet list --tag-name galera --no-header --format=ID | xargs -I vm doctl compute droplet delete vm --force
rm $HOME/.ssh/known_hosts
exit 0
