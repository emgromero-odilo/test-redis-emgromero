# Usa la imagen oficial de Redis Stack
FROM redis/redis-stack:latest

# Instala Nginx y Supervisor
RUN apt-get update && apt-get install -y nginx supervisor

# Expone el puerto 6379 para Redis y 8888 para HTTP
EXPOSE 6379 8888

# Copia la configuración de Nginx y de Supervisor
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Inicia Supervisor (que gestionará Nginx y Redis)
CMD ["/usr/bin/supervisord"]
