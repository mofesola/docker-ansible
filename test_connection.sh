#!/usr/bin/env bash
docker exec container_one /bin/sh -c 'ssh -o BatchMode=yes -o ConnectTimeout=5 -o StrictHostKeyChecking=no docker_root@container_two echo SSH Connection Successful 2>&1'
