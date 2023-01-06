#Installer l’hyperviseur « VMware ESXi » dans votre machine.

Apuyer entrer 
![](/rsc/esxi-aceuil.png)
Accepter la licence 
![](rsc/accepter.png)
Continuer avec la partition 50 GB
![](rsc/continuer-avec-la-partition-50%20GB.png)
Choisir le français comme langue 
![](rsc/choisir-français-comme-langue.png)
definir son mot de pass root
![](rsc/definir%20son%20mot%20de%20pass%20root.png)
Confirmer l'installation de ESXI
![](rsc/Confirmer%20installation%20de%20esxi.png)


Editer le virtual network 
![](/rsc/editer-host-only.png)
host-only adress réseau 192.168.
Redemarer 

Customiser parametres reseaux
![](rsc/Customiser%20parametres%20reseaux.png)

changer les paramètres ipv4: 
adressage static
ipv4 primaire : 192.168.102.49 

masque de sous réseau : 255.255.255.0

passerelle par defaut : 192.168.102.0
![](rsc/reseau%20ipv4.png)
désactiver l'adressage ipv6
![](rsc/desactiver%20adressage%20ipv6.png)

curtomiser nom de domaine esxi


[http://esxihyperviser](http://esxihyperviser.lmlouis.lan)
![](rsc/curtomiser%20nom%20de%20domaine%20esxi.png)
prefix : lmlouis.lan
![](rsc/Suffix%20lmlouis.lan.png)

Redemarrer en appuyant `echap` puis `Y`

Test connexion réseau réussi 
![](rsc/Test%20Connexion%20Reseau.png)


Ajouter hostame sur ubuntu

`sudo echo "192.168.102.49 esxihyperviser" >> /etc/hosts` 

verifier si le vifier l'enrégistrement a été prise en compte avec 

`sudo cat /etc/hosts | grep "esxihyperviser"`

Entrer dans le client esxi et importer la clé de licence
![](rsc/LicenceESXI.png)

# Installer le serveur Web apache ou nginx dans la VM-1.
![](/rsc/VM1/creer%20vm1.png)
![](/rsc/VM1/parametre%20de%20stockage.png)
J'ai installer le serveur web en crént un pont entre le groupe VM network et le Network management avec les paramètres suivnts:
![](/rsc/VM1/networkVM1.png)
adresse : 192.168.102.50

masque de sous réseau : 255.255.255.0

ensuite installer git et recupere le fichier d'installation de docker via git gitthub qui contient ce code :
```
cd $HOME && touch docker-installer.sh && chmod +x docker-installer.sh
cd $HOME && echo '#!/bin/bash' > docker-installer.sh && echo '# -*- ENCODING: UTF-8 -*-' >> docker-installer.sh
echo 'sudo apt update' >> docker-installer.sh
echo 'sudo apt install apt-transport-https ca-certificates curl software-properties-common -y' >> docker-installer.sh 
echo 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -' >> docker-installer.sh
echo 'sudo apt install docker-ce -y' >> docker-installer.sh
echo 'apt-cache policy docker-ce' >> docker-installer.sh
```
exécuter avec `./docker-installer.sh`


-p 192.168.1.100:8080:80

![](rsc/VM1/creer%20vm1.png)
Personnaliser les paramètres de la machine VM1
![](rsc/VM1/parametre%20de%20stockage.png)


