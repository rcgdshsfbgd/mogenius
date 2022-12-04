#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f0a3a23a-2ca9-423e-856a-994e056c7589"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

