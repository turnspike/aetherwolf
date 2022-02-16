#!/bin/zsh

ZSTART=`date +%s`
source $ZCONF/colors.zsh # load color definitions for pretty output

aw_title "ʕっ•ᴥ•ʔっ.... starting zsh "$ZSH_VERSION
aw_msg ""
aw_msg "loading config from "$ZCONF

source $ZCONF/plugins.zsh # load plugins
source $ZCONF/environment.zsh # load environment settings
source $ZCONF/keybinds.zsh # load keybindings
source $ZCONF/aliases.zsh # load aliases
source $ZCONF/functions.zsh # load shell helper functions

## reload completions
#compinit -D

#-- show zsh load duration
function { # localise vars
  local ZSTOP=`date +%s`
  local ZDIFF=$(($ZSTOP-$ZSTART))
  unset ZSTART # remove startup timer
  aw_title "☯ zsh ready in ${ZDIFF}s."
}

