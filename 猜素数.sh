#!/bin/bash

# 函数：检查一个数是否为素数
is_prime() {
    local num=$1
    # 小于2的数不是素数
    if [ $num -lt 2 ]; then
        return 1 # 返回1，表示不是素数
    fi
    # 检查从2到sqrt(num)的数
    for ((i=2; i*i<=num; i++)); do
        if [ $(($num % i)) -eq 0 ]; then
            return 1 # 返回1，表示不是素数
        fi
    done
    return 0 # 返回0，表示是素数
}

# 主程序开始
read -p "请输入一个正整数: " number

if is_prime $number; then
    echo "$number 是素数。"
else
    echo "$number 不是素数。"
fi
