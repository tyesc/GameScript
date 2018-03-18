function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rmdir $HOME/.GameScript_bash9 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 9 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Comment afficher la commande complète de l'alias 'gamescript' ?" "alias gamescript"
  answer_text_fr "Comment afficher la liste complète de vos alias ?" "alias"
  answer_text_fr "Comment afficher le contenu de la variable 'PATH' ?" ""
  answer_text_fr "Comment ajouter ':/bin' à la variable 'PATH' ?" "PATH=$PATH:/bin"
  answer_text_fr "Sans utiliser les '\"', comment ajouter un espace à la fin de la variable 'phrase' ?" "phrase=$phrase' '"
  answer_text_fr "Quel est le nom (sans le $) de la variable d'environnment utilisée par la commande man ?" "PAGER"
  answer_text_fr "Comment afficher vos variables d'environnement avec 'less' ?" "printenv|less"
  answer_text_fr "Comment affecter à la variable RET le code retour (exit status) de la dernière commande ?" "RET=$?"
  answer_text_fr "Comment afficher le chemin absolu du fichier binaire utilisé par la commande 'bash' ?" "which bash"
  unlock "bash" "9" "6521" "ddd2"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="9"
LANGUAGE="fr"
SPEAKER="m1"

if [ ! "$1" == "MUTE" ]; then prepare_audio; fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
