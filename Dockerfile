 # Use the official Raspberry Pi OS as the base image
FROM arm64v8/raspbian:latest

# Install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the HTML, CSS, and image files to the default Apache2 public directory
COPY index.html /var/www/html/
 COPY img/ /var/www/html/img/

# Expose port 80 to allow external access
EXPOSE 80

# Start Apache2 when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]