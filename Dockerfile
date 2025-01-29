# Use Ubuntu as the base image
FROM ubuntu:latest

# Update and install Apache
RUN apt update && apt install apache2 -y

# Set the ServerName directive to suppress warnings
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Set the working directory
WORKDIR /var/www/html

# Copy project files to the container
ADD . /var/www/html

# Expose port 80 to allow HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
