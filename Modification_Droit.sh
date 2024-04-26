function VERIFICATION_FILE () {
    FICHIER=$(ls '/mnt/c/Users/sthioul/Desktop/Note_language_info/Note_Bash/Script_entrainement' | cut -d: -f1)

    FILE_EXIST=false
    for i in $FICHIER
    do 
        if [ "${NAME}" = "${i}" ]
        then 
            FILE_EXIST=true
            echo "Le fichier ${NAME} existe."
            return 0
        fi
    done
            
    if [ "${FILE_EXIST}" = "false" ]
    then 
        echo "Ce fichier semble ne pas exister."
        exit 1
    fi
    return 0
}

function OPTION_RIGHT () {

    read -p "Quels sont les nouveaux droits à appliquer pour le propriétaire ? (r pour lecture, w pour écriture, x pour exécution) :" OWNER_RIGHTS
    sudo chmod u+${OWNER_RIGHTS} ${NAME}
    
    read -p "Quels sont les nouveaux droits à appliquer pour le groupe ? (r pour lecture, w pour écriture, x pour exécution) :" GROUP_RIGHTS
    sudo chmod g+${GROUP_RIGHTS} ${NAME}

    read -p "Quels sont les nouveaux droits à appliquer pour les autres utilisateurs ? (r pour lecture, w pour écriture, x pour exécution) :" OTHERS_RIGHTS
    sudo chmod o+${OTHERS_RIGHTS} ${NAME}
}

read -p "Entrez le nom du fichier que vous souhaitez changer les droits: " NAME

VERIFICATION_FILE || exit 1
OPTION_RIGHT
