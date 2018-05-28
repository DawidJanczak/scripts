#!/bin/bash
USER_NAME=gat
USER_ID=$(id -u "$USER_NAME")
HDMI_STATUS=$(</sys/class/drm/card*-HDMI-A-1/status)
echo $HDMI_STATUS

sleep 1
if [[ $HDMI_STATUS == connected ]]
then
  DISPLAY=:0 xrandr --output HDMI1 --auto --right-of eDP1
else
  DISPLAY=:0 xrandr --output HDMI1 --off
fi
