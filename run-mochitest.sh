#!/bin/bash
# usage : [DEBUG=1] run-mochitest /path/to/testcase [plain|chrome]

MODE=${2:-plain}

# run mochitest with GDB
if [ ! -z $DEBUG ]
then
FLAGS="$FLAGS -d=gdb"
fi

#TEST_PATH=$1 EXTRA_TEST_ARGS='--debugger=gdb' make -C obj-firefox mochitest-$2
#TEST_PATH=$1 make -C obj-firefox.noindex mochitest-$2
MOZCONFIG=.mozconfig-firefox ./mach mochitest-$MODE $1 $FLAGS
