/ Esta es nuestra imagen base

FROM python:3.7.11-slim
/es nuestra carpeta para trabajar dentro del contenedor
WORKDIR  /python-api

/copiar archivos de la maquina al contenedor
COPY requirements.txt requirements.txt
/ejecuta los comantos al construir la imagen- ejecutamos
RUN pip install -r requirements.txt

COPY . .
/este es el comando que se ejecuta al iniciar el contenedor
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
