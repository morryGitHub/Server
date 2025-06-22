FROM alpine:edge

RUN apk add --no-cache telegram-bot-api ffmpeg ca-certificates

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8081

CMD ["/entrypoint.sh"]
