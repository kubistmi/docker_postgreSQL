FROM ubuntu:18.04

# database user name
# database user password
# database name
ARG D_USER
ARG D_PASSWD
ARG D_DATABASE
ENV DEBIAN_FRONTEND=noninteractive

# Get the signing key and import it
RUN apt-get update && apt-get install -y apt-utils wget gnupg \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 04EE7237B7D453EC \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys AA8E81B4331F7F50

# Add PostgreSQL's repository. It contains the most recent stable release of PostgreSQL
RUN printf 'deb http://security.debian.org/debian-security buster/updates main\ndeb http://ftp.de.debian.org/debian buster main' >> /etc/apt/sources.list 

# INSTALLATION
RUN apt-get update && apt-get install -y \
    postgresql-11 \
    postgresql-client-11 \
    postgresql-contrib-11 \
    software-properties-common 

# SWITCH USERS
USER postgres

# DATABASE SETUP
RUN    /etc/init.d/postgresql start \
    && psql --command "CREATE USER $D_USER WITH SUPERUSER PASSWORD '$D_PASSWD';" \
    && createdb -O $D_USER $D_DATABASE

# ALLOW REMOTE CONNECTIONS
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/11/main/pg_hba.conf \
    && echo "listen_addresses='*'" >> /etc/postgresql/11/main/postgresql.conf

# Expose the PostgreSQL port
EXPOSE 5432

# START THE DATABASE
CMD ["/usr/lib/postgresql/11/bin/postgres", "-D", "/var/lib/postgresql/11/main", "-c", "config_file=/etc/postgresql/11/main/postgresql.conf"]
