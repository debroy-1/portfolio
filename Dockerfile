 # Use the official Ubuntu base image
FROM ubuntu:latest

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy the index.html and styles.css files to the Nginx web root
COPY index.html styles.css /usr/share/nginx/html/

# Create the "img" folder and copy all image files to it
RUN mkdir /usr/share/nginx/html/img
COPY img/* /usr/share/nginx/html/img/

# Expose port 8000 to allow external access
EXPOSE 8000
