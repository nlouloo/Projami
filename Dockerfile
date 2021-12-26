FROM  bitnami/phpmyadmin

# Declare Build Time variables


WORKDIR /home


USER 0
COPY files/ /home

# Install packages 
RUN apt-get update && apt-get upgrade &&  apt-get install wget vim htop zip unzip -y --no-install-recommends && apt-get autoclean && apt-get autoremove

RUN echo "max_input_vars = 4000" >> /opt/bitnami/php/etc/php.ini
RUN echo "max_input_vars = 4000" >> /opt/bitnami/php/lib/php.ini

RUN echo "max_execution_time = 600" >> /opt/bitnami/php/etc/php.ini
RUN echo "max_execution_time = 600" >> /opt/bitnami/php/lib/php.ini




# Prepare phpmyadmin switch 
RUN rm -r /opt/bitnami/phpmyadmin/*
RUN chown -R 1000990000:1000990000 /opt/bitnami/phpmyadmin

RUN chown -R 1000990000:1000990000 /home
# Use of  NON-ROOT user
USER 1000990000

RUN wget https://jztkft.dl.sourceforge.net/project/projectorria/projeqtorV9.4.0.zip
RUN unzip -q projeqtorV9.4.0.zip && rm projeqtorV9.4.0.zip

RUN cp -r /home/projeqtor/ /opt/bitnami/phpmyadmin/

RUN rm -r /home/*


