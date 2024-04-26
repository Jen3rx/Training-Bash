function VERIFICATION_GROUP () {

GROUPE=$(cat /etc/group | cut -d: -f1)
GROUP_EXIST=false
    for i in $GROUPE
        do 
            if [ "${NAME}" = "${i}" ]
                then 
                    GROUP_EXIST=true
                    echo "Le groupe ${NAME} existe :)"
                    break
            fi
        done
            
            if [ "${GROUP_EXIST}" = "false" ]
                then 
                echo "Ce groupe semble ne pas exister :("
            fi
}

read -p "Donnez moi le nom d'un groupe: " NAME

VERIFICATION_GROUP

# cat /etc/group | cut -d: -f1