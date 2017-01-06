#!/bin/bash

# Open iTerm2 split & vim file in
function vimtab() {
  echo "Open $1 if vim!"
  file=$1
  line=$2

  osascript 2>/dev/null <<EOF
    tell application "iTerm"
      tell current session of current window
        local vimSession
        set vimSession to split vertically with same profile command "vim $1 +$2"

        tell vimSession
          select
        end tell
      end tell
   end tell
EOF
}

# Finds files and executes a command on them.
function find-exec() {
  name=${1:-}
  command=${2:-file}

  find . -type f -iname "*$name*" -exec "$command" '{}' \;
}
