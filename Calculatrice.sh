    # Je crée ma fonction que je nomme "ADDITION".    
    function ADDITION () {

    # Je crée une variable "RESULTAT_ADDITION"
    # "expr" me permet de faire comprendre au script que je fais une opération mathématique.
    RESULTAT_ADDITION=`expr ${CHIFFRE} + ${CHIFFRE2}`

    # J'affiche le résultat en appelant la variable "RESULTAT_ADDITION".
    echo "Resultat: $RESULTAT_ADDITION"
}

    # Je crée ma fonction que je nomme "SOUSTRACTION".    
    function SOUSTRACTION () {

    # Je crée une variable "RESULTAT_SOUSTRACTION"
    # "expr" me permet de faire comprendre au script que je fais une opération mathématique.
    RESULTAT_SOUSTRACTION=`expr ${CHIFFRE} - ${CHIFFRE2}`

    # J'affiche le résultat en appelant la variable "RESULTAT_SOUSTRACTION".
    echo "Resultat: $RESULTAT_SOUSTRACTION"
}

    # Je crée ma fonction que je nomme "MULTIPLICATION".    
    function MULTIPLICATION () {

    # Je crée une variable "RESULTAT_MULTIPLICATION"
    # "expr" me permet de faire comprendre au script que je fais une opération mathématique.
    RESULTAT_MULTIPLICATION=`expr ${CHIFFRE} \* ${CHIFFRE2}`

    # J'affiche le résultat en appelant la variable "RESULTAT_MULTIPLICATION".
    echo "Resultat: $RESULTAT_MULTIPLICATION"
}

    # Je crée ma fonction que je nomme "DIVISION".    
    function DIVISION () {

    # Je crée un condition dans laquelle je dis que si la variable "CHIFFRE2"  est égal à 0 alors j'imprime la réponse "Erreur".
    if [ $CHIFFRE2 -eq 0 ] 

    # Mot clé: then
    then

        # J'affiche la phrase "Erreur: Division par zéro!
        echo "Erreur: Division par zéro!"

    # Sinon je crée une variable "RESULTAT_DIVISION"
    else

        # "expr" me permet de faire comprendre au script que je fais une opération mathématique.
        RESULTAT_DIVISION=`expr ${CHIFFRE} / ${CHIFFRE2}`

        # J'affiche le résultat en appelant la variable "RESULTAT_DIVISION".
        echo "Résultat: $RESULTAT_DIVISION"

    # Mot clé: fi
    fi
}

# J'affiche la phrase "Voici une calculatrice".
echo "Voici une calculatrice."

# Je récupère la variable "ENTRER_UTTILISATEUR" à l'aide de "read -p".
read -p "Choisi l'opération que tu souhaites faire: A = Addition / B = Soustraction / C = Multiplication / D = Division. " ENTRER_UTTILISATEUR

# Je crée une condition qui dit que si la variable "ENTRER_UTTILISATEUR" est égal à "A" alors je passe au reste.
if [ "$ENTRER_UTTILISATEUR" = "A" ]

# Mot clé: then
then

    #J'affiche le texte "Addition".
    echo "Addition:"

    # J'affiche le texte "Donne moi un chiffre: " et récupère la variable "CHIFFRE" à l'aide de read -p.
    read -p "Donne moi un chiffre: " CHIFFRE

    # J'affiche le texte "Donne moi un chiffre: " et récupère la variable "CHIFFRE2" à l'aide de read -p.
    read -p "Donne moi un chiffre: " CHIFFRE2

# J'appelle ma fonction.
    ADDITION

# Je crée une condition qui dit que si la variable "ENTRER_UTTILISATEUR" est égal à "B" alors je passe au reste.
elif [ "$ENTRER_UTTILISATEUR" = "B" ]

# Mot clé: then
then

    #J'affiche le texte "Soustraction".
    echo "Soustraction:"

    # Je récupère la variable "CHIFFRE" à l'aide de "read -p".
    read -p "Donne moi un chiffre: " CHIFFRE

    # Je récupère la variable "CHIFFRE2" à l'aide de "read -p".
    read -p "Donne moi un chiffre: " CHIFFRE2

    # J'appelle ma fonction.
    SOUSTRACTION

# Je crée une condition qui dit que si la variable "ENTRER_UTTILISATEUR" est égal à "C" alors je passe au reste.
elif [ "$ENTRER_UTTILISATEUR" = "C" ]

# Mot clé: then
then

    #J'affiche le texte "Multiplication".
    echo "Multiplication:"

    # Je récupère la variable "CHIFFRE" à l'aide de "read -p".
    read -p "Donne moi un chiffre: " CHIFFRE

    # Je récupère la variable "CHIFFRE2" à l'aide de "read -p".
    read -p "Donne moi un chiffre: " CHIFFRE2

    # J'appelle ma fonction.
    MULTIPLICATION 

# Je crée une condition qui dit que si la variable "ENTRER_UTTILISATEUR" est égal à "D" alors je passe au reste.
elif [ "$ENTRER_UTTILISATEUR" = "D" ]

# Mot clé: then
then
    #J'affiche le texte "Division".
    echo "Division:"

    # Je récupère la variable "CHIFFRE" à l'aide de "read -p".
    read -p "Donne moi un chiffre: " CHIFFRE

    # Je récupère la variable "CHIFFRE2" à l'aide de "read -p".
    read -p "Donne moi un chiffre: " CHIFFRE2

# J'appelle ma fonction.
    DIVISION


# Mot clé: fi
fi