#!/usr/bin/env bash
source "$(dirname "$BASH_SOURCE")/../req.sh"

req bash-assert

# Basically just tests if assert module exists...
assert "a" == "a"

req ./lib/foo

# Test if can require relative
assert $(foo) == "hello"
