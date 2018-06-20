FROM nginx:1.14-alpine
COPY nginx-custom.conf /etc/nginx/conf.d/default.conf
