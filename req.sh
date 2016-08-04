#!/usr/bin/env bash
__npm_bash_init() {
  req() {
    local dir="$(dirname "$BASH_SOURCE")"
    local caller_path="$(caller | sed 's/^[0-9]*[\ ]*//')"
    local caller_dir="$(dirname $caller_path)"

    filepath=$(node $dir/lib/resolve.js $1 $caller_dir)
    if [ -n "$filepath" ]; then
      source $filepath
    else
      echo "Failed to source '$1' from '$caller_dir'"
      exit 1
    fi
  }
}

__npm_bash_init "$@"
unset __npm_bash_init
