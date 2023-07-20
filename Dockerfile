 FROM ubuntu:latest
COPY index.html styles.css /usr/share/nginx/html/


# Create the "img" folder and copy all image files to it
RUN mkdir /usr/share/nginx/html/img
COPY img/* /usr/share/nginx/html/img/

# Expose port 80 to allow external access
EXPOSE 8000
