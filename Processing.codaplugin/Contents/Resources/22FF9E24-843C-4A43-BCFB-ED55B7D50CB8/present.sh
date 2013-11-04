#!/bin/bash

folder_path=$(dirname "$CODA_FILEPATH")

osascript <<EOF
tell application "Terminal" to activate
tell application "Terminal" to do script "export PS1=''"
tell application "Terminal" to do script "stty -echo" in selected tab of the front window
EOF

osascript -e 'tell application "Terminal" to do script "printf \"\\033c\"" in selected tab of the front window'

osascript <<EOF
tell application "Terminal" to do script "processing-java --sketch=\"$folder_path\" --output=\"$folder_path/build-tmp\" --present --force" in selected tab of the front window
tell application "Terminal" to do script "exit" in selected tab of the front window
EOF