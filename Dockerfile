# Usa la imagen oficial de Redis Stack
FROM redis/redis-stack:latest

# Expone los puertos de Redis y su interfaz web
EXPOSE 6379 8001

# Ejecuta Redis con su servidor HTTP habilitado
CMD ["redis-server", "--loadmodule", "/opt/redis-stack/lib/redisearch.so"]