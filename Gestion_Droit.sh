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

function OPTION_FILE () {
    read -p "veuillez changer l'utilisateur: " USER_CHANGE
    if [ $? -eq 0 ]
    then
        sudo chown ${USER_CHANGE} ${NAME}
        echo "Voici le nouveau nom d'utilisateur: ${USER_CHANGE}"

        echo " "

        read -p "veuillez changer le groupe: " GROUP_CHANGE
        sudo chgrp ${GROUP_CHANGE} ${NAME}
        echo "Voici le nouveau nom de groupe: ${USER_CHANGE}"
    fi
}

read -p "Entrez le nom du fichier que vous souhaitez changer l'utilisateur et groupe: " NAME

VERIFICATION_FILE || exit 1
OPTION_FILE
