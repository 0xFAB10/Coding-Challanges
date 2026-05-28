#!/usr/bin/env bash

numbers=$1
len=${#numbers}
result=0
for (( i=0; i<len; i++ )); do
    num="${numbers:$i:1}"
    ((result += num ** len))
done

[[ $result -eq $numbers ]] && echo true || echo false

