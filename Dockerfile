FROM mysql:5.6
MAINTAINER Guillaume Carre "guillaume.carre@ticketfly.com"

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

# this need to stay the same for the script to work
ENV MYSQL_USER mysql

COPY ./run.sh /
RUN chmod 755 /run.sh

COPY ./my.cnf /etc/mysql/conf.d

ENTRYPOINT ["/run.sh"] 