## Use official lightweight Nginx image
#Alpine keeps the image small and secure

FROM nginx:alpine

## Copy static website files to Nginx HTML directory

COPY index.html /usr/share/nginx/html/index.html

## Expose port 80 to the outside world
EXPOSE 80
