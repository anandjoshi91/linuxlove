#! /bin/bash

# These are set of common functions and command line utilities for me

## Color Constansts
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'


##########################  Logging Functions

INFO()
{
	echo -e  "${BLUE}(INFO): ${1}"

}

ERROR()
{
	echo -e "${RED}(ERROR): ${1}"
}

WARN()
{
	echo -e "${YELLOW}(WARN): ${1}"
}

############################ Google

google()
{
	QUERY=`echo "$@" | tr " " "%20"`
	URL="https://www.google.com/search?q=${QUERY}"
	/usr/bin/xdg-open $URL &	
}

