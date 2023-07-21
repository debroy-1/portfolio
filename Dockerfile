 # Use the official Ubuntu base image
FROM ubuntu:latest

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy the index.html and styles.css files to the Nginx web root
COPY index.html styles.css  /var/www/html/

# Create the "img" folder and copy all image files to it
RUN mkdir  /var/www/html/img
COPY img/*  /var/www/html/img/

 
# Expose port 8000 to allow external access
EXPOSE 8000

# Start Nginx and listen on port 8000 when the container runs
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf", "-p", "/etc/nginx"]
