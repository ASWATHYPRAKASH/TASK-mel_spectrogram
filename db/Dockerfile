FROM mysql:latest
ENV MYSQL_DATABASE=mel_script
ENV MYSQL_ROOT_PASSWORD=root@123
COPY ./dump.sql /docker-entrypoint-initdb.d/
