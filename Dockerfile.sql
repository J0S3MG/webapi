# imagen oficial mss 
FROM mcr.microsoft.com/mssql/server:2022-latest

# variables de entorno
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=MSS-fernando-123

# herramientas para mss
USER root
RUN apt-get update && \
    apt-get install -y curl apt-transport-https gnupg2

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/microsoft.gpg

RUN echo "deb [arch=amd64] https://packages.microsoft.com/ubuntu/20.04/prod focal main" > /etc/apt/sources.list.d/mssql-release.list

RUN apt-get update

# instalando paquetes
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17 || echo "Failed to install msodbcsql17"
RUN apt-get install -y mssql-tools || echo "Failed to install mssql-tools"
RUN apt-get install -y unixodbc-dev || echo "Failed to install unixodbc-dev"

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# direcotrio de trabajo para los scripts
WORKDIR /usr/src/app

# copiar scripts
#COPY ./scripts/ /usr/src/app

# script de inicializacion
#COPY ./scripts/init.sql.sh /usr/src/app/

# permisos de ejecución
#RUN chmod +x /usr/src/app/init.sql.sh

# exponer puerto
EXPOSE 1433

# punto de entrada
ENTRYPOINT ["/opt/mssql/bin/sqlservr"]
#ENTRYPOINT ["/usr/src/app/init.sql.sh"]