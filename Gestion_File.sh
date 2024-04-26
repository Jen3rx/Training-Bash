function VERIFICATION_FILE () {

FICHIER=$(ls '/mnt/c/Users/sthioul/Desktop/Note_language_info/Note_Bash/Script_entrainement' | cut -d: -f1)

FILE_EXIST=false
    for i in $FICHIER
        do 
            if [ "${NAME}" = "${i}" ]
                then 
                    FILE_EXIST=true
                    echo "Le fichier ${NAME} existe déjà."
                    return 1
            fi
        done
            
            if [ "${FILE_EXIST}" = "false" ]
                then 
                echo "Ce fichier semble ne pas exister."
            fi
            return 0
}

function OPTION_FILE () {

    while [ "${CHOICE}" -ne "1" ] && [ "${CHOICE}" -ne "2" ]
        do
            read -p "Veuillez écrire le chiffre 1 ou 2: " CHOICE
        done

case $CHOICE in
    1)
        read -p "Entrez le nom du nouveau fichier que vous voulez créer: " NAME
        VERIFICATION_FILE ${NAME}
        
        if [ $? -eq 0 ]
            then
                sudo touch ${NAME}
                echo "Fichier ${NAME} a été créé avec succès !"
        fi
        ;;
    2)
        read -p "Entrez le nom du fichier que vous voulez supprimer: " NAME
        VERIFICATION_FILE ${NAME}
        sudo rm ${NAME}
        echo "Le fichier ${NAME} a été supprimé avec succès !"
        ;;
    *)
        echo "Veuillez entrer un chiffre entre 1 et 2."
        ;;
esac
}


echo "Veuillez entrer un numéro selon l'action que vous vous souhaitez faire."
echo " "
echo "1.   Création d'un fichier"
echo "2.   Suppression d'un fichier"
echo " "
read -p "Choix: " CHOICE

OPTION_FILE