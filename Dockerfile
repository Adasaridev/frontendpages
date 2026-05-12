# Step 1: Use the official Nginx image as the base
FROM nginx:alpine

# Step 2: Remove the default Nginx static assets (optional but clean)
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your static files from your host to the container
# This copies everything from your current directory into the Nginx html folder
COPY . /usr/share/nginx/html

# Step 4: Expose port 80 to the outside world
EXPOSE 80

# Step 5: Start Nginx (this is actually the default, but good for clarity)
CMD ["nginx", "-g", "daemon off;"]
