FROM ubuntu

# Install necessary dependencies
RUN apt-get update && apt-get install -y apache2

# Add website files
ADD . /var/www/html

# Set Apache to run in foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
