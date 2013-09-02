#!/bin/zsh


#export WORKING_DIR=~/work/textaurant
#cd $WORKING_DIR; mvim; gitx
 
tmux start-server
tmux new-session -d -s rtdp -n zeus
 
tmux new-window -trtdp:0 -n zeus
tmux new-window -trtdp:1 -n server
tmux new-window -trtdp:2 -n console
tmux new-window -trtdp:3 -n w1
tmux new-window -trtdp:4 -n w2
tmux new-window -trtdp:5 -n w3
 
tmux send-keys -trtdp:0 'zeus start' C-m
tmux send-keys -trtdp:1 'sleep 10 && zs' C-m
tmux send-keys -trtdp:2 'sleep 10 && zc' C-m
 
tmux select-window -trtdp:3
tmux attach-session -d -trtdp
