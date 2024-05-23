# Je crée ma fonction que je nomme "VERIFICATION_GROUP".
function VERIFICATION_GROUP () {

 # Je crée une variable en lui donnat comme valeure "/etc/group"
GROUPE=$(cat /etc/group | cut -d: -f1)

# Je crée une variable avec la valeur "false"
GROUP_EXIST=false

# Je crée ma boucle for pour tout ce qui est dans la variable "GROUPE".
    for i in $GROUPE

        # Mot clé: do
        do 

            # Je crée ma condition que si ma variable "NAME" est é gal à "i" alors
            if [ "${NAME}" = "${i}" ]

                # Mot clé: then
                then 

                    # Je crée ma variable avec la valeur "true"
                    GROUP_EXIST=true

                    # J'affiche la phrase "Le groupe ${NAME} existe déjà."
                    echo "Le groupe ${NAME} existe déjà."

                    # Je retourne 1
                    return 1

            # Mot clé: fi
            fi

        # Mot clé: done
        done
            
            # Je crée ma condition que si la variable "GROUP_EXIST" est égal à "false" alors
            if [ "${GROUP_EXIST}" = "false" ]

                # Mot clé: then
                then 

                # J'affiche la phrase "Ce groupe semble ne pas exister."
                echo "Ce groupe semble ne pas exister."

            # Mot clé: fi
            fi

            # Je retourne 0
            return 0
}

# Je crée ma fonction que je nomme "OPTION_GROUP"
function OPTION_GROUP () {

    # Je crée ma boucle "while" avec la condition que si la variable "CHOICE" n'est pas égal à 1 ou n'est pas égal à 2 alors
    while [ "${CHOICE}" -ne "1" ] && [ "${CHOICE}" -ne "2" ]

        # Mot clé: do
        do

            # J'affiche la phrase "Veuillez écrire le chiffre 1 ou 2: " et récupère la variable "CHOICE" à l'ade de read -p 
            read -p "Veuillez écrire le chiffre 1 ou 2: " CHOICE

        # Mot clé: done
        done

# Je crée ma condition "case" avec la variable "CHOICE"
case $CHOICE in

    # N1
    1)

        # J'affiche la phrase "Entrez le nom du nouveau groupe que vous voulez créer: " et récupère la variable "NAME" à l'ade de read -p 
        read -p "Entrez le nom du nouveau groupe que vous voulez créer: " NAME

        # J'appelle ma foncion
        VERIFICATION_GROUP ${NAME}
        
        # Je crée ma condition "if" avec comme condition que si le retour est égal à 0 alors
        if [ $? -eq 0 ]

            # Mot clé: then
            then

                # J'uttilise la commande bash nécessaire
                sudo groupadd ${NAME}

                # J'affiche la phrase "Groupe ${NAME} a été créé avec succès !"
                echo "Groupe ${NAME} a été créé avec succès !"

        # Mot clé: fi
        fi
        ;;

    # N2
    2)

        # J'affiche la phrase "Entrez le nom du groupe que vous voulez supprimer: " et récupère la variable "NAME" à l'aide de read -p
        read -p "Entrez le nom du groupe que vous voulez supprimer: " NAME

        # J'appelle ma fonction
        VERIFICATION_GROUP ${NAME}

        # J'uttilise la commande bash nécessaire
        sudo groupdel ${NAME}

        # J'affiche la phrase "Le groupe ${NAME} a été supprimé avec succès !"
        echo "Le groupe ${NAME} a été supprimé avec succès !"
        ;;

    # autre
    *)

        # J'affiche la phrase "Veuillez entrer un chiffre entre 1 et 2."
        echo "Veuillez entrer un chiffre entre 1 et 2."
        ;;

# Mot clé: esac
esac
}

# J'affiche la phrase "Veuillez entrer un numéro selon l'action que vous vous souhaitez faire."
echo "Veuillez entrer un numéro selon l'action que vous vous souhaitez faire."

# J'affiche la phrase " "
echo " "

# J'affiche la phrase "1.   Création d'un groupe"
echo "1.   Création d'un groupe"

# J'affiche la phrase "2.   Suppression d'un groupe"
echo "2.   Suppression d'un groupe"

# J'affiche la phrase " "
echo " "

# J'affiche la phrase "Choix: " et récupère la variable "CHOICE" à l'aide de read -p
read -p "Choix: " CHOICE

# J'appelle ma fonction
OPTION_GROUP

# cat /etc/group | cut -d: -f1