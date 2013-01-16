#
# ~/.bash_profile
#
# AUTHOR: Dean Harris
# DATE: 11/1/2013
# VERSION: 0.1
#
# DESCRIPTION:
# Not really a whole lot to it, just a standard .bash_profile
# file. Configures bash the way I want it, and is easy to 
# read and understand. Hopefully.
#
# TODO:
# 1. Set colours so that everything is coloured, not just prompt.
#

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/deanacus/Scripts:/Users/deanacus/Applications/Chocolat.app/Contents/MacOS

source ~/.bash_prompt
source ~/.bash_aliases
source ~/.bash_functions

# Should probably show MOTD, but I just really like a clean
# terminal to come home to.
clear
