# MySQL for Docker #
My standard MySQL Dockerfile for local development. Adds a very thin layer on top of [the official MySQL image][docker-mysql], so in general you should refer to that for usage details (particularly the section on environment variables).

[docker-mysql]: https://hub.docker.com/_/mysql/

## Configuration ##

### Volumes ###
The image defines two volumes:

1. `/var/lib/mysql`, which is where the container will store its database files.
2. `/var/log`, which is where the container will write its log files.

Example usage:

```bash
docker run \
    -d \
    -e MYSQL_DATABASE=myapp \
    -e MYSQL_USER=dba \
    -e MYSQL_PASSWORD=dba \
    -e MYSQL_ROOT_PASSWORD=secret \
    -v ~/code/myapp/data:/var/lib/mysql \
    -v ~/code/myapp/logs:/var/log \
    monooso/docker-mysql:latest
```
