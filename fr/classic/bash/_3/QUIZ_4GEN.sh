function quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 3 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quel est la version abrégée de 'ls -a -l' ?" "ls -al"
  answer_text_fr "Comment ajouter le mot 'non' à la fin du fichier texte 'oui' ?" "echo non>>oui"
  answer_text_fr "Comment remplacer le contenu du fichier 'test' par 'exemple' ?" "echo exemple>test"
  answer_text_fr "Comment afficher le contenu du fichier 'test' ?" "cat test"
  answer_text_fr "Sur bash, quel est le caractère d'échappement ?" "\\"
  answer_text_fr "Comment afficher dans le terminal : a>b" "echo a\>b"
  answer_text_fr "Quel est la lettre à utiliser après le caractère d'échappement pour représenter une mise à la ligne ?" "n"
  answer_text_fr "Affichez, sans utiliser le caractère d'échappement, la phrase : j'ai bon" "echo \"j'ai bon\""
  answer_text_fr "Affichez trois guillemets (\"), sans utiliser le caractère d'échappement." "echo '\"\"\"'"
  unlock
}


enter_chapter bash 3 1
