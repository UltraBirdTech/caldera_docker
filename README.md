# easybuggy4django_docker

## URL
https://github.com/k-tamura/easybuggy4django

## INITIALIZE

### Git clone this repository.
```
$ git@github.com:UltraBirdTech/easybuggy4django_docker.git
```

### build Docker image
```
$ docker build -t easybuggy:django .
Sending build context to Docker daemon  2.048kB
Step 1/8 : From python:3.6
3.6: Pulling from library/python
90fe46dd8199: Pull complete
35a4f1977689: Pull complete
bbc37f14aded: Pull complete
74e27dc593d4: Pull complete
4352dcff7819: Pull complete
1847e662e737: Pull complete
11d40aa4a4d0: Pull complete
423a225c2f8b: Pull complete
・
・
・
Removing intermediate container d5cadb29a7c8
 ---> 64bf5a10d280
Successfully built 64bf5a10d280
Successfully tagged easybuggy:django
```

### Check Docker Image
```
$ docker images
REPOSITORY        TAG                 IMAGE ID            CREATED             SIZE
easybuggy         django              64bf5a10d280        11 minutes ago      1.1GB
```

## HOW TO CONTROL
### START SERVER

```
docker run -d -p 9000:8000 easybuggy:django
```

access to `http://localhost:9000`.

### CHECK PROCESS
```
$ docker ps 
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                    NAMES
[CONTAINER ID]        easybuggy:django    "python manage.py ru…"   About a minute ago   Up About a minute   0.0.0.0:9000->8000/tcp   pensive_bardeen
```

### STOP SERVER
```
docker container stop [CHECKED CONTAINER ID]
```

