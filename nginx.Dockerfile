# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Nginx (a web server)
# - Update the package list to ensure the latest version of packages is installed
# - Install the 'nginx' package
# - Clean up the package cache to reduce the size of the image
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy the custom Nginx configuration file from the build context to the container
# This replaces the default Nginx configuration with your custom configuration 
COPY nginx.conf /etc/nginx/nginx.conf

# Expose ports 8080 and 8081 to allow access to the container's Nginx server
# These ports will be accessible from the host or other containers
EXPOSE 8080 8081

# Start the Nginx server in the foreground
# The '-g "daemon off;"' option ensures that Nginx doesn't run as a background process
CMD ["nginx", "-g", "daemon off;"]
