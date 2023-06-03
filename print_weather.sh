#!/bin/bash 

if [[ $1 == "-h" ]] || [[ $1 == "--help" ]] 
then 
	echo "\
print_weather.sh - prints current weather forecast to the default printer using lpr. 
Usage: ./print_weather.sh [-t] [<location>]

if <location> is omitted, it is determined from the IP address. 
<location> can be any description of the desired location: City name, coordinates, place name. 

-t, --terminal		does not send the document to the printer - outputs the forecast directly to stdout"
	exit 0
fi 

if [[ $1 == "-t" ]] || [[ $1 == "--terminal" ]] 
then 
	only_terminal="1"
	shift 
fi 

location=`jq -R -r @uri <<< "$@"` # urlencode the passed in location (or leave it empty)

weather=`curl -s "ru.wttr.in/$location?FnT"`
if [[ $only_terminal ]] 
then
	echo "$weather"
else 
	echo "$weather" | lpr 
fi
