#! /bin/bash

yum update -y

yum install -y yum-utils

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum-config-manager --enable docker-ce-edge

yum makecache fast -y

yum install docker-ce -y 

systemctl start docker

docker pull centos:latest

docker build -t centos .

