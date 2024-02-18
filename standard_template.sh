#!/usr/bin/env bash 
set -eu # -e for exit on error, -u for error on unset variable 
set -o pipefail # exit on error in pipe 

#########################
##     Global params  ##
#########################

FORCE=false 

############################
##      Helper functions  ##
############################

function log() {
    echo -e "$(date +'%Y-%m-%d %H:%M:%S') $@"
}

############################
##   Alter runtime args   ##
############################

# Check if the DEBUG environment variable is set
if [[ -n "${DEBUG:-}" ]]; then
    log "DEBUG is set, setting -xv"
    set -xv # -x for print commands, -v for print shell input lines
fi

function install_prometheus() {
    log "Installing prometheus"
    # Install
}

function print_line(){
    echo ""
    printf "========================================================\n"
}

function install_prometheus_operator() {
    log "Installing prometheus operator
    # Install
}

function show_help() {
    echo "Usage: $0 [options]"
    echo "Options:"
    echo "  -h, --help        Show this help message and exit"
    echo "  -f, --force       Force the installation"
    echo "This script will install the following:"
    echo "  - Prometheus"
    exit 0
}

############################
## Helper functions      ## 
############################

function check_args(){
    # if -h or --help passed, show the help 
    if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        show_help
    fi
}

############################
##   Main                 ##
############################

# if the number of arguments is more than 1 
if [[ $# -gt 0 ]]; then
    check_args $@
fi
