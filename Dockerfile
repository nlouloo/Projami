FROM  bitnami/phpmyadmin

# Declare Build Time variables


WORKDIR /home


USER 0
COPY files/ /home

# Install packages 
RUN apt-get update && apt-get upgrade &&  apt-get install wget vim htop zip -y --no-install-recommends  


RUN chown -R 1000990000:0 $wk-docker-build
# Use of  NON-ROOT user
USER 1000990000

RUN wget https://jztkft.dl.sourceforge.net/project/projectorria/projeqtorV9.4.0.zip
RUN unzip -q projeqtorV9.4.0.zip && rm projeqtorV9.4.0.zip



