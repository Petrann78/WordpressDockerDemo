FROM wordpress:latest as builder
WORKDIR /var/www/html
COPY . ./
RUN apt update && \
    apt upgrade -y && \
    apt install -y vim wget mariadb-client

FROM nginx:1.25-bookworm-perl
WORKDIR /usr/share/nginx/html
RUN rm /usr/share/nginx/html/index.html
COPY --from=builder /var/www/html /usr/share/nginx/html
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]