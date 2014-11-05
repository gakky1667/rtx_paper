#!/usr/bin/sh

awk '{sum += $1}END{ sum/NR ; print sum/NR}' 
