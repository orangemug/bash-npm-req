#!/usr/bin/env bash
__npm_bash_init() {
  req() {
    local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    local caller_path="$(caller | sed 's/^[0-9]*[\ ]*//')"
    local caller_dir="$(dirname $caller_path)"

    filepath=$(node $dir/resolve.js $1 $caller_dir)
    if [ -n "$filepath" ]; then
      source $filepath
    else
      echo "Error!"
      exit 125
    fi
  }
}

__npm_bash_init "$@"
unset __npm_bash_init
