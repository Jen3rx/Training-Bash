# J'affiche le texte "Bienvenue, veuillez inscrire votre identifiant et votre mot de passe".
echo "Bienvenue, veuillez inscrire votre identifiant et votre mot de passe."

# J'affiche le texte "Identifiant" et récupère la variable "IDENTIFIANT" à l'aide de read -p.
read -p "Identifiant: " IDENTIFIANT

# J'affiche le texte "Mot de passe: " et récupère la variable "MOT_DE_PASSE" à l'aide de read -p.
read -p "Mot de passe: " MOT_DE_PASSE

    # Je crée ma fonction que je nomme "INSCRIPTION".
    function INSCRIPTION () {
    
    # Je crée ma variable "MOT_DE_PASSE" que je met en local et ajoute la valeure paramètre 1.
    local MOT_DE_PASSE=$1

    # Je crée ma variable "IDENTIFIANT" que je met en local et ajoute la valeure paramètre 2.
    local IDENTIFIANT=$2

    # J'affiche le texte "Bonjour $IDENTIFIANT veuillez comfirmer votre mot de passe: " et récupère la variable "INSCRIPTION" à l'aide de read -p.
    read -p "Bonjour $IDENTIFIANT veuillez comfirmer votre mot de passe: " INSCRIPTION 

    # Je crée ma boucle while avec la condition que si la variable "MOT_DE_PASSE" n'est pas égal à "INSCRIPTION" alors.
    while [ "$MOT_DE_PASSE" != "$INSCRIPTION" ]

    # Mot clé: do
    do

        # J'affiche le texte "Mauvais mot de passe: " et récupère la variable "INSCRIPTION" à l'aide de read -p.
        read -p "Mauvais mot de passe: " INSCRIPTION

    # Mot clé: done
    done

        # J'affiche le texte "Inscription réussite avec succès! :)". 
        echo "Inscription réussite avec succès! :)"

}

# J'appelle ma fonction et met les variables en paramètre.
INSCRIPTION "$MOT_DE_PASSE" "$IDENTIFIANT"

    # Je crée ma fonction que je nomme "CONNEXION".
    function CONNEXION () {

    # Je crée ma variable MOT_DE_PASSE que je met en local avec la valeure paramètre 1.
    local MOT_DE_PASSE=$1

    # J'affiche le texte "Veuillez maintenant vous connecter à l'aide de votre mot de passe: " et récupère la variable "CONNEXION" à l'aide de read -p.
    read -p "Veuillez maintenant vous connecter à l'aide de votre mot de passe: " CONNEXION

    # Je crée ma boucle "while" avec la condition que si la variable "CONNEXION" n'est pas égal à la variable "MOT_DE_PASSE" alors.
    while [ "$CONNEXION" != "$MOT_DE_PASSE" ]

    # Mot clé: do
    do

        # J'affiche le texte "Mauvais mot de passe: " et récupère la variable "CONNEXION" à l'aide de read -p.
        read -p "Mauvais mot de passe: " CONNEXION

    # Mot clé: done
    done

    # J'affiche le texte"Connexion réussite avec succès :)"
    echo "Connexion réussite avec succès! :)"
}

# J'appelle ma fonction et précise la variable "MOT_DE_PASSE" en paramètre.
CONNEXION "$MOT_DE_PASSE"