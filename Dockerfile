# Usar la imagen base de Python
FROM python:3.9

# Definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de la app al contenedor
COPY . /app

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto
EXPOSE 5000

# Ejecutar la aplicación Flask
CMD ["python", "app.py"]
