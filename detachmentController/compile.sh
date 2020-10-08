#!/bin/zsh
mkdir -p compiled
mcrl22lps $1 compiled/$1.lps
lps2lts compiled/$1.lps compiled/$1.lts

if [ $# -ne 2 ]; then
   exit 0;
fi

if [ "$2" = "-g" ]; then
  ltsgraph compiled/$1.lts
fi