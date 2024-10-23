# etapa: construcción
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build


USER root
RUN apt-get update 
#RUN apt-get install -y gss-ntlmssp krb5-user libkrb5-dev openssl libssl-dev 
RUN apt-get install -y gss-ntlmssp krb5-user libkrb5-dev openssl libssl-dev libgssapi-krb5-2 libkrb5-3
RUN rm -rf /var/lib/apt/lists/*

# directorio de trabajo
WORKDIR /src/webapi

# copiando archivos 
COPY Dockerfile ./
COPY WebAppiServer/webapiServer/webapiServer.csproj ./
COPY WebAppiServer/webapiServer/. ./

RUN dotnet add package Microsoft.Data.SqlClient

# restaurando dependencias
RUN dotnet restore ./webapiServer.csproj

# compilando
RUN dotnet build ./webapiServer.csproj -c Release -o /app/build

# publicando
RUN dotnet publish ./webapiServer.csproj -c Release -o /app/publish

# etapa: ejecución
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

# directorio de trabajo del contenedor
WORKDIR /app

# copiando los archivos a publicar
COPY --from=build /app/publish .

# exponiendo el puerto 8080 para acceder - activar el public en forwader port
EXPOSE 8080

# punto de entrada de la aplicación
ENTRYPOINT ["dotnet", "webapiServer.dll"]