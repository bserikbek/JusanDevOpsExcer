# !bin/bash


wc -w "$1" | awk '{print $1}'
