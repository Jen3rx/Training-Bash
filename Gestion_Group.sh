function VERIFICATION_GROUP () {

GROUPE=$(cat /etc/group | cut -d: -f1)
GROUP_EXIST=false
    for i in $GROUPE
        do 
            if [ "${NAME}" = "${i}" ]
                then 
                    GROUP_EXIST=true
                    echo "Le groupe ${NAME} existe déjà."
                    return 1
            fi
        done
            
            if [ "${GROUP_EXIST}" = "false" ]
                then 
                echo "Ce groupe semble ne pas exister."
            fi
            return 0
}

function OPTION_GROUP () {

    while [ "${CHOICE}" -ne "1" ] && [ "${CHOICE}" -ne "2" ]
        do
            read -p "Veuillez écrire le chiffre 1 ou 2: " CHOICE
        done

case $CHOICE in
    1)
        read -p "Entrez le nom du nouveau groupe que vous voulez créer: " NAME
        VERIFICATION_GROUP ${NAME}
        
        if [ $? -eq 0 ]
            then
                sudo groupadd ${NAME}
                echo "Groupe ${NAME} a été créé avec succès !"
        fi
        ;;
    2)
        read -p "Entrez le nom du groupe que vous voulez supprimer: " NAME
        VERIFICATION_GROUP ${NAME}
        sudo groupdel ${NAME}
        echo "Le groupe ${NAME} a été supprimé avec succès !"
        ;;
    *)
        echo "Veuillez entrer un chiffre entre 1 et 2."
        ;;
esac
}

echo "Veuillez entrer un numéro selon l'action que vous vous souhaitez faire."
echo " "
echo "1.   Création d'un groupe"
echo "2.   Suppression d'un groupe"
echo " "
read -p "Choix: " CHOICE

OPTION_GROUP

# cat /etc/group | cut -d: -f1