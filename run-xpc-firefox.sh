#!/bin/bash
# usage : run-xpc-firefox.sh /path/to/testcase

MOZCONFIG=.mozconfig-firefox ./mach xpcshell-test $1
