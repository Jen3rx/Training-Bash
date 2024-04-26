function VERIFICATION_USER () {

UTTILISATEUR=$(cat /etc/passwd | cut -d: -f1)
USER_EXIST=false
    for i in $UTTILISATEUR
        do 
            if [ "${NAME}" = "${i}" ]
                then 
                    USER_EXIST=true
                    echo "L'uttilisateur ${NAME} existe :)"
                    break
            fi
        done
            
            if [ "${USER_EXIST}" = "false" ]
                then 
                echo "Cette uttilisateur semble ne pas exister :("
            fi
}

read -p "Donnez moi le nom d'un utilisateur: " NAME

VERIFICATION_USER

# cat /etc/passwd | cut -d: -f1