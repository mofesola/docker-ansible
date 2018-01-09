#!/usr/bin/env bash
echo ${AUTHORIZED_SSH_KEY} >> /home/docker_root/.ssh/authorized_keys
/usr/sbin/sshd -D
