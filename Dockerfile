FROM mariadb:latest
RUN apt update && apt upgrade -y
RUN apt install nano
RUN apt install vim -y
COPY ./mariadb /docker-entrypoint-initdb.d
EXPOSE 80
