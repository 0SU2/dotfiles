# Current Theme
dir="$HOME/.config/rofi"
theme='power-menu'

uptime="`uptime -p | sed -e 's/up //g'`"

# Options
shutdown='󰐥'
reboot='󰑙'
logout='󰍃'
lock=''
sleep='󰤄'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "$host" \
		-mesg "Uptime: $uptime" \
		-theme ${dir}/${theme}.rasi
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$shutdown\n$reboot\n$sleep\n$logout\n$lock" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ $1 == '--shutdown' ]]; then
		systemctl poweroff
	elif [[ $1 == '--reboot' ]]; then
		systemctl reboot
	elif [[ $1 == '--logout' ]]; then
		hyprctl dispatch exit
    elif [[ $1 == '--lock' ]]; then
        hyprlock
    elif [[ $1 == '--sleep' ]]; then
        systemctl sleep
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $logout)
		run_cmd --logout
        ;;
    $lock)
        run_cmd --lock
        ;;
    $sleep)
        run_cmd --sleep
        ;;
esac
