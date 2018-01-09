FROM ubuntu:14.04
LABEL Maintainer Mofesola BABALOLA <me@mofesola.com>

RUN apt update && apt install -y openssh-server
RUN ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
