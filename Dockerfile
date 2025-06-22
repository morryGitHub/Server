FROM alpine:latest

# Подключаем edge/testing и устанавливаем пакет
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
 && apk update \
 && apk add --no-cache telegram-bot-api ffmpeg ca-certificates

# Копируем и даём права на запуск
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8081
CMD ["/entrypoint.sh"]
