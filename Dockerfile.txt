FROM alpine:latest

RUN apk add --no-cache wget unzip ffmpeg && \
    wget https://github.com/tdlib/telegram-bot-api/releases/latest/download/telegram-bot-api-linux-x86_64.zip && \
    unzip telegram-bot-api-linux-x86_64.zip && \
    chmod +x telegram-bot-api && \
    mkdir -p /data

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8081
ENTRYPOINT ["/entrypoint.sh"]
