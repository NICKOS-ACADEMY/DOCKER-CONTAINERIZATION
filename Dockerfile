FROM nginx:alpine

# Copy nickos website files to Nginx web root to direct traffic of this website to the users
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]