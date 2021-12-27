# Inception_v4

url de base :

127.0.0.1, localhost, sbaranes.42.fr - redirection active.

pour se connecter depuis le site : 
	- /wp-login.php

pour se connecter depuis la database : 
	- service mysql start
	- mysql -u <USER> -p <MDT_USER>

Commande utile a retenir :

mariabd :
	- service --status-all - pour verifier le status des service.
	- SHOW TABLES FROM dbwordpress; - pour afficher le contenu de la database.

docker :
	- docker logs -f <db_container_name> - pour avoir les log d'erreur du container demander
