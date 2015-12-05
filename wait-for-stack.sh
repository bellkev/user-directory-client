#!/bin/bash

set -exu

for i in {1..5}; do
    psql -h $DOCKER_IP -U postgres -p 15432 <<< "\l" && curl "http://$DOCKER_IP:8001" && break; sleep 5
done
