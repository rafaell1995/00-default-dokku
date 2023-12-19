# Use a lightweight version of Nginx
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your HTML and CSS files to the working directory
COPY . .

# Expose port 80
EXPOSE 80

# No need for a CMD command as the base Nginx image handles that
