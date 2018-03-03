#!/bin/sh

# George Hawk
# February 28, 2018
# A shell script to find the five largest items in a directory

du -ah | sort -hr | head -5
