#!/usr/bin/env sh

sessions=$(tmux list-sessions -F "#{session_name}")
choice=$(sort -rfu <<< "$sessions" \
    | fzf --reverse --margin=0,0 \
    | tr -d '\n')

choice="${choice}:"

tmux switch-client -t "$choice"
