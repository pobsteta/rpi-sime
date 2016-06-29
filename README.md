# GF SIME (Tryton GIS 2.8)

Cloner le dépôt :

  git clone https://github.com/pobsteta/gf-sime.git
  
Se rendre dans le dépôt créé :
  
  cd ~/gf-sime
  
Lancer les conteneurs avec la commande :

  docker-compose up
  
Lister les conteneurs :

  docker ps
  
Se connecter sur le conteneur sime :

  docker exec -ti <id_conteneur_sime> bash
  
Ou directement avec le nom du conteneur conteu dans docker-compose.yml :

  docker exec -ti sime bash
  
Se rendre dans le répertoire /opt/tryton/bin et lancer le serveur par la commande :

  ./trytond -d tryton
  
Lancer un client tryton avec les attributs :

  host: localhost:8000
  base de données: tryton
  identifiant: admin
  mot de passe: admin
  
Voilà vous pouvez utiliser SIME !
  
  
