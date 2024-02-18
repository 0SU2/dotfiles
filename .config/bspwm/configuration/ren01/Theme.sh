#!/usr/bin/env bash
## This file will configure the options
## and launch the bars corresponding to each theme.


launch_bars() {

	for mon in $(polybar --list-monitors | cut -d":" -f1); do
		MONITOR=$mon polybar -q ren01 -c ~/.config/bspwm/configuration/ren01/config.ini &
	done

}

launch_bars

bspc config border_width 0
bspc config top_padding 5
bspc config bottom_padding 5
bspc config normal_border_color "#3d414f"
bspc config active_border_color "#3d414f"
bspc config focused_border_color "#3d414f"
bspc config presel_feedback_color "#90ceaa"
bspc config left_padding 5
bspc config right_padding 5
bspc config window_gap 10

if pidof -q bspc; then
	pkill -9 bspc > /dev/null
fi
