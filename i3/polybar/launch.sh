#!/bin/bash

killall -q polybar
polybar -c $HOME/.config/i3/polybar/config.ini bar &
