#!/usr/bin/env bash

NVIMCFG=~/.config/nvim/init.vim
if [ -f $NVIMCFG ]; then
    cat $NVIMCFG
else
    echo "File init.vin not found"
fi