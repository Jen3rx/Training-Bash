    function ADDITION () {

    RESULTAT_ADDITION=`expr ${CHIFFRE} + ${CHIFFRE2}`
    echo "Resultat: $RESULTAT_ADDITION"
}

    function SOUSTRACTION () {

    RESULTAT_SOUSTRACTION=`expr ${CHIFFRE} - ${CHIFFRE2}`
    echo "Resultat: $RESULTAT_SOUSTRACTION"
}

    function MULTIPLICATION () {
   
    RESULTAT_MULTIPLICATION=`expr ${CHIFFRE} \* ${CHIFFRE2}`
    echo "Resultat: $RESULTAT_MULTIPLICATION"
}

    function DIVISION () {

    if [ $CHIFFRE2 -eq 0 ] 
    then
        echo "Erreur: Division par zéro!"
    else
        RESULTAT_DIVISION=`expr ${CHIFFRE} / ${CHIFFRE2}`
        echo "Résultat: $RESULTAT_DIVISION"
    fi
}

echo "Voici une calculatrice."
read -p "Choisi l'opération que tu souhaites faire: A = Addition / B = Soustraction / C = Multiplication / D = Division. "   ENTRER_UTTILISATEUR

if [ "$ENTRER_UTTILISATEUR" = "A" ]
then
    echo "Addition:"
    echo $ENTRER_UTTILISATEUR
    read -p "Donne moi un chiffre: " CHIFFRE
    read -p "Donne moi un chiffre: " CHIFFRE2

    ADDITION

elif [ "$ENTRER_UTTILISATEUR" = "B" ]
then

    echo "Soustraction:"
    read -p "Donne moi un chiffre: " CHIFFRE
    read -p "Donne moi un chiffre: " CHIFFRE2

    SOUSTRACTION

elif [ "$ENTRER_UTTILISATEUR" = "C" ]
then

    echo "Multiplication:"
    echo $ENTRER_UTTILISATEUR
    read -p "Donne moi un chiffre: " CHIFFRE
    read -p "Donne moi un chiffre: " CHIFFRE2

    MULTIPLICATION 

elif [ "$ENTRER_UTTILISATEUR" = "D" ]
then

    echo "Division:"
    echo $ENTRER_UTTILISATEUR
    read -p "Donne moi un chiffre: " CHIFFRE
    read -p "Donne moi un chiffre: " CHIFFRE2

    DIVISION

fi