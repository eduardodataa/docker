FROM nginx:latest

#Diretório que se cria dentro do container
WORKDIR /app

RUN apt-get update && \
    apt-get install -y

