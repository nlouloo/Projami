FROM  bitnami/phpmyadmin

USER 0

RUN apt-get update && apt-get upgrade && apt-get install vim  zip -y 

RUN whoami
