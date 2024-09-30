# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the index.html file into the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html
COPY assets /usr/share/nginx/html/assets
COPY pages /usr/share/nginx/html/pages

# Expose port 80 to allow external access to the web server
EXPOSE 80

# Define the default command to run when starting the container
CMD ["nginx", "-g", "daemon off;"]
