FROM nginx:1.9
RUN mkdir -p /data/nginx/cache
COPY nginx.conf /etc/nginx/nginx.conf
COPY VERSION /VERSION
