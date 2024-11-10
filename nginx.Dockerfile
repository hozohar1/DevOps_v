# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy nginx.conf to custom configuration 
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the two ports for the two servers
EXPOSE 8080 8081

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
