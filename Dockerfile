FROM ubuntu:18.04

# 기본 Depedency 준비
RUN apt update && apt upgrade -y && apt install -y zip unzip sudo wget curl nano

# 기본 사용자 등록
RUN useradd --uid 1001 --create-home --shell /bin/bash -G sudo,root unchaptered
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Ansible 설치
RUN sudo apt update
RUN sudo apt install software-properties-common -y
RUN sudo add-apt-repository --yes --update ppa:ansible/ansible
RUN sudo apt install ansible -y
RUN sudo ansible-galaxy install nginxinc.nginx

WORKDIR /project

COPY . .

RUN cd /project
RUN chmod 400 /project/keys/ansible-sample.pem