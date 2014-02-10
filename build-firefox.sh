#!/bin/bash

COMMAND=${1:-build}
CONFIG_FILE=$(pwd)/.mozconfig-firefox

shift 1
PARAMS=$@

MOZCONFIG=$CONFIG_FILE ./mach $COMMAND $PARAMS
