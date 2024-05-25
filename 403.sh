#!/bin/bash

while IFS= read -r line
do
    url=$(echo $line | awk '{print $1}')
    header=$(echo $line | awk '{print $2}')

    403 --url "$url" --header
done < 403.txt
