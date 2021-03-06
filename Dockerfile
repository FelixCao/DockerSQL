FROM nornagon/postgres

ADD initdb.sql /src/
ADD create_db.sh /src/


RUN chmod +x /src/create_db.sh
USER postgres
RUN /src/create_db.sh

CMD ["/usr/lib/postgresql/9.3/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.3/main/postgresql.conf"]
