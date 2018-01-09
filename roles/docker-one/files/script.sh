#!/usr/bin/env bash
docker exec container_one /bin/sh -c 'cat ~/.ssh/id_rsa.pub' > roles/docker-two/files/authorized_keys \
                && export AUTHORIZED_SSH_KEY="$(cat roles/docker-two/files/authorized_keys)" \
                && sed -i '' -e "s|.*authorized_ssh_key.*|authorized_ssh_key: ${AUTHORIZED_SSH_KEY}|g" roles/docker-two/vars/main.yml \
                && rm roles/docker-two/files/authorized_keys
