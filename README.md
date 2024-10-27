
## Contenedor webapi con netcore

### Comandos docker

#### Contenedor para slq-server

Construir la imagen
```bash
docker build -f Dockerfile.sql -t sql:v0.1 .
```

Construir y correr el contenedor
```bash
docker run -d --name webapi -p1433:1433 sql:v0.1
```

#### Contenedor para webapi

Construir la imagen
```bash
docker build -f Dockerfile.webapi -t webapi:v0.1 .
```

Construir y correr el contenedor
```bash
docker run -d --name sql -p8080:8080 webapi:v0.1
```

#### Administración de las imágenes

Ver las imagenes creadas
```bash
docker images
```

Borra imagenes
```bash
docker rmi nombreImagen:tag
```

#### Administración de los contenedores


Listar los contenedores que estan corriendo
```bash
docker ps
```

Listar los contenedores que estan corriendo y los que no
```bash
docker ps -a
```

Borra contenedores
```bash
docker rm nombreContenedor
```

Correr un contenedor
```bash
docker start nombreContenedor
```

Parar ejecución de un contenedor
```bash
docker stop nombreContenedor
```

Resetear un contenedor
```bash
docker restart nombreContenedor
```





hola, como estas?

"Un ganador es un perdedor que lo intento un a vez mas"
--Bana 1810

Maquina virtual: https://fictional-waddle-4xjpvvjw5rqcjq7w.github.dev/

comandos docker "maquina virtual de git"

che hugo dame los permisos >//chmod ugo u//usuario u+rwx//permisos de escritura, lectura ... Grande Ugo

> htop //para que no se quede colgado git

>HttpClient le pasa informacion a HttpServer (son intermediarios)   //hace la consulta en lenguaje universal.

>HttpClient parecida a FileStream, si lo usamos con Using nos hace los cierres automaticamente.

>await y GetAsiync son metodos asincronos.

>Content   //Es el contenido del objeto.

>.ReadAsStringAsync()  //nos lee la informacion del navegador.




