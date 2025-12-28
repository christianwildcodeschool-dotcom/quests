#!/usr/bin/env bash

# Script : Installation et configuration d'un base de donnée avec MariaDB
# Auteur : Christian

# Sommaire
# 01 - Variables
# 02 - Mise à jour des paquets
# 03 - Installation de MariaDB
# 04 - Création utilisateurs
# 05 - Création base de données
# 06 - Affichage résumé actions
# 07 - Exécution du script

#============================================
# 01 - VARIABLES
#============================================
arg1=$1

#============================================
# 02 - MISE A JOUR DES PAQUETS
#============================================
function apt_update() {

    sudo apt update && sudo apt upgrade -y
}

#============================================
# 03 - INSTALLATION DE MARIADB
#============================================
function mariadb_installation() {

    if dpkg -l mariadb-server >/dev/null; then

        echo ""
        echo "MariaDB est déjà installé"

        # Appel de la fonction de création de l'utilisateur
        user_creation

        # Appel de la fonction de création de la base de données
        database_creation

    else

        echo ""
        echo "MariaDB n'est pas installé, lancement de l'installation."

        echo ""
        read -p "Souhaitez-vous installer MariaDB ? [Y/N] : " mariadb_installation

        if [ "$mariadb_installation" = "y" ]; then

            # Commande d'installation de mariadb-server
            sudo apt install mariadb-server -y

            # Supprime les utilisateurs anonymes
            sudo mysql -e "DROP USER IF EXISTS ''@'localhost';"
            sudo mysql -e "DROP USER IF EXISTS ''@'$(hostname)';"

            # Désactive le login root à distance
            sudo mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"

            # Supprime la base de données 'test'
            sudo mysql -e "DROP DATABASE IF EXISTS test;"
            sudo mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';"

            # Applique les changements
            sudo mysql -e "FLUSH PRIVILEGES;"

            echo ""
            echo "====================================================="
            echo "= INSTALLATION ET CONFIGURATION DE MARIADB TERMINEE ="
            echo "====================================================="

            # Appel de la fonction de création de l'utilisateur
            user_creation

            # Appel de la fonction de création de la base de données
            database_creation

        else

            echo ""
            echo "Fermeture du script."

        fi

    fi

}

#============================================
# 04 - CREATION UTILISATEURS
#============================================
function user_creation() {

    randomPassword=$(</dev/urandom tr -dc _A-Z-a-z-0-9 | head -c16)

    echo ""
    read -p "Souhaitez-vous créer l'utilisateur $arg1 ? [Y/N] " createUser

    if [ "$createUser" = "y" ]; then

        sudo mysql -u root -e "CREATE USER '$arg1'@'localhost' IDENTIFIED BY '$randomPassword'"
        sudo mysql -u root -e "GRANT ALL PRIVILEGES ON $arg1.* TO '$arg1'@'localhost'"

    fi

}

#============================================
# 05 - CREATION BASE DE DONNEES
#============================================
function database_creation() {

    echo ""
    read -p "Souhaitez-vous créer la base de donnée $arg1 ? [Y/N] " createDatabase

    if [ "$createDatabase" = "y" ]; then

        # Création de la base de données
        sudo mysql -u root -e "CREATE DATABASE $arg1;"

    else

        echo "Fermeture du script."

    fi

}

#============================================
# 06 - AFFICHAGE RESUME ACTIONS
#============================================
function show_configuration() {

    # Affichage du l'utilisateur créé
    echo ""
    echo "Utilisateur : $arg1"
    echo "Mot de passe = $randomPassword"

    # Affichage de la base de donnée créé
    echo "Base de données : $arg1"
    echo ""

    # Affichage des tableaux avec les commandes mysql
    echo "====================================================="
    echo "========= AFFICHAGE DES NOUVEAUX ELEMENTS ==========="
    echo "====================================================="
    echo ""
    sudo mysql -u root -e "SELECT User, Host FROM mysql.user;"
    sudo mysql -u root -e "SHOW DATABASES;"

}

#============================================
# 07 - EXECUTION DU SCRIPT
#============================================
apt_update
mariadb_installation
show_configuration
