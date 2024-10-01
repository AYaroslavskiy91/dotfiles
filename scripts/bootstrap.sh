#!/bin/bash

set -u


sourcepath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

safelink() {
    local SRC="$1"
    local DEST="$HOME/`basename $SRC`"
    if [ -e $DEST ]
    then
        echo "File $DEST exists, making backup"
        cp "$DEST" "$DEST".backup
    else
        echo "No file found, making symlink"
    fi
    ln -sf "$SRC" "$DEST"
}

SCRIPT_PATH=`sourcepath $0`
DOTFILES=`dirname $SCRIPT_PATH`/../homedotfiles

for DOTFILE in `ls -A $DOTFILES`; do
    safelink "$DOTFILES/$DOTFILE"
    echo $DOTFILE
done

