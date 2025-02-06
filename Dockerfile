# Usa la imagen oficial de Redis Stack
FROM redis/redis-stack:latest

# Expone los puertos de Redis y de la interfaz web
EXPOSE 6379 8001

# Comando para iniciar Redis con la interfaz web habilitada
CMD ["redis-stack-server"]