Docker image for this project https://github.com/tkuester/taky

Example run command:

```
docker run -u 1000:1000 -e bind_ip=0.0.0.0 -e public_ip=123.123.123.123 -v /root/takydata:/data -p 8087:8087 -p 8089:8089 -d --name Taky skadakar/taky:latest
```

Use -u 1000:1000 to to run as root, make sure 1000:1000 has read/write to whatever you've mapped /data to.

Supported env variables:

| TAKY|||
|-----|----|----|
||hostname||
||node_id||
||bind_ip|
||public_ip|
||public_ip|true/false|
| COT SERVER||
||port
||cot_log
|| DATAPACKAGE SERVER||
||upload_path
| SSL||
||ssl_enabled|true/false|
||client_cert_required|true/false|
||cert|
||key|
||key_pw|
||ca|
||ca_key|
||server_p12|
||server_p12_key|

If not specified it will use the content of taky.conf
This will default to use /data/ for saving data.
