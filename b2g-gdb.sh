#!/bin/bash

RUN_GDB=./run-gdb.sh
NAME=^$1
PID=$(adb shell b2g-ps | grep -i $NAME | awk '{print $3}')

echo attached pid = $PID
$RUN_GDB attach $PID
