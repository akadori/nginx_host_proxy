FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf/*.conf /etc/nginx/conf.d/
