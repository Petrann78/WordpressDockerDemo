FROM wordpress:latest
WORKDIR /app
RUN apt update && \
    apt upgrade -y && \
    apt install -y vim wget mariadb-client