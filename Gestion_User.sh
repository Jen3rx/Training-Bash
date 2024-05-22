# Je crée ma fonction que je nomme "VERIFICATION_USER".
function VERIFICATION_USER () {

    # Je crée la variable "UTTILISATEUR" avec la valeure /etc/passwd.
    UTTILISATEUR=$(cat /etc/passwd | cut -d: -f1)

    # Je crée ma variable "USER_EXIST" avec la valeure "false".
    USER_EXIST=false

    # Je crée ma boucle "for".
    for i in $UTTILISATEUR

        # Mot clé: do
        do 

            # Je crée ma condition que si la variable "NAME" n'est pas égal à la variable "i" alors. 
            if [ "${NAME}" = "${i}" ]

                # Mot clé: then
                then 

                    # J'update la variable "USER_EXIST" en lui ajoutant la valeure "true".
                    USER_EXIST=true

                    # J'affiche le texte "L'utilisateur ${NAME} existe déjà.".
                    echo "L'utilisateur ${NAME} existe déjà."

                    # Je retourne 1.
                    return 1
            
            # Mot clé: fi
            fi

        # Mot clé: done
        done
            
            # Je crée la condition que si la variable "USER_EXIST" est égal à la valeure "false" alors.
            if [ "${USER_EXIST}" = "false" ]

                # Mot clé: then
                then 

                # J'affiche le texte "Cette utilisateur semble ne pas exister".
                echo "Cette utilisateur semble ne pas exister."

                # Mot clé: fi
            fi

        # Je retourne 0
        return 0

}

# Je crée ma fonction que je nomme "OPTION_USER".
function OPTION_USER () {

    # Je crée ma boucle "while" avec la condition que si la variable "CHOICE" n'est pas égal à 1 ou pas égal à 2 alors.
    while [ "${CHOICE}" -ne "1" ] && [ "${CHOICE}" -ne "2" ]

        # Mot clé: do
        do

            # J'affiche le texte "Veuillez écrire le chiffre 1 ou 2: " et récupère la variable "CHOICE" à l'aide de read-p. 
            read -p "Veuillez écrire le chiffre 1 ou 2: " CHOICE

        # Mot clé: done
        done

# Je crée ma condition "case" avec la variable "CHOICE".
case $CHOICE in

    # n1
    1)

        # J'affiche le texte "Entrez le nom du nouvel utilisateur que vous voulez créer: " et récupère la variable "NAME" à l'aide de read -p.
        read -p "Entrez le nom du nouvel utilisateur que vous voulez créer: " NAME

        # J'appelle la fonction "VERIFICATION_USER" avec comme paramètre la variable "NAME".
        VERIFICATION_USER ${NAME}
        
        # Je crée ma condition que si le retour est égal à 0 alors.
        if [ $? -eq 0 ]

            # Mot clé: then
            then

                # Je met en application la commande bash nécessaire.
                sudo useradd ${NAME}

                # J'affiche la phrase "Utilisateur ${NAME} a été créé avec succès !" avec la valeure de la variable ${NAME}.
                echo "Utilisateur ${NAME} a été créé avec succès !"
        
        # Mot clé: fi
        fi
        ;;

    # n2
    2)

        # J'affiche le texte "Entrez le nom d'utilisateur que vous voulez supprimer: " et récupère la variable "NAME" à l'aide de read -p.
        read -p "Entrez le nom d'utilisateur que vous voulez supprimer: " NAME

        # J'appelle ma fonction "VERIFICATION_USER" avec comme paramètre la variable "NAME".
        VERIFICATION_USER ${NAME}

        # Je met en application la commande bash nécessaire.
        sudo userdel -r ${NAME}

        # J'affiche la phrase "Utilisateur ${NAME} a été supprimé avec succès !" avec la valeure de la variable "NAME".
        echo "Utilisateur ${NAME} a été supprimé avec succès !"
        ;;

    # Possibilité autre que 1 ou 2
    *)

        # J'affiche la phrase "Veuillez entrer un chiffre entre 1 et 2".
        echo "Veuillez entrer un chiffre entre 1 et 2."
        ;;

# Mot clé: esac
esac
}

# J'affiche la phrase "Veuillez entrer un numéro selon l'action que vous souhaitez faire".
echo "Veuillez entrer un numéro selon l'action que vous souhaitez faire."

# J'affiche la phrase " ".
echo " "

# J'affiche la phrase "1.   Création d'un utilisateur".
echo "1.   Création d'un utilisateur"

# J'affiche la phrase "2.   Suppression d'un utilisateur". 
echo "2.   Suppression d'un utilisateur"

# J'affiche la phrase " ".
echo " "

# J'affiche la phrase "Choix: " et récupère la variable "CHOICE" à l'aide de read -p.
read -p "Choix: " CHOICE

# J'appelle ma fonction.
OPTION_USER

# cat /etc/passwd | cut -d: -f1