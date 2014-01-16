#!/bin/bash
folder_path=$(dirname "$CODA_FILEPATH")

osascript <<EOF
tell application "Terminal" to activate
try
tell application "Terminal" to do script "export PS1=''" in selected tab of the front window
on error
tell application "Terminal" to do script "export PS1=''"
end try
tell application "Terminal" to do script "stty -echo" in selected tab of the front window
EOF

osascript -e 'tell application "Terminal" to do script "printf \"\\033c\"" in selected tab of the front window'

osascript <<EOF
tell application "Terminal" to do script "processing-java --sketch=\"$folder_path\" --output=\"$folder_path/build-tmp\" --build --force" in selected tab of the front window
EOF