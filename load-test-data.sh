#!/usr/bin/env bash

set -exu

createdb -h $DOCKER_IP -U postgres -p 15432 directory
psql -h $DOCKER_IP -U postgres -p 15432 -d directory -f schema.sql
psql -h $DOCKER_IP -U postgres -p 15432 -d directory -f data.sql
