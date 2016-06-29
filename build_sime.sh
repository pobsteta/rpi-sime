#!/bin/bash

# Stoppe les conteneurs
docker stop $(docker ps -a -q)
# Supprime les conteneurs
docker rm $(docker ps -a -q)
# Supprime les images
#docker rmi $(docker images -q)
# Force la suppression des images de base
docker rmi -f $(docker images -q)
# Supprime tous les volumes
docker volume rm $(docker volume ls -qf dangling=true)
# Construit l'image
docker build -t pobsteta/gf-sime .
# Lance le container créé détaché (argument -d)
#docker run -p 35432:5432 -p 38000:8000 pobsteta/rpi-sime
# Sauvegarde la base postgresql du conteneur pgdata contenu dans le volume pgdatavolume dans un conteneur docker-base
#docker run --rm --volumes-from pgdata -v $(pwd):/backup pobsteta/docker-base tar cvf /backup/backup.tar /var/lib/postgresql/data /var/lib/tryton
# Lance un nouveau conteneur nommé pgdata
#docker run -v /var/lib/postgresql/data /var/lib/tryton --name pgdata pobsteta/docker-base /bin/bash
# Restaure la base de données postgresql dans le conteneur pgdata depuis le conteneur docker-base
#docker run --rm --volumes-from pgdata -v $(pwd):/backup pobsteta/docker-base bash -c "cd /datavol && tar xvf /backup/backup.tar --strip 1"
