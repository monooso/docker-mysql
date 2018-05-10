FROM mysql:5.6

# Copy the mysql config file.
COPY ./custom.cnf /etc/mysql/conf.d/custom.cnf

VOLUME ["/var/lib/mysql", "/var/log"]
