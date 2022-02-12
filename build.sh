#!/bin/bash

for app in $*; do
    if [ ! -d ./$app ]; then
        echo "$app directory does not exist"
        continue
    fi
    
    cd ./$app
    git checkout master
    git pull
    cd ../
    docker-compose build --no-cache $app
done

docker-compose build --no-cache webserver

docker-compose up -d