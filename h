#!/bin/sh

clear &&
vim "$(fd --type f \
    --exclude '*.{png,jpg,jpeg,gif,webp,avif,mp4,mkv,avi,mov,flv,wmv,webm,pdf,swp,swo}' \
    . /var/www/cork | fzf --info=inline --preview 'cat {}')"
