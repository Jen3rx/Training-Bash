# Je crée ma fonction que je nomme "VERIFICATION_GROUP".
function VERIFICATION_GROUP () {

# Je crée ma variable "GROUPE" avec comme valeure "/etc/group" .
GROUPE=$(cat /etc/group | cut -d: -f1)

# Je crée ma variable "GROUP_EXIST" avec la valeure "false".
GROUP_EXIST=false

    # Je crée ma boucle "for".
    for i in $GROUPE

        # Mot clé: do
        do 

            # Je crée ma condition que si la variable "NAME" n'est pas égal à la variable "i" alors.
            if [ "${NAME}" = "${i}" ]

                # Mot clé: then
                then 

                    # JE crée ma variable "GROUP_EXIST" avec comme valeur "true".
                    GROUP_EXIST=true

                    # J'affiche le texte "Le groupe ${NAME} existe :)".
                    echo "Le groupe ${NAME} existe :)"

                    # Je stoppe.
                    break

            # Mot clé: fi
            fi

        # Mot clé: done
        done
            
            # Je crée ma condition que si la variable "GROUP_EXIST" est égal à la valeur "false" alors.
            if [ "${GROUP_EXIST}" = "false" ]

                # Mot clé: then
                then 

                # J'affiche le texte "Ce groupe semble ne pas exister :(". 
                echo "Ce groupe semble ne pas exister :("

            # Mot clé: fi
            fi
}

# J'affiche le texte "Donnez moi le nom d'un groupe: " et récupère la variable "NAME" à l'aide de read -p.
read -p "Donnez moi le nom d'un groupe: " NAME

# J'appelle ma fonction.
VERIFICATION_GROUP

# cat /etc/group | cut -d: -f1