#!/bin/bash

set -u


sourcepath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

safelink() {
    local SRC="$1"
    local DEST="$home/`basename $SRC`"
    ln -sf "$SRC" "$DEST"
}

SCRIPT_PATH=`sourcepath $0`
DOTFILES=`dirname $SCRIPT_PATH`

for DOTFILE in `ls -A $DOTFILES`; do
    safelink "$DOTFILES/$DOTFILE"
done

