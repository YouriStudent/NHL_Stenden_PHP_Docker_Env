FROM nginx:fpm

COPY ./nginx.conf /etc/nginx/conf.d/app.conf