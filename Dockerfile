FROM debian:stable-slim

RUN apt update && apt upgrade -y && apt install procps curl jq -y

RUN useradd -ms /bin/bash bashbot

WORKDIR /

RUN curl -L https://github.com/topkecleon/telegram-bot-bash/releases/download/v1.52/telegram-bot-bash-1.52.tar.gz -o telegram-bot-bash.tar.gz && \
  tar -xzf telegram-bot-bash.tar.gz && \
  rm telegram-bot-bash.tar.gz && \
  mv telegram-bot-bash app && \
  chown -R bashbot:bashbot app

WORKDIR /app

RUN cp mycommands.conf.dist mycommands.conf && \
  cp mycommands.sh.dist mycommands.sh

USER bashbot
