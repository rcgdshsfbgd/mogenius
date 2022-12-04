#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a7bd90fb-536c-4b32-b97a-01a8ad809799"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

