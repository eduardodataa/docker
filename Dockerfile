FROM nginx:latest


#Diretório que se cria dentro do container
WORKDIR /app

RUN apt-get update && \
    apt-get install vim -y

COPY html/ /usr/share/nginx

#comando variável que pode ser substituido
CMD [ "echo", "Olá Mundo" ]

#Entrypoint: não é substituido, como o comando CMD
ENTRYPOINT [ "echo", "Comando Entrypoint" ]


#docker run -it eduardodataa/hello
#docker build -t eduardodataa/hello:latest .