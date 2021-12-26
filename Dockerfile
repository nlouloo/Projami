FROM  bitnami/phpmyadmin

# Declare Build Time variables
ARG user-docker-run=1000990000
ARG root-docker-build=0


USER $root-docker-build
COPY files/ /home


USER $user-docker-run


