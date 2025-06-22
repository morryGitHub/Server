FROM alpine:latest

# Установка нужных пакетов
RUN apk add --no-cache wget unzip ffmpeg

# Скачиваем бинарник Telegram Bot API
RUN wget https://github.com/tdlib/telegram-bot-api/releases/latest/download/telegram-bot-api-linux-x86_64.zip \
    && unzip telegram-bot-api-linux-x86_64.zip \
    && chmod +x telegram-bot-api \
    && mkdir -p /data

# Копируем скрипт запуска (если используешь)
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Указываем порт (если надо)
EXPOSE 8081

# Точка входа
ENTRYPOINT ["/entrypoint.sh"]
