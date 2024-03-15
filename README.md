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

### Testing your customisations

The easiest approach to testing your customisations is to copy the following files into files into your customised _Telegram Bot Bash_ directory:

1. `botacl`
1. `botconfig.jssh`
1. `Dockerfile`
1. `docker-compose.yml` 

You'll need to update `docker-compose.yml` to mount your directories.  For example, if you have customisations in `./scripts`:

1. Add the following bindings (consider creating a `docker-compose.override.yml` for these settings)

   ```yaml
      - type: bind
        source: ./mycommands.sh
        target: /app/mycommands.sh
      - type: bind
        source: ./scripts
        target: /app/scripts
   ```

### Run the container

```bash
docker-compose up -d
```

### ... and the fun begins!

Visit your bot in Telegram and start a chat with the `/start` command.

ENJOY!

## Building the image

You could always build your own Docker image for use in your projects.

You'll need to substitute your own username in place of my username (`dcoomber`).

```bash
docker build --tag dcoomber/telegram-bot-bash:1.52 --tag dcoomber/telegram-bot-bash:latest .
```

### [OPTIONAL] Push the image

```bash
docker push dcoomber/telegram-bot-bash --all-tags
```
