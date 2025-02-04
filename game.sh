#!/bin/bash

echo "请输入名字:"
#read name
#name=$1 # 这样能获得第一个参数
#channel=$2
echo "您好, $name,欢迎来到$channel"

# 我们可以将一些信息保存到环境变量中 shell脚本可以读取到

# 生成随机数
#number=`shuf -i 1-10 -n 1` #只有用了这个反引号才能将命令看作是一个整体
number=$(shuf -i 1-10 -n 1) # 这样也可以 比较现代化
echo "请输入一个1-10之间的数字"


#while [[ $guess -ne $number ]]
while true
do
    read guess

    if [[ $guess -eq $number ]]; then
        echo "恭喜你猜对了!请选择是否继续(y/n):"
        read choice
        if [[ $choice == "y" ]] || [[ $choice == "Y" ]]; then
            number=$((RANDOM%10+1))
            echo $number
            continue
        else
            break
        fi
    elif [[ $guess -gt $number ]]; then
        echo "很遗憾,你猜大了"
    else
        echo "很遗憾,你猜小了"
    fi
    #else
    #   echo "很遗憾,正确答案是$number"
    #fi

done

echo "正确答案是$number"

