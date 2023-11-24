FROM postgres:alpine
COPY pilacoin-db.sql /docker-entrypoint-initdb.d/
EXPOSE 5432
