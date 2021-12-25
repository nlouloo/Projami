FROM  bitnami/phpmyadmin

USER root

RUN apt-get update && apt-get upgrade 
