# Use the official MariaDB image as the base
FROM mariadb:latest

# Set the working directory
WORKDIR /docker-entrypoint-initdb.d

# Copy custom initialization scripts (optional)
# Ensure any `.sql` or `.sh` scripts are in the same directory as this Dockerfile
COPY ./mariadb/init-scripts/ /docker-entrypoint-initdb.d/

# Expose MariaDB port
EXPOSE 3306

# Set entry point to the default MariaDB entry point
ENTRYPOINT ["docker-entrypoint.sh"]

# Default command to run MariaDB
CMD ["mysqld"]
