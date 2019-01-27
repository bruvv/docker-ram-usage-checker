#!/usr/bin/env bash

# Monitor memory usage of Docker containers
# Execute at 21h49.
# Log every 10 minutes

LOG_FILE="docker-logs.txt"

while true;
do
    sleep 10m
    docker stats --format "{{.Name}}, {{.MemUsage}}" --no-stream >> $LOG_FILE
    echo "-" >> $LOG_FILE
done
