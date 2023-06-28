#!/bin/bash

killall conky
conky -c $HOME/.config/i3/conky/date_time.conf
conky -c $HOME/.config/i3/conky/cpu.conf
conky -c $HOME/.config/i3/conky/ram.conf
