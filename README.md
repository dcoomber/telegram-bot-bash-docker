# telegram-bot-bash-docker
Dockerfile for https://github.com/topkecleon/telegram-bot-bash

## Setup

1. Create a Bot using the [Botfather](https://t.me/Botfather)
1. Copy [botconfig.jssh.sample](config/botconfig.jssh.sample) to `botconfig.jssh`
   1. Update this file with the `bottoken` and `botid` provided by Botfather
   1. For good measure, add your Telegram ID as the `botadmin`
1. Create a `botacl` (access control) file to give your Telegram user permissions to interact with the bot.  Take a look at [botacl.sample](config/botacl.sample) to get an understaning of the format of this file.

## Customising your bot

All the information that you need regarding customising your bot is available in the README files of the [telegram-bot-bash repository](https://github.com/topkecleon/telegram-bot-bash).

## Build the image

```bash
docker build --tag telegram-bot-bash:latest .
```

## Run the container

```bash
docker-compose up -d
```

## ... and the fun begins!

Visit your bot in Telegram and start a chat with the `/start` command.

ENJOY!