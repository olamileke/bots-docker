#!/bin/bash

for image in $*; do    
    docker pull $image
done

docker compose up -d