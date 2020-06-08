#!/usr/bin/env bash

cd /var/lib/openstack/bin/

echo "Current DB Version :" barbican-manage db current 

{{- if ne .Values.release "train" }}

echo "Placeholder Status :"
barbican-status upgrade check

echo "Proceeding with upgrade if required:"
barbican-manage db upgrade

echo "DB Version if migrated:" barbican-manage db current 
{{- end }}

exit 0
