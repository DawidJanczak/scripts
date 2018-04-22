#!/usr/bin/env bash

old=/etc/pacman.d/mirrorlist
new=$old.pacnew

if [[ -f /etc/pacman.d/mirrorlist.pacnew ]]; then
  mv $new $old
  sed -i '/Taiwan/,/^$/{s/^#S/S/}' $old
  sed -i '/Poland/,/^$/{s/^#S/S/}' $old
fi
