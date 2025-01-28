FROM ubuntu

# Install Apache and dependencies
RUN apt-get update && apt-get install -y apache2

# Add the website content
ADD . /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
