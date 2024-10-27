#!/bin/bash

set -u


sourcepath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

safelink() {
    local SRC="$1"

    if [ $# -ge 2 ] && [ "$2"="vimfiles" ]
    then
        local DEST="$HOME/.config/nvim"
    else
        local DEST="$HOME/`basename $SRC`"
    fi
    if [ -e $DEST ]
    then
        echo "File $DEST exists, making backup"
        cp -r "$DEST" "$DEST".backup
    else
        echo "No file found, making symlink"
    fi
    ln -sf "$SRC" "$DEST"
}

SCRIPT_PATH=`sourcepath $0`
DOTFILES=`dirname $SCRIPT_PATH`/../homedotfiles
NVIMFILES=`dirname $SCRIPT_PATH`/../nvim/

for DOTFILE in `ls -A $DOTFILES`; do
    safelink "$DOTFILES/$DOTFILE"
    echo $DOTFILE
done

for NVIMFILE in `ls -A $NVIMFILES`; do
    safelink "$NVIMFILES/$NVIMFILE" "vimfiles"
    echo $NVIMFILE
done

