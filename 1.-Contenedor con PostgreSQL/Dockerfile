# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de requisitos
COPY requirements.txt .

# Instala las dependencias
RUN apt-get update && \
    apt-get install -y gcc libpq-dev && \
    pip install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación
COPY . .

# Comando por defecto (puedes cambiarlo según tus necesidades)
CMD ["python", "tu_script.py"]
