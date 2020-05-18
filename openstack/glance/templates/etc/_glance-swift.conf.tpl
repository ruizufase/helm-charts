[swift-global]
user = service:{{ .Values.global.glance_service_user | default "glance" | replace "$" "$$"}}
key = {{ .Values.global.glance_service_password | default (tuple . .Values.global.glance_service_user | include "identity.password_for_user") | replace "$" "$$" }}
auth_version = 3
auth_address = {{.Values.global.keystone_api_endpoint_protocol_internal | default "http"}}://{{include "keystone_api_endpoint_host_internal" .}}:{{ .Values.global.keystone_api_port_internal | default 5000}}/v3
