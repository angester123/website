FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
ADD . /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
