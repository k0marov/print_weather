# print_weather.sh # 
 
## About ## 

print\_weather.sh - prints current weather forecast to the default printer using lpr. 

## Usage ## 

Usage: ./print\_weather.sh \[-h] \[-t] [\<location>]

### Arguments ### 

if \<location> is omitted, it is determined from the IP address. 

\<location> can be any description of the desired location: City name, coordinates, place name. 

-t, --terminal		does not send the document to the printer - outputs the forecast directly to stdout
-h, --help		shows this help page

## Example ## 
Example document: 
![Example document](./readme/images/example.jpg)
