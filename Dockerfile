# Use Ubuntu as the base image
FROM ubuntu:latest

# Update and install Apache
RUN apt update && apt install apache2 -y

# Set the working directory
WORKDIR /var/www/html

# Copy project files to the container
ADD . /var/www/html

# Expose port 80 to allow HTTP traffic
EXPOSE 81

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
