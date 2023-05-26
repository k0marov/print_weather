#!/bin/bash 

location=`jq -R -r @uri <<< "$@"` # urlencode the passed in location (or leave it empty)

curl -s "ru.wttr.in/$location?Fn" | # request weather from wttr.in 
	lpr # send it to the default printer 
