#!/bin/bash
#make sure this script is being executed in git bash or svn linux server with git installed
#First we need to prepare an author.txt file in C:/author.txt \ Sample of the authors.txt file (see Abyster's Documentation)
#Exx : username = first last <email address>  : of users in the svn server
#cd /c
#Create a directory of your choice
#mkdir svntogit \ cd svntogit manually and execute this script
#Convert svntogit/ (or the name you decided to use) into a git repo
git init
#Checkout the  project from svn
git svn init https://DESKTOP-KOF97JQ/svn/vitrineSvn4/ #or you insert the url to the repository of svn you want to
#Pass your author's file to match up the user (check on Abyster's documentation)
git config svn.authorsfile I:/front/users.txt
#Fetch the data from svn into your local repository which will prompt you for a user name anad password
git svn fetch #if it rejects it, know that you didn't prepare your author's file well
#Push the code from local repo to remote repo(Github or Gitlab)
git clone https://github.com/bissaye/vitrineSvn4 #you insert the name of your git repo here
git remote add origin
git commit -m "this is just for testing"
git branch -M main
# touch .gitignore
# echo branches/* > .gitignore
# git commit -a .gitignore -m "ignorer le dossier des branches" 
# git push https://github.com/bissaye/vitrineSvn4 #you can use main there or name of github repo you want to push to
# git status