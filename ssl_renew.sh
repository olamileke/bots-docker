#!/bin/bash

cd /home/Olamileke/bots-docker/

docker-compose run certbot renew 

docker system prune -af