#!/bin/bash

TMUX_CONF=".tmux.conf"
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

SOURCE_FILE="$SCRIPT_DIR/$TMUX_CONF"
SYM_LINK_FILE="$HOME/$TMUX_CONF"

if [[ -f $SYM_LINK_FILE ]]; then
  echo "Error: $SYM_LINK_FILE already exists"
  exit 1
fi

echo "Making symbolic link $SYM_LINK_FILE -> $SOURCE_FILE"

ln -s $SOURCE_FILE $SYM_LINK_FILE
