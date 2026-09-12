#!/bin/sh

# stop if compilation fails, so a stale binary is never run
set -e

# compile
gcc projectTemplate.c -o projectTemplate.exe

# run
./projectTemplate.exe