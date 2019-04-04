#!/bin/bash
SESSION=$USER

tmux -2 new-session -d -s $SESSION

# Setup a window for watching session
#tmux new-window -t $SESSION:1 -n 'System Monitor'
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "glances" C-m
tmux select-pane -t 1
tmux send-keys "nvtop" C-m

# attach
tmux -2 attach-session -t $SESSION
