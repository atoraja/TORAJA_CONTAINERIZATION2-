#Pulling ubuntu docker image
FROM ubuntu

MAINTAINER alvent

ARG DEBIAN_FRONTEND=noninteractive

#Update and Upgrade the ubuntu system
RUN apt update; apt dist-upgrade -y

#LAMP stack Installation
RUN apt install -y apache2 mysql-server php

#Runnning entrypoint for apache
ENTRYPOINT apachectl -D FOREGROUND
ENTRYPOINT phpctl -D FOREGROUND
