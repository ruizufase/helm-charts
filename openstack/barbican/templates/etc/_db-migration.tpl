#!/usr/bin/env bash

cd /var/lib/openstack/bin/

echo "Current DB Version :"
barbican-manage db current 

echo "Checking Upgrade :"
barbican-status upgrade check

echo "Proceeding with upgrade :"
barbican-manage db upgrade

echo "DB Version after migration:"
barbican-manage db current 

exit 0
