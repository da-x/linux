#!/bin/bash

test_clang=$($1 -E -x c - -o /dev/null -randstruct-seed-filename=${BASH_SOURCE} <<EOF
EOF
)

if [[ $? == "0"  ]] ; then
    echo supported
fi
