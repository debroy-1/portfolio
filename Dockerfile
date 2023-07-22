 # Use the official Apache HTTP Server base image
FROM httpd:latest

# Copy your website files to the container's document root
COPY index.html /usr/local/apache2/htdocs/
COPY styles.css /usr/local/apache2/htdocs/
COPY img/ /usr/local/apache2/htdocs/img/

# Expose the port used by Apache (default is 80)
EXPOSE 80
