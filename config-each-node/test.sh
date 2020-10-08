#!/bin/bash
line=`docker swarm init`

var="${line:142}"
var2="${var%T*}"
echo $var2


# while read -r line
# do
#     echo "$line"
# done < <(find . -type f)

docker swarm leave --force