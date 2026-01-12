FROM mysql:8.0

# Copy initialization script
COPY db.sql /docker-entrypoint-initdb.d/

# Set environment variables

# Password should be injected via env vars or secrets manager
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE=mydb

# Expose MySQL port
EXPOSE 3306