#!/bin/bash
########################################################################
#
# File: interactive.sh
#
# Description: template for an interactive chat
#
# Usgage: start_proc "${CHAT[ID]}" ./scripts/interactive.sh.clean
#
# Test in CLI: ./scripts/interactive.sh.clean
#
# This file is public domain in the USA and all free countries.
# Elsewhere, consider it to be WTFPLv2. (wtfpl.net/txt/copying)
#
#### $$VERSION$$ v1.52-1-g0dae2db
########################################################################

######
# parameters
# $1 $2 args as given to start_proc chat script arg1 arg2
# $3 path to named pipe

# adjust your language setting here
# https://github.com/topkecleon/telegram-bot-bash#setting-up-your-environment
export 'LC_ALL=C.UTF-8'
export 'LANG=C.UTF-8'
export 'LANGUAGE=C.UTF-8'

unset IFS
# set -f # if you are paranoid use set -f to disable globbing

#######################
# place your commands here
#
# IMPORTTANT: to read user input from $INPUT
INPUT="${3:-/dev/stdin}"
#
# read -r variable <"${INPUT}"

# example wait form user input and echo it
printf "Enter a message:\n"

read -r test <"${INPUT}"
printf "%s\n" "Your Message: ${test}\nbye!"


# your commands ends here
######################

