#!/bin/sh

tmux new-session -s erikweb -n html_dev -d


tmux send-keys -t erikweb:html_dev "nvim ~/git/erikweb/berlijn.html" Enter

tmux select-window -t erikweb:html_dev
tmux split-window -h
tmux split-window -v
tmux select-window -t erikweb:html_dev
tmux -u attach -t erikweb

