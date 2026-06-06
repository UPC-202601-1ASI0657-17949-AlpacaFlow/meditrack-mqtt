# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest

# Copiar nuestra configuración al contenedor
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Copiar el script de inicio y darle permisos de ejecución
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Exponer el puerto
EXPOSE 10000

# Ejecutar el script
CMD ["/start.sh"]