# Usa la imagen oficial de Redis Stack
FROM redis/redis-stack:latest

# Expone el puerto 6379 para Redis
EXPOSE 6379

# Inicia Redis directamente
CMD ["redis-server", "--bind", "0.0.0.0", "--protected-mode", "no"]