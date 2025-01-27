function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash7/file 2> /dev/null
	rm $HOME/.GameScript_bash7/error 2> /dev/null
	rm $HOME/.GameScript_bash7/e 2> /dev/null
	rm $HOME/.GameScript_bash7/f 2> /dev/null
	rm $HOME/.GameScript_bash7/out 2> /dev/null
	rm $HOME/.GameScript_bash7/err 2> /dev/null
	rm $HOME/.GameScript_bash7/F 2> /dev/null
	rm /tmp/pwd.log 2> /dev/null
	rmdir $HOME/.GameScript_bash7 2> /dev/null
}

function start_quiz(){
  start_quiz_music
  echo ""
  echo -e "\e[15;44m Bash 'Bourne Again SHell' : Quiz Chapter 7 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "Comment afficher le contenu du fichier 'cat' en se débarassant de tous les messages d'erreur potentiels ?" "cat cat 2>/dev/null"
  answer_text_fr "Comment executer deux commandes : 'mkdir A' et 'touch B' et regrouper leurs flux de même type ? (erreur et sortie standard)" "(mkdir A;touch B)"
  answer_text_fr "La commande 'pwdd&>/dev/null' est équivalente à la commande 'pwdd 2>&1 >/dev/null'. (vrai/faux)" "faux"
  answer_text_fr "Le fichier ERROR étant créé par la commande 'cat x 2>ERROR', comment afficher son contenu sur la sortie standard ?" "cat ERROR"
  answer_text_fr "Comment afficher le contenu du fichier 'LOG' sur la sortie erreur standard with '1>' ?" "cat LOG 1>&2"
  answer_text_fr "Comment rediriger la sortie standard et la sortie erreur standard de la commande 'mkdir TEST' dans le fichier /var/mkdir" "mkdir TEST&>/var/mkdir"
  answer_text_fr "Sans utiliser '&>>', comment ajouter à la fin du fichier '/tmp/pwd.log' la sortie standard de la commande 'pwd', puis regroupez sa sortie erreur standard avec sa sortie standard ?" "pwd>>/tmp/pwd.log 2>&1"
  unlock "bash" "7" "1109" "ff12"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="7"
LANGUAGE="fr"
SPEAKER="m1"

LINES=180
#~ if [ "$1" == "VIDEO" ]; then
	#~ prepare_video
#~ else
	#~ if [ ! "$1" == "MUTE" ]; then
		#~ prepare_audio
	#~ fi
#~ fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
