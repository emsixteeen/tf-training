FROM mysql:latest

ENV MYSQL_ALLOW_EMPTY_PASSWORD=1
COPY data.sql /docker-entrypoint-initdb.d/init.sql
