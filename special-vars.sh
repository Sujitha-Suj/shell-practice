#!/bin/bash
echo "All variables passed to script: $@"
echo "Number of variables: $#"
echo "First Variable: $1"
echo "Script name: $0"
echo "who is running this script: $USER"
echo "which directory: $PWD"
echo "Home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running just: $!"
wait $!
echo "Line number: $LINENO"
echo "script excuted in $SECONDS seconds"
echo "exit code of privious command: $?"