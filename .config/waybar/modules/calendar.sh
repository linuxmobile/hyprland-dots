#! /bin/bash

send_notification() {
	TODAY=$(date '+%-d')
	HEAD=$(cal "$1" | head -n1)
	BODY=$(cal "$1" | tail -n7 | sed -z "s|$TODAY|<u><b>$TODAY</b></u>|1")
	notify-send -h string:x-canonical-private-synchronous:calendar \
		"$HEAD" "$BODY$FOOT" -u NORMAL
}

handle_action() {
	echo "$DIFF" > "$TMP"
	if [ "$DIFF" -ge 0 ]; then
		send_notification "+$DIFF months"
	else
		send_notification "$((-DIFF)) months ago"
	fi
}

TMP=${XDG_RUNTIME_DIR:-/tmp}/"$UID"_calendar_notification_month
touch "$TMP"

DIFF=$(<"$TMP")

case $1 in
	"curr") DIFF=0;;
	"next") DIFF=$((DIFF+1));;
	"prev") DIFF=$((DIFF-1));;
esac

handle_action
