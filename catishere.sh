#!/bin/bash
U=$(whoami)
cd /home/$U/catgame
if [ -d /home/$U/yourcat ]; then ./catwanteat.sh; else ./setupcat.sh; fi