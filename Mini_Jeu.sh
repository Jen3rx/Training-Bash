echo "Le chiffre à trouver est entre 1 et 100. Trouvez le !"
read CHIFFRE2

MIN=1
MAX=100

CHIFFRE=$(shuf -i $MIN-$MAX -n 1)

while [ $CHIFFRE -ne $CHIFFRE2 ]
do

    if [ $CHIFFRE -lt $CHIFFRE2 ]
    then
        echo "Le chiffre est plus petit."
        echo "Le chiffre à trouver est entre 1 et 100. Trouvez le !"
        read CHIFFRE2
    elif [ $CHIFFRE -gt $CHIFFRE2 ]
    then
        echo "Le chiffre est plus grand."
        echo "Le chiffre à trouver est entre 1 et 100. Trouvez le !"
        read CHIFFRE2
    fi
done
echo "Félicitation le chiffre était bien: $CHIFFRE"