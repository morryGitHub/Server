FROM alpine:latest

# Устанавливаем зависимости
RUN apk add --no-cache wget unzip ffmpeg ca-certificates

# Скачиваем Telegram Bot API бинарник с указанием конкретной версии
ENV BOT_API_VERSION=6.9.1

RUN wget https://github.com/tdlib/telegram-bot-api/releases/download/v${BOT_API_VERSION}/telegram-bot-api-linux-x86_64.zip && \
    unzip telegram-bot-api-linux-x86_64.zip && \
    chmod +x telegram-bot-api && \
    mkdir -p /data

# Копируем стартовый скрипт
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8081

CMD ["/entrypoint.sh"]
