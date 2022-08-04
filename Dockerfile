FROM debian:stable-slim

WORKDIR /app

RUN apt update && apt upgrade -y && apt install procps curl -y
RUN useradd -ms /bin/bash botbash
RUN curl -L https://github.com/topkecleon/telegram-bot-bash/releases/download/v1.52/telegram-bot-bash-1.52.tar.gz -o telegram-bot-bash.tar.gz && \
  tar -xzf telegram-bot-bash.tar.gz && \
  mv telegram-bot-bash/* . && \
  rm -R telegram-bot-bash && \
  rm telegram-bot-bash.tar.gz && \
  chown -R botbash:botbash .
