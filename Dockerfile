FROM  bitnami/phpmyadmin

# Declare Build Time variables
ARG wk-docker-build='/home'
ARG pkg-docker-install='wget vim htop'

WORKDIR $wk-docker-build


USER 0
COPY files/ /home

# Install packages 
RUN apt-get update && apt-get upgrade &&  apt-get install -y --no-install-recommends  $pkg-docker-install


USER 1000990000



