#!/bin/bash
U=$(whoami)
D=$(echo "/home/$U/yourcat")
cd /home/$U/catgame

if [ -d /home/$U/yourcat ]; then ./catgame.sh; else ./setupcat.sh; fi
