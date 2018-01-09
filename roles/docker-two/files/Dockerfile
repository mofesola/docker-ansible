FROM ubuntu:14.04
LABEL Maintainer Mofesola BABALOLA <me@mofesola.com>

ENV docker_user=docker_root

RUN apt update && apt install -y openssh-server
RUN adduser --disabled-password --gecos "" $docker_user

RUN mkdir -p /var/run/sshd
WORKDIR /home/$docker_user
USER $docker_user

RUN ssh-keygen -f /home/$docker_user/.ssh/id_rsa -t rsa -N ''

USER root
COPY entrypoint.sh /home/$docker_user
RUN chmod +x /home/$docker_user/entrypoint.sh

EXPOSE 22

ENTRYPOINT /home/$docker_user/entrypoint.sh
