#!/bin/sh

mkdir -p /data

telegram-bot-api \
  --api-id=$API_ID \
  --api-hash=$API_HASH \
  --dir=/data \
  --http-port=8081 \
  --local
