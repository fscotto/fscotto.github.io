#!/usr/bin/env bash
#
# SCRIPT: prepare-deploy.sh
# AUTHOR: Fabio Scotto di Santolo <fabio.scottodisantolo@gmail.com>
# DATE:   13/09/2020
# REV:    1.0
#
# PLATFORM: Travis CI with Ubuntu 18.04
#
# PURPOSE: This script copy generated static files in public folder to root project folder.
#
# set -n   # Uncomment to check script syntax, without execution.
#          # NOTE: Do not forget to put the # comment back in or
#          #       the shell script will never execute!
# set -x   # Uncomment to debug this shell script
#
##########################################################
#         DEFINE FILES AND VARIABLES HERE
##########################################################

##########################################################
#              DEFINE FUNCTIONS HERE
##########################################################
 

##########################################################
#               BEGINNING OF MAIN
##########################################################

printf "Initialize prepare deploy script\n"
lein run
cp -v CNAME public/

# End of script