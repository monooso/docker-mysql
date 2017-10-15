FROM mysql:5.7

# Copy the mysql config file.
COPY ./custom.cnf /etc/mysql/conf.d/custom.cnf

VOLUME ["/var/lib/mysql", "/var/log"]
