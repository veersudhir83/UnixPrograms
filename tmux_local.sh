#!/bin/bash
# Purpose: To split into panes using tmux.
# Execution: "./tmux_local.sh"

sessionname="local"

cd="cd ~/workbench"
watch="watch -d -n 0.5 "

pane1="ssh osboxes@devops-master"
pane2="$cd; ssh-add ~/.ssh/github_id_rsa; cd scripts; chmod +x custom_functions.sh && . custom_functions.sh; $cd; clear"
#pane3="ssh osboxes@centos-node"
pane4="ssh osboxes@ubuntu-node"

tmux kill-session -t $sessionname

tmux set-option remain-on-exit on

# Pane 1 settings
tmux new-session -d -s $sessionname 
tmux send-keys "$pane1" C-m

# Pane 2 settings
tmux split-window -p 15 -v
tmux send-keys "$pane2" C-m

# Pane 3 settings
#tmux split-window -p 20 -h
#tmux send-keys "$pane3" C-m

# Pane 4 settings
tmux split-window -p 30 -h
tmux send-keys "$pane4" C-m

tmux -2 attach-session -d -t $sessionname 
