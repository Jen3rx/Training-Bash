# Je crée ma fonction que je nomme "VERIFICATION_USER".
function VERIFICATION_USER () {

# Je crée ma variable "UTTILISATEUR" avec comme valeure "/etc/group" .
UTTILISATEUR=$(cat /etc/passwd | cut -d: -f1)

# Je crée ma variable "USER_EXIST" avec la valeure "false".
USER_EXIST=false
    
    # Je crée ma boucle "for".
    for i in $UTTILISATEUR

        # Mot clé: do
        do 

            # Je crée ma condition que si la variable "NAME" n'est pas égal à la variable "i" alors.
            if [ "${NAME}" = "${i}" ]

                # Mot clé: then
                then 

                    # JE crée ma variable "USER_EXIST" avec comme valeur "true".
                    USER_EXIST=true

                    # J'affiche le texte "L'uttilisateur ${NAME} existe :)"
                    echo "L'uttilisateur ${NAME} existe :)"

                    # Je stoppe.
                    break

            # Mot clé: fi
            fi

        # Mot clé: done
        done
            
            # Je crée ma condition que si la variable "USER_EXIST" est égal à la valeur "false" alors.
            if [ "${USER_EXIST}" = "false" ]

                # Mot clé: then
                then 

                # J'affiche le texte "Cette uttilisateur semble ne pas exister :(".
                echo "Cette uttilisateur semble ne pas exister :("

            # Mot clé: fi
            fi
}

# J'affiche le texte "Donnez moi le nom d'un utilisateur: " et récupère la variable "NAME" à l'aide de read -p.
read -p "Donnez moi le nom d'un utilisateur: " NAME

# J'appelle ma fonction.
VERIFICATION_USER

# cat /etc/passwd | cut -d: -f1