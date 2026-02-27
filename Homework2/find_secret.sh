#!/bin/bash

if [ -f super_secret_key.txt ]; then
    echo "Found it!" > found.log
else
    find super_secret_key.txt 2>/dev/null
    echo "I did my best"
fi
