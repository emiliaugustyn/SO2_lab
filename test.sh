#!/bin/bash

awk -F':' '$6~/(\/|\/dev\/null)/ { print $1" "$6 }' /etc/passwd