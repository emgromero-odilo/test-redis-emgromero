# Usa la imagen oficial de Redis Stack
FROM redis/redis-stack:latest

# Instala TinyProxy (un proxy HTTP liviano)
RUN apt-get update && apt-get install -y tinyproxy

# Copia la configuración de TinyProxy
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

# Expone los puertos 6379 (Redis) y 8888 (Proxy HTTP)
EXPOSE 6379 8888

# Inicia TinyProxy y Redis en paralelo
CMD tinyproxy & redis-server
