# Procédure de configuration du Partage de fichiers sur Windows 

### Table des matières
- **A** - [Installation du Rôle Serveur de fichiers](#a-installation-du-service-de-partage-de-fichier-terminé-)  
- **B** - [Configuration des dossiers de partage](#b-configuration-des-dossiers-de-partage)  
- **C** - [Configuration des autorisations utilisateurs](#c-configuration-des-autorisations-utilisateurs)  
- **D** - [Configuration des lecteurs réseaux](#d-configuration-des-lecteurs-réseaux)  
- **E** - [Vérification des permissions](#e-vérification-des-permissions)  
- **F** - [Pour résumer les permissions](#f-pour-résumer-les-permissions)

### A) Installation du Rôle **Serveur de fichiers**

- Le rôle partage de fichier est par défaut installé sur Windows Serveur, dans le cas contraire suivez la procédure ci-dessous. 

1) Cliquer sur **Gérer** 
2) Choisissez **Ajouter des rôles et fonctionnalités**

![img](partage_fichiers_img/01_img_role_partage/01_role_partage.png)

---  

1) Cliquer sur **Suivant** jusqu'à l'étape **Rôles de serveurs**
2) Sélectionner **Services de fichiers et stockage**, ainsi que **Serveur de fichiers** et **Services de stockage** dans la sous-catégorie

![img](partage_fichiers_img/01_img_role_partage/02_role_partage.png)

---  

1) A l'étape de **Confirmation**, vérifier que les services installés sont bien présents
2) Cliquer sur **Installer**

![img](partage_fichiers_img/01_img_role_partage/03_role_partage.png)

---  

#### =====  Installation du service de partage de fichier terminé =====

![img](partage_fichiers_img/01_img_role_partage/04_role_partage.png)


---  

### B) Configuration des dossiers de partage

- Dans le gestionnaire de serveur. 

1) Faire clic droit sur dans la fenêtre du milieu
2) Cliquer sur **Nouveau partage**

![img](partage_fichiers_img/02_img_new_partage/01_new_partage.png)

---  

1) Sélectionner **Partage SMB - Rapide**
2) Cliquer sur **Suivant**

![img](partage_fichiers_img/02_img_new_partage/02_new_partage.png)

---  

1) Cliquer sur **Parcourir**

![img](partage_fichiers_img/02_img_new_partage/03_new_partage.png)

---  

- Un fenêtre de sélection de dossier apparait. 

1) Cliquer sur **Nouveau dossier**
2) Renommer le dossier **"Documents_Entreprise"**
3) Cliquer sur **Sélectionner un dossier**

![img](partage_fichiers_img/02_img_new_partage/04_new_partage.png)

---  

1) Le chemin du dossier doit apparaitre dans le **chemin personnalisé**
2) Cliquer sur **Suivant**

![img](partage_fichiers_img/02_img_new_partage/05_new_partage.png)

---  

1) Changer le nom du partage par **"Docs"**
2) Cliquer sur **Suivant**

![img](partage_fichiers_img/02_img_new_partage/06_new_partage.png)

---  

1) Cocher **Activer l'énumération basée sur l'accès**
    * Comme indiqué, permet seulement aux utiliseurs autorisés de voir les dossiers auxquels ils ont accès. 
2) Cliquer sur **Suivant**

![img](partage_fichiers_img/02_img_new_partage/07_new_partage.png)

---  

- Cliquer sur **Suivant** pour les autorisations

![img](partage_fichiers_img/02_img_new_partage/08_new_partage.png)

---  

- Vérifier les informations du partage et cliquer sur **Créer**

![img](partage_fichiers_img/02_img_new_partage/09_new_partage.png)

---  

- Attendre que le partage soit terminé

![img](partage_fichiers_img/02_img_new_partage/10_new_partage.png)

---  

#### =====  Création du partage de fichier terminé =====

![img](partage_fichiers_img/02_img_new_partage/11_new_partage.png)

---  

### C) Configuration des autorisations utilisateurs

- Faire **Clic droit** sur le dossier **Documents_Entreprise** et **Propriétés**

![img](partage_fichiers_img/03_permissions_dossier_partage/01_permissions_dossier_partage.png)

---  

1) Cliquer sur l'onglet **Partage**
2) Cliquer sur **Partage avancé**
3) Cocher **Partager ce dossier**
4) Cliquer sur **Autorisations**

![img](partage_fichiers_img/03_permissions_dossier_partage/02_permissions_dossier_partage.png)

---  

1) Supprimer les groupes et utilisateurs présents
2) Cliquer sur **Ajouter**

![img](partage_fichiers_img/03_permissions_dossier_partage/03_permissions_dossier_partage.png)

---  

1) Entrer le mot **Utilisateurs**
2) Cliquer sur **Vérifier les noms**

![img](partage_fichiers_img/03_permissions_dossier_partage/04_permissions_dossier_partage.png)

---  

1) Dans la fenêtre qui apparait, sélectionner **Utilisateurs du domaine**
2) Cliquer sur **OK**

![img](partage_fichiers_img/03_permissions_dossier_partage/05_permissions_dossier_partage.png)

---  

