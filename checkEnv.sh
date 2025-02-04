#!/bin/bash

# 变量名称
VAR_NAME="name1"

# 检查环境变量是否存在
if [ -z "${!VAR_NAME}" ]; then
    echo "$VAR_NAME 环境变量不存在，请输入值: "
    read user_input
    export $VAR_NAME="$user_input"
    echo "$VAR_NAME 环境变量已设置为: ${!VAR_NAME}"
else
    echo "$VAR_NAME 环境变量已存在，值为: ${!VAR_NAME}"
fi
