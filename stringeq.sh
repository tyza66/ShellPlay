#!/bin/bash

str1="hello"
str2="hello1"

if [ "$str1" == "$str2" ]; then # 单等和双等都可以
    echo "字符串相等"
else
    echo "字符串不相等"
fi
