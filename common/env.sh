#!/bin/sh
# This file will be read before Taky starts.
CONFY=/data/conf/taky.conf

ip4=$(curl ifconfig.io/ip)


# Variable default values for docker container
[  -z "$hostname" ] && hostname="TakyDocker"

[  -z "$node_id" ] && node_id="TAKY "

[  -z "$bind_ip" ] && bind_ip="0.0.0.0"

[  -z "$public_ip" ] && public_ip=$ip4

[  -z "$redis" ] && node_id=false 

[  -z "$port" ] && port=8089

[  -z "$cot_log" ] && cot_log="/data/logs"

[  -z "$upload_path" ] && upload_path="/data/upload"

[  -z "$ssl_enaabled" ] && ssl_enaabled=true

[  -z "$client_cert_required" ] && client_cert_required=true

[  -z "$cert" ] && cert="/data/ssl/server.crt"

[  -z "$key" ] && key="/data/ssl/server.key"

[  -z "$key_pw" ] && key_pw=""

[  -z "$ca" ] && ca="/data/ssl/ca.crt"

[  -z "$ca_key" ] && ca_key="/data/ssl/ca.key"

[  -z "$server_p12" ] && server_p12="/data/ssl/server.p12"

[  -z "$server_p12_key" ] && server_p12_key="PoopSecurity"


#hostname
echo ""
echo "Setting variables for config:"
echo ""

echo "Setting hostname to ${hostname}"
crudini --set $CONFY taky hostname ${hostname}

echo "Setting node_id to ${node_id}"
crudini --set $CONFY taky node_id ${node_id}

echo "Setting bind_ip to ${bind_ip}"
crudini --set $CONFY taky bind_ip ${bind_ip}

echo "Setting public_ip to ${public_ip}"
crudini --set $CONFY taky public_ip ${public_ip}

echo "Setting redis to ${redis}"
crudini --set $CONFY taky redis ${redis}

echo "Setting port to ${port}"
crudini --set $CONFY cot_server port ${port}

echo "Setting log_cot to ${cot_log}"
crudini --set $CONFY cot_server log_cot ${log_cot}

echo "Setting upload_path to ${upload_path}"
crudini --set $CONFY dp_server upload_path ${upload_path}

echo "Setting ssl_enabled to ${ssl_enabled}"
crudini --set $CONFY ssl enabled ${ssl_enabled}

echo "Setting client_cert_required to ${client_cert_required}"
crudini --set $CONFY ssl client_cert_required ${client_cert_required}

echo "Setting cert to ${cert}"
crudini --set $CONFY ssl cert ${cert}

echo "Setting key to ${key}"
crudini --set $CONFY ssl key ${key}

echo "Setting key_pw to ${key_pw}"
crudini --set $CONFY ssl key_pw ${key_pw}

echo "Setting ca to ${ca}"
crudini --set $CONFY ssl ca ${ca}

echo "Setting ca_key to ${ca_key}"
crudini --set $CONFY ssl ca_key ${ca_key}

echo "Setting server_p12 to ${server_p12}"
crudini --set $CONFY ssl server_p12 ${server_p12}

echo "Setting server_p12_key to ${server_p12_key}"
crudini --set $CONFY ssl server_p12_key ${server_p12_key}

echo ""
echo "Variables set"
echo ""
