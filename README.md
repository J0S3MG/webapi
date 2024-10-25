
## Contenedor webapi con netcore

### Comandos docker

#### creando una imagen

Construye la imagen
```bash
docker build -f Dockerfile.sql -t sql:v0.1 .
```

Ver las imagenes creadas
```bash
docker images
```

Teniendo la imagen se puede construir el contenedor de la imagen creada. De la misma imagen se pueden crear muchos contenedores. Todos los contenedores deben tener nombres diferentes.

```bash
docker run --name webapi -p 8080:8080 -d webapi:v0.1
```

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
docker rm webapi
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




