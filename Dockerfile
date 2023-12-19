# Use the official Nginx image as a parent image
FROM nginx:stable-alpine

# Set the working directory to nginx asset directory
WORKDIR /usr/share/nginx/html

# Remove the default nginx static assets
RUN rm -rf ./*

# Copy static assets from the current directory to the container
COPY . .

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]
