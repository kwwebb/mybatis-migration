# our base image
FROM mysql:5.7

# Add a database
ENV MYSQL_DATABASE mybatis

# Set root password
ENV MYSQL_ROOT_PASSWORD mybatis

# Add the content of the sql/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
#COPY ./sql/ /docker-entrypoint-initdb.d/