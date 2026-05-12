FROM nginx:stable-alpine
COPY game.html /usr/share/nginx/html
EXPOSE 80
