FROM ubuntu
RUN apt update && apt install -y apache2
ADD . /var/www/html/
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
