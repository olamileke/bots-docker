#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose"
DOCKER="/usr/bin/docker"

cd /home/Olamileke/bots-docker/  

$COMPOSE run certbot renew 

$DOCKER system prune -af