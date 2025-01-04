# Use the official Snipe-IT image
FROM linuxserver/snipe-it:latest

# Set environment variables for Snipe-IT
ENV APP_URL=${APP_URL} \
    MYSQL_PORT_3306_TCP_ADDR=${MYSQL_PORT_3306_TCP_ADDR} \
    MYSQL_PORT_3306_TCP_PORT=${MYSQL_PORT_3306_TCP_PORT} \
    MYSQL_DATABASE=${MYSQL_DATABASE} \
    MYSQL_USER=${MYSQL_USER} \
    MYSQL_PASSWORD=${MYSQL_PASSWORD} \
    APP_TRUSTED_PROXIES=${APP_TRUSTED_PROXIES} \
    TZ=${TZ} \
    PUID=${PUID} \
    PGID=${PGID}

# Expose the default Snipe-IT HTTP port
EXPOSE 80

# Workdir for container (Optional if default is fine)
WORKDIR /config

# Start the container
CMD ["/init"]