1) **Utilisateur du domaine** doit apparaitre dans **Noms de groupes ou d'utilisateurs**
2) Cocher seulement **Autoriser** en **Lecture**  
- Cliquer sur **Appliquer** et **OK** 

![img](partage_fichiers_img/03_permissions_dossier_partage/06_permissions_dossier_partage.png)

---  

- Créer 3 dossiers (Comptabilité, Direction, RH):
    - soit avec **clic droit**
    - soit avec `CTRL` + `SHIFT` + `N`

![img](partage_fichiers_img/04_dossiers_autorisations/01_dossiers_autorisations.png)

---  

- Faire **Clic droit** et **Propriétés**

![img](partage_fichiers_img/04_dossiers_autorisations/02_dossiers_autorisations.png)

---  

1) Cliquer sur l'onglet **Partage**
2) Cliquer sur **Partage avancé**
3) Cocher **Partager ce dossier**
4) Cliquer sur **Autorisations**

![img](partage_fichiers_img/04_dossiers_autorisations/03_dossiers_autorisations.png)

---  

- Utilisateurs et Groupes présents sur le serveur

![img](partage_fichiers_img/04_dossiers_autorisations/00_dossiers_autorisations.png)

#### a) Partage dossier **Comptabilité**
- Comme pour les autorisations de partages du dossiers **Docs**

1) Ajouter les groupes **Comptabilités** et **Direction**
2) Mettre les 2 groupes en **Modifier** et **Lecture**

![img](partage_fichiers_img/04_dossiers_autorisations/04_dossiers_autorisations.png)

#### b) Partage du dossier **Direction**

1) Ajouter le groupes **Direction**
2) Mettre le groupe en **Modifier** et **Lecture**

![img](partage_fichiers_img/04_dossiers_autorisations/05_dossiers_autorisations.png)

#### c) Partage du dossier **RH**

1) Ajouter les groupes **RH** et **Direction**
2) Mettre les 2 groupes en **Modifier** et **Lecture**

![img](partage_fichiers_img/04_dossiers_autorisations/06_dossiers_autorisations.png)


#### =====  Création des dossiers et configuration des permissions terminée =====

1) Rafraichir le gestionnaire de serveur
2) Apparition des dossiers partagés

![img](partage_fichiers_img/04_dossiers_autorisations/07_dossiers_autorisations.png)

---  

- Vérification des dossiers partagés avec la commande Powershell `Get-SmbShare`

![img](partage_fichiers_img/04_dossiers_autorisations/08_dossiers_autorisations.png)

---  

### D) Configuration des lecteurs réseaux

a) Utilisateurs **Comptabilité**

1) Entrer la commande `New-PSDrive -Name "G" -PSProvider FileSystem -Root "\\SRVWIN01\Comptabilité\" -Persist`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/01_lecteur_reseau_client.png)

2) Vérification du mappage avec la commande `Get-PSDrive -PSProvider FileSystem`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/02_lecteur_reseau_client.png)

3) Vérification dans l'explorateur de fichier

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/03_lecteur_reseau_client.png)

b) Utilisateurs **RH**

1) Entrer la commande `New-PSDrive -Name "G" -PSProvider FileSystem -Root "\\SRVWIN01\RH\" -Persist`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/04_lecteur_reseau_client.png)

2) Vérification du mappage avec la commande `Get-PSDrive -PSProvider FileSystem`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/05_lecteur_reseau_client.png)

3) Vérification dans l'explorateur de fichier

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/06_lecteur_reseau_client.png)

c) Utilisateur **Direction**

1) Entrer la commande `New-PSDrive -Name "G" -PSProvider FileSystem -Root "\\SRVWIN01\Direction\" -Persist`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/07_lecteur_reseau_client.png)

2) Entrer la commande `New-PSDrive -Name "H" -PSProvider FileSystem -Root "\\SRVWIN01\Comptabilité\" -Persist`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/08_lecteur_reseau_client.png)

3) Entrer la commande `New-PSDrive -Name "I" -PSProvider FileSystem -Root "\\SRVWIN01\RH\" -Persist`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/09_lecteur_reseau_client.png)

4) Vérification du mappage avec la commande `Get-PSDrive -PSProvider FileSystem`

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/10_lecteur_reseau_client.png)

5) Vérification dans l'explorateur de fichier

![img](partage_fichiers_img/05_configuration_lecteurs_reseau/11_lecteur_reseau_client.png)

---  

### E) Vérification des permissions 

- Essai à partir d'un utilisateur de la comptabilité

![img](partage_fichiers_img/06_verification_permissions/01_permissions_dossiers.png)


- Par la commande powershell le dossier sera mappé mais il ne sera accessible. 

- Avec l'assistant de mappage par l'interface graphique, il est impossible de mapper un dossier où l'utilisateur n'a pas d'autorisation. 

![img](partage_fichiers_img/06_verification_permissions/02_permissions_dossiers.png)

---  

### F) Pour résumer les permissions 

1) Les utilisateurs de la direction ont les droits de lecture et d'écriture à **tous les dossiers** des autres utilisateurs

2) Les utilisateurs de la comptabilité ont les droits de lecture et d'écriture seulement au dossier partagé **Comptabilité** 

3) Les utilisateurs de la RH ont les droits de lecture et d'écriture seulement au dossier partagé **RH** 
