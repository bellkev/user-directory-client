#!/bin/bash

set -exu

curl --retry 10 --retry-delay 5 "http://$DOCKER_IP:8001"

for i in {1..5}; do
    psql -h $DOCKER_IP -U postgres -p 15432 <<<"\l" && break;
    sleep 5;
done
