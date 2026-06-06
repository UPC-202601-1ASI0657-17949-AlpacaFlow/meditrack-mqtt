# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest

# Copiar nuestra configuración al contenedor
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Exponer el puerto de WebSockets
EXPOSE 10000
