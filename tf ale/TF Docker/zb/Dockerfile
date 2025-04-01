FROM postgres:latest

# Copia o script SQL para o container
COPY Docker-tf.sql /docker-entrypoint-initdb.d/

# Define a porta padrão do PostgreSQL
EXPOSE 5432