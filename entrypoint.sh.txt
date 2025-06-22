#!/bin/sh

./telegram-bot-api \
  --api-id=$API_ID \
  --api-hash=$API_HASH \
  --dir=/data \
  --http-port=8081 \
  --log=log.txt
