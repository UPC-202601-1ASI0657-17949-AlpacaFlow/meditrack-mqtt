# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest

# Copiar nuestra configuración al contenedor
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Exponer el puerto de WebSockets (o TCP)
EXPOSE 10000

# Arrancar Mosquitto y filtrar los logs en tiempo real
CMD ["sh", "-c", "/usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf 2>&1 | grep -v 'bad socket read/write' | grep -v 'New connection from 127.0.0.1'"]