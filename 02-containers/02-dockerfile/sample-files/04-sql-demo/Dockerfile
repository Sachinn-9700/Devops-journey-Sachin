FROM mysql:8.0

# Copy initialization script
COPY db.sql /docker-entrypoint-initdb.d/

# Set environment variables

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=mydb

# Expose MySQL port
EXPOSE 3306