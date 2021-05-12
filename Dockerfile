FROM nginx:1.19-alpine
COPY nginx-custom.conf /etc/nginx/conf.d/default.conf
