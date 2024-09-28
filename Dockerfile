# Use the official Nginx base image
FROM nginx:latest

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy index.html to the default HTML location
COPY index.html /usr/share/nginx/html/index.html

# Expose the custom port 1918 (as specified in your nginx.conf)
EXPOSE 1918
