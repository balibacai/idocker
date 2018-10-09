#!/bin/bash

# pre build
docker build -t sshd_centos:v1.1 sshd_centos
docker build -t go_centos:v1.1 go_centos
docker build -t beego_centos:v1.1 beego_centos
docker build -t node_centos:v1.1 node_centos

# up services
docker-compose up -d