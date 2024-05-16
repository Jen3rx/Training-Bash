# J'affiche le texte "Le chiffre à trouver est entre 1 et 100. Trouvez le !" et récupère la variable à l'aide de read -p.
read -p "Le chiffre à trouver est entre 1 et 100. Trouvez le !" CHIFFRE2

# Je crée mes variables "MIN" et "MAX" en leur donnant une valeure.
MIN=1
MAX=100

# Je génère un nombre aléatoire en lui donnant une intervalle grâce à mes 2 variables et précise que je souhaite que un chiffre générer (-n 1).
CHIFFRE=$(shuf -i $MIN-$MAX -n 1)

# Je crée ma boucle "while" avec une condition si CHIFFRE n'est pas égal à CHIFFRE2 (-ne).
while [ $CHIFFRE -ne $CHIFFRE2 ]
do
# Je crée ma condition si CHIFFRE est plus petit que CHIFFRE2 alors (-lt).
    if [ $CHIFFRE -lt $CHIFFRE2 ]
    # Mot clé: then
    then
    # J'affiche ces textes si la condition précédente est respecté.
        echo "Le chiffre est plus petit."
        echo "Le chiffre à trouver est entre 1 et 100. Trouvez le !"
        read CHIFFRE2
    # Sinon si le CHIFFRE est plus grand que CHIFFRE2 alors (-gt).
    elif [ $CHIFFRE -gt $CHIFFRE2 ]

    # Mot clé: then
    then

        # J'affiche ces textes si la condition précédente est respecté.
        echo "Le chiffre est plus grand."
        echo "Le chiffre à trouver est entre 1 et 100. Trouvez le !"
        read CHIFFRE2

    # Mot clé: fi
    fi

# Mot clé: done
done

# J'affiche un message de fin.
echo "Félicitation le chiffre était bien: $CHIFFRE"