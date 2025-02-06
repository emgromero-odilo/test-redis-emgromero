# Usa la imagen oficial de Redis Stack
FROM redis/redis-stack:latest

# Expone el puerto de Redis
EXPOSE 6379

# Comando por defecto al iniciar el contenedor
CMD ["redis-server"]
