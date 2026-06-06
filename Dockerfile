# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest

# Copiar nuestra configuración al contenedor
COPY mosquitto.conf /mosquitto/config/mosquitto.conf 2>&1 | grep -v "bad socket read/write"

# Exponer el puerto de WebSockets
EXPOSE 10000
