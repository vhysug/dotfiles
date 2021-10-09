#!/bin/bash

function run_mysql(){
    docker run --name mysql -p3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:8.0
    echo "run mysql container done"
}
function run_redis(){
    docker run --name redis -p6379:6379 -d redis:6.0
    echo "run redis container done"
}


cat << EOF
select a function code:
===============================
【 1 】 Mysql
【 2 】 Redis
【 * 】 Exit
===============================
EOF


if [[ -n $1 ]]; then
    choice=$1
    echo "exec: $1"
else
    read -p "select: " choice
fi

case $choice in
    1) run_mysql;;
    2) run_redis;;
    *) echo 'Bye' && exit;;
esac
