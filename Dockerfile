FROM  bitnami/phpmyadmin

# Declare Build Time variables
ARG user-docker-run=1000990000
ARG root-docker-build=0
ARG wk-docker-build='/home'
ARG pkg-docker-install='wget vim htop'

WORKDIR $wk-docker-build


USER $root-docker-build
COPY files/ /home

# Install packages 
RUN apt-get update && apt-get upgrade &&  apt-get install -y --no-install-recommends  $pkg-docker-install


USER $user-docker-run



