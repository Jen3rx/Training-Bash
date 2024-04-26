echo "Bienvenue, veuillez inscrire votre identifiant et votre mot de passe."

read -p "Identifiant: " IDENTIFIANT
read -p "Mot de passe: " MOT_DE_PASSE

    function INSCRIPTION () {

    local MOT_DE_PASSE=$1
    local IDENTIFIANT=$2

    read -p "Bonjour $IDENTIFIANT veuillez comfirmer votre mot de passe: " INSCRIPTION 
    while [ "$MOT_DE_PASSE" != "$INSCRIPTION" ]
    do
        read -p "Mauvais mot de passe: " INSCRIPTION
    done
        echo "Inscription réussite avec succès! :)"

}

INSCRIPTION "$MOT_DE_PASSE" "$IDENTIFIANT"

    function CONNEXION () {

    local MOT_DE_PASSE=$1

    read -p "Veuillez maintenant vous connecter à l'aide de votre mot de passe: " CONNEXION
    while [ "$CONNEXION" != "$MOT_DE_PASSE" ]
    do
        read -p "Mauvais mot de passe: " CONNEXION
    done
        echo "Connexion réussite avec succès! :)"
}

CONNEXION "$MOT_DE_PASSE"