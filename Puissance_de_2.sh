# J'affiche le texte "Donnez moi un chiifre: " et récupère la variable "CHIFFRE_UTTILISATEUR" à l'ade de "read -p". 
read -p "Donnez moi un chiifre: " CHIFFRE_UTILISATEUR

# Je crée ma boucle for.
for i in $CHIFFRE_UTILISATEUR

# Mot cle: do
    do

    # J'affiche le résultat de la multiplication à l'aide de "expr" pour faire comprendre au programme que je fais une opération mathématique et "\*" pour la multiplicaiton.
    echo "`expr $CHIFFRE_UTILISATEUR \* $CHIFFRE_UTILISATEUR`"

    # Je crée ma variable "CHIFFRE_PUISSAMCE_2" en lui donnant comme valeur une opération mathématique à l'aide de "expr" pour faire comprendre au programme que je fais une opération mathématique et "\*" pour la multiplicaiton.
    CHIFFRE_PUISSANCE_2="`expr $CHIFFRE_UTILISATEUR \* $CHIFFRE_UTILISATEUR`"

# Mot clé: done
done