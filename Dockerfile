# Usa la imagen oficial de Redis Stack
FROM redis/redis-stack:latest

# Instala Nginx (o TinyProxy)
RUN apt-get update && apt-get install -y nginx

# Expone el puerto 6379 para Redis y 8888 para HTTP
EXPOSE 6379 8888

# Configura Nginx para redirigir el tráfico HTTP a Redis
COPY nginx.conf /etc/nginx/nginx.conf

# Inicia Nginx y Redis
CMD service nginx start && redis-server --bind 0.0.0.0 --protected-mode no