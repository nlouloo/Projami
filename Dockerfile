FROM  bitnami/phpmyadmin

RUN apt-get update && apt-get upgrade && apt-get install vim  zip -y 

RUN whoami
