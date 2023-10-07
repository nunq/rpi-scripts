#!/bin/bash
set -eu -o pipefail

until sudo /usr/local/bin/set_green_led; sshpass -p PASS ssh -o ServerAliveInterval=4 -o TCPKeepAlive=yes -o PubkeyAuthentication=no USER@HOST; do
  sudo /usr/local/bin/set_red_led
  echo -e "crashed $? at $(date)\n"
  sleep 5
done

