# auto starts a tmux session running wifi.sh
/usr/bin/tmux new-session -d -s ENTER
/usr/bin/tmux detach -s ENTER
sleep 3
/usr/bin/tmux send-keys -t 0 "cd /home/alarm;./wifi.sh" ENTER
