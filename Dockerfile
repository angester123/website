FROM ubuntu
# Install necessary packages
RUN apt update && apt install apache2 -y
# Fix Apache warning about server name
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
# Add website content to the container
ADD . /var/www/html/
# Expose the default HTTP port
EXPOSE 80
# Run Apache in the foreground to keep the container running
CMD ["apache2ctl", "-D", "FOREGROUND"]
