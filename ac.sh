#!/bin/bash

echo $(ac -p | grep -v '\<root\>' | head -n -1 | LC_ALL=C sort -k2 -n -r | head -n 1)

