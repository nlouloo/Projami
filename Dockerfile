FROM  bitnami/phpmyadmin

# Declare Build Time variables


WORKDIR /home


USER 0
COPY files/ /home

# Install packages 
RUN apt-get update && apt-get upgrade &&  apt-get install wget vim htop zip unzip -y --no-install-recommends && apt-get autoclean && apt-get autoremove


# Prepare phpmyadmin switch 
RUN rm -r /opt/bitnami/phpmyadmin/
RUN chown -R 1000990000:1000990000 /opt/bitnami/phpmyadmin

RUN chown -R 1000990000:1000990000 /home
# Use of  NON-ROOT user
USER 1000990000

RUN wget https://jztkft.dl.sourceforge.net/project/projectorria/projeqtorV9.4.0.zip
RUN unzip -q projeqtorV9.4.0.zip && rm projeqtorV9.4.0.zip

RUN cp -r /home/projeqtor/ /opt/bitnami/phpmyadmin/


