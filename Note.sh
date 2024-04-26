#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Variables

#Je crée mes variables
#PRENOM="Jonathan"
#NOM="Sthioul"
#AGE="15"
# J'affiche du texte contenant les 3 variables
#echo "Salut ${PRENOM} ${NOM}, tu as ${AGE} ans"

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Test

# Je crée mes variable
# PRENOM="Jonathan"
# NOM="Sthioul"
#Je fais un test pour voir si la chaîne est vide
# [ -z ${PRENOM} ]
#Je compare les 2 chaînes
# [ ${PRENOM} = ${NOM} ]
#J'affiche le résultat du test
# echo $?

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Condition

#Je crée ma condition: Si le fichier /home/jonathan/exercice Bash/ex1 existe alors "Le fichier existe bien" sinon "Le fichier existe pas".
#if  [ -e "/home/jonathan/exercice bash/ex1" ]
#Mot clé:"alors"
#then
    #J'affiche la chaîne selon la condition.
    #echo "Le fichier existe bien."
#Je crée ma condition: Si le fichier /home/jonathan/exercice bash/ex1 existe alors "Le fichier existe bien" sinon/si "/home/jonathan/exercice Bash/ex1" le fichier existe bien sinon "Le fichier existe pas".
#elif [ -e "/home/jonathan/exercice Bash/ex1" ]
#Mot clé:"alors"
#then
    #J'affiche la chaîne selon la condition.
    #echo "Le fichier existe bien."
#Mot clé:Sinon
#else
    #J'affiche la chaîne selon la condition.
    #echo "Le fichier existe pas."
#Je marque la fin avec "fi".
#fi

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Boucle for

#Je crée une variable contenant une liste de chiffre.
#CHIFFRES=" 2 4 6 1 2"
#Je crée la boucle for en disant que les valeurs de la variable CHIFFRE est la variable CHIFFRES.
#for CHIFFRE in ${CHIFFRES}
#Mot clé: do
#do
    #J'affiche la chaîne selon ce que j'ai envie.
    #echo "Chiffre: ${CHIFFRE}"
#Mot clé: done (annoncer la fin).
#done

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Read

#J'affiche ma chaîne
#echo "Donne moi ton prénom."
#Je demande à l'utilisateur d'entrer son prénom.
#read PRENOM
#J'affiche ma chaîne
#echo "Donne moi ton nom."
#Je demande à l'utilisateur d'entrer son nom.
#read NOM
#J'affiche ma chaîne
#echo "Donne moi ton âge."
#Je demande à l'utilisateur d'entrer son age.
#read AGE

#J'affiche ma chaîne
#echo "Tu t'appelles ${PRENOM} ${NOM} et tu as ${AGE} ans."

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Boucle WHILE

# #Je crée ma boucle while en disant que tant que la variable est vide (-z) je redemande le prenom à l'utilisateur.
# while [ -z ${PRENOM} ]
# #mot clé:do
# do
#     #J'affiche ma chaîne en demandant une réponse à l'utilisateur (read-p).
#     read -p "Quel est votre prenom?" PRENOM
# #Mot clé:done (annonce la fin)
# done
# #J'affiche ma chaîne avec la réponse de l'utilisateur.
# echo "Ton prenom est ${PRENOM}."

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Exercice

#echo "Donne moi un chiffre."
#read CHIFFRE

#while [ $CHIFFRE -gt 0 ] 
#do
#     echo "Compteur: $CHIFFRE"
#     CHIFFRE=`expr $CHIFFRE - 1`
#done

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Condition CASE

# case "$1" in
# [sS][tT][aA][rR][tT])
# /etc/init.d/apache2 start
# ;;
# [sS][tT][oO][pP] )
# kill $(cat /var/run/apache2/apache2.pid)                                                    
# ;;
# *)
# echo "Merci d'indiquer start ou stop"
# exit 1
# ;;
# esac

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////