# Usamos una imagen base de Nginx
FROM nginx:alpine

# Copiar los archivos de la aplicación al directorio del contenedor donde Nginx los servirá
COPY ./ /usr/share/nginx/html/

# Exponer el puerto 80, donde Nginx servirá los archivos
EXPOSE 80

# Comando para ejecutar el servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
