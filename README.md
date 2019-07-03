# MySQL for Docker #
My standard MySQL Dockerfile for local development. Adds a very thin layer on top of [the official MySQL image][docker-mysql], so in general you should refer to that for usage details (particularly the section on environment variables).

[docker-mysql]: https://hub.docker.com/_/mysql/

## Configuration ##

### Volumes ###
The image defines a single volume, `/var/lib/mysql`, which is used to store the database files.

### macOS ###
If you're using this container on a Mac, you'll probably need to specify the default user.

Here's how that all looks in practice.

```bash
docker run \
    -d \
    -e MYSQL_DATABASE=myapp \
    -e MYSQL_USER=dba \
    -e MYSQL_PASSWORD=dba \
    -e MYSQL_ROOT_PASSWORD=secret \
    -u "$(id -u):$(id -g)"
    -v ~/code/myapp/data:/var/lib/mysql \
    -p 3306:3306 \
    monooso/docker-mysql:latest
```

## Building ##
Build the Docker images from the repository root. For example:

```bash
docker build -t monooso/docker-mysql:5.7 -f Dockerfile-5.7 .
```
