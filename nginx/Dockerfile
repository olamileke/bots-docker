FROM nginx:stable-alpine

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./vhosts /etc/nginx/sites-enabled

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]