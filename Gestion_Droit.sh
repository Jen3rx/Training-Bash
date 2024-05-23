# Je crée ma fonction que je nomme "VERIFICATION_FILE".
function VERIFICATION_FILE () {

    # Je crée une variable en lui donnat comme valeure "/mnt/c/Users/sthioul/Desktop/Note_language_info/Note_Bash/Script_entrainement"
    FICHIER=$(ls '/mnt/c/Users/sthioul/Desktop/Note_language_info/Note_Bash/Script_entrainement' | cut -d: -f1)

    # Je crée une variable avec la valeur "false"
    FILE_EXIST=false

    # Je crée ma boucle for pour tout ce qui est dans la variable "FICHIER".
    for i in $FICHIER

    # Mot clé: do
    do

        # Je crée ma condition que si ma variable "NAME" est égal à "i" alors
        if [ "${NAME}" = "${i}" ]

        # Mot clé: then
        then 

            # Je crée ma variable avec la valeur "true"
            FILE_EXIST=true

            # J'affiche la phrase "Le fichier ${NAME} existe." 
            echo "Le fichier ${NAME} existe."

            # Je retourne 0
            return 0

        # Mot clé: fi
        fi

    # Mot clé: done
    done
            
    # Je crée ma condition que si la variable "FILE_EXIST" est égal à "false" alors
    if [ "${FILE_EXIST}" = "false" ]

    # Mot clé: then
    then 

        # J'affiche la phrase "Ce fichier semble ne pas exister." 
        echo "Ce fichier semble ne pas exister."

        # Je sors 1
        exit 1

    # Mot clé: fi
    fi

    # Je retourne 0
    return 0
}

# Je crée ma fonction que je nomme "OPTION_FILE"
function OPTION_FILE () {

    # J'affiche la phrase "veuillez changer l'utilisateur: " et récupère la variable "USER_CHANGE" à l'aide de read -p 
    read -p "veuillez changer l'utilisateur: " USER_CHANGE

    # Je crée ma condition que si le retour est égal à 0 alors
    if [ $? -eq 0 ]

    # Mot clé: then
    then

        # Je met en pratique la commande bash nécessaire
        sudo chown ${USER_CHANGE} ${NAME}

        # J'affiche la phrase "Voici le nouveau nom d'utilisateur: ${USER_CHANGE}" 
        echo "Voici le nouveau nom d'utilisateur: ${USER_CHANGE}"

        # J'affiche la phrase " " 
        echo " "

        # J'affiche la phrase "veuillez changer le groupe: " et récupère la variable "GROUP_CHANGE" à l'ade de read -p 
        read -p "veuillez changer le groupe: " GROUP_CHANGE

        # Je met en pratique la commande bash nécessaire
        sudo chgrp ${GROUP_CHANGE} ${NAME}

        # J'affiche la phrase "Voici le nouveau nom de groupe: ${USER_CHANGE}"
        echo "Voici le nouveau nom de groupe: ${USER_CHANGE}"

    # Mot clé: fi
    fi
}

# J'affiche la phrase "Entrez le nom du fichier que vous souhaitez changer l'utilisateur et groupe: " et récupère la variable "NAME" à l'aide de read -p
read -p "Entrez le nom du fichier que vous souhaitez changer l'utilisateur et groupe: " NAME

# J'appelle ma fonction ou je sors 1
VERIFICATION_FILE || exit 1

# J'appelle ma fonction
OPTION_FILE
