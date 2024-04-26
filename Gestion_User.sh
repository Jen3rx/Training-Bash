function VERIFICATION_USER () {
    UTTILISATEUR=$(cat /etc/passwd | cut -d: -f1)
    USER_EXIST=false
    for i in $UTTILISATEUR
        do 
            if [ "${NAME}" = "${i}" ]
                then 
                    USER_EXIST=true
                    echo "L'utilisateur ${NAME} existe déjà."
                    return 1
            fi
        done
            
            if [ "${USER_EXIST}" = "false" ]
                then 
                echo "Cette utilisateur semble ne pas exister."
            fi

        return 0

}

function OPTION_USER () {

    while [ "${CHOICE}" -ne "1" ] && [ "${CHOICE}" -ne "2" ]
        do
            read -p "Veuillez écrire le chiffre 1 ou 2: " CHOICE
        done

case $CHOICE in
    1)
        read -p "Entrez le nom du nouvel utilisateur que vous voulez créer: " NAME
        VERIFICATION_USER ${NAME}
        
        if [ $? -eq 0 ]
            then
                sudo useradd ${NAME}
                echo "Utilisateur ${NAME} a été créé avec succès !"
        fi
        ;;
    2)
        read -p "Entrez le nom d'utilisateur que vous voulez supprimer: " NAME
        VERIFICATION_USER ${NAME}
        sudo userdel -r ${NAME}
        echo "Utilisateur ${NAME} a été supprimé avec succès !"
        ;;
    *)
        echo "Veuillez entrer un chiffre entre 1 et 2."
        ;;
esac
}

echo "Veuillez entrer un numéro selon l'action que vous vous souhaitez faire."
echo " "
echo "1.   Création d'un utilisateur"
echo "2.   Suppression d'un utilisateur"
echo " "
read -p "Choix: " CHOICE

OPTION_USER

# cat /etc/passwd | cut -d: -f1