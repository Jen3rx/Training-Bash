# Je crée ma fonction que je nomme "VERIFICATION_FILE".
function VERIFICATION_FILE () {

    # Je crée ma variable "FICHIER" en lui donnant la valeure "/mnt/c/Users/sthioul/Desktop/Note_language_info/Note_Bash/Script_entrainement" et uttilise la commande "cut".
    FICHIER=$(ls '/mnt/c/Users/sthioul/Desktop/Note_language_info/Note_Bash/Script_entrainement' | cut -d: -f1)

    # Je crée une variable en lui donnant la valeure "false".
    FILE_EXIST=false

    # Je crée ma boucle "for".
    for i in $FICHIER

    # Mot clé: do
    do 
        # Je crée ma condition que si la variable "NAME" est égal à "i" alors.
        if [ "${NAME}" = "${i}" ]

        # Mot cle: then
        then 

            # J'update la variable "FILE_EXIST" en lui ajoutant la valeure "true".
            FILE_EXIST=true

            # J'affiche le texte "Le fichier ${NAME} existe".
            echo "Le fichier ${NAME} existe."

            # Je retourne 0.
            return 0

        # Mot clé: fi
        fi
    
    # Mot clé: done
    done
    
    # Je crée ma condition que si la variable "FILE_EXIST" est égal à la valeure "false" alors.
    if [ "${FILE_EXIST}" = "false" ]

    # Mot clé: then
    then 

        # J'affiche le texte "Ce fichier semble ne pas exister".
        echo "Ce fichier semble ne pas exister."

        # J'exit 1.
        exit 1

    # Mot clé: fi
    fi

    # Je retourne 0.
    return 0
}

# Je crée ma fonction que je nomme "OPTION_RIGHT".
function OPTION_RIGHT () {

    # J'affiche le texte "Quels sont les nouveaux droits à appliquer pour le propriétaire ? (r pour lecture, w pour écriture, x pour exécution) :" et récupère la variable OWNER_RIGHTS à l'aide "de read-p".
    read -p "Quels sont les nouveaux droits à appliquer pour le propriétaire ? (r pour lecture, w pour écriture, x pour exécution) :" OWNER_RIGHTS

    # Je crée ma commande bash pour le changement de droit avec la variable que j'ai récupéré juste avant et le nom du fichier grâce à la variable "NAME".
    sudo chmod u+${OWNER_RIGHTS} ${NAME}
    
    # J'affiche le texte "Quels sont les nouveaux droits à appliquer pour le propriétaire ? (r pour lecture, w pour écriture, x pour exécution) :" et récupère la variable GROUP_RIGHTS à l'aide "de read-p".
    read -p "Quels sont les nouveaux droits à appliquer pour le groupe ? (r pour lecture, w pour écriture, x pour exécution) :" GROUP_RIGHTS

    # Je crée ma commande bash pour le changement de droit avec la variable que j'ai récupéré juste avant et le nom du fichier grâce à la variable "NAME".
    sudo chmod g+${GROUP_RIGHTS} ${NAME}

    # J'affiche le texte "Quels sont les nouveaux droits à appliquer pour le propriétaire ? (r pour lecture, w pour écriture, x pour exécution) :" et récupère la variable OTHERS_RIGHTS à l'aide "de read-p".
    read -p "Quels sont les nouveaux droits à appliquer pour les autres utilisateurs ? (r pour lecture, w pour écriture, x pour exécution) :" OTHERS_RIGHTS

    # Je crée ma commande bash pour le changement de droit avec la variable que j'ai récupéré juste avant et le nom du fichier grâce à la variable "NAME".
    sudo chmod o+${OTHERS_RIGHTS} ${NAME}
}

# j'affiche le texte "Entrez le nom du fichier que vous souhaitez changer les droits: " et récupère la variable "NAME" à l'aide de read -p.
read -p "Entrez le nom du fichier que vous souhaitez changer les droits: " NAME

# J'appelle ma fonction ou j'exit 1.
VERIFICATION_FILE || exit 1

# J'appelle ma fonction.
OPTION_RIGHT
