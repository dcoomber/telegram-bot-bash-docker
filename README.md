# telegram-bot-bash-docker
Dockerfile for https://github.com/topkecleon/telegram-bot-bash

## Running `telegram-bot-bash-docker` for the first time

1. Create a Bot using the [Botfather](https://t.me/Botfather)
1. Copy [botconfig.jssh.sample](botconfig.jssh.sample) to `botconfig.jssh`
   1. Update this file with the `bottoken` and `botid` provided by Botfather
   1. For good measure, add your Telegram ID as the `botadmin`
1. Create a `botacl` (access control) file to give your Telegram user permissions to interact with the bot.  Take a look at [botacl.sample](botacl.sample) to get an understanding of the format of this file.

## Creating your own `telegram-bot-bash-docker`

All the information that you need regarding customising your bot is available in the README files of the [telegram-bot-bash repository](https://github.com/topkecleon/telegram-bot-bash).

## Building the image

```bash
docker build --tag telegram-bot-bash:latest .
```

### Testing your customisations

The easiest approach to testing your customisations is to copy the following files into files into your customised _Telegram Bot Bash_ directory:

1. `botacl`
1. `botconfig.jssh`
1. `Dockerfile`
1. `docker-compose.yml` 

You'll need to update `docker-compose.yml` to mount your directories.  For example, if you have customisations in `./scripts`:

1. Add the following bindings

   ```yaml
      - type: bind
        source: ./mycommands.sh
        target: /app/mycommands.sh
      - type: bind
        source: ./scripts
        target: /app/scripts
   ```

## Run the container

```bash
docker-compose up -d
```

## ... and the fun begins!

Visit your bot in Telegram and start a chat with the `/start` command.

ENJOY!