#!/bin/bash

killall conky
conky -c $HOME/.config/conky/date_time.conf
conky -c $HOME/.config/conky/cpu.conf
conky -c $HOME/.config/conky/ram.conf
