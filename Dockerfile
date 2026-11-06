FROM nginx:alpine
RUN sed -i 's/listen[[:space:]]*80/listen 10000/g' /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/
EXPOSE 10000
