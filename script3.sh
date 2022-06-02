while getopts b:s:S:G: flag
do
    case "${flag}" in
        b) branche=${OPTARG};;
        s) svnRepoLink=${OPTARG};;
        S) svnRepoName=${OPTARG};;
        G) repoLink=${OPTARG};;
    esac
done
#On affiche un message pour annoncer le debut de l'operation
echo "debut de la migration " $svnRepoLink "to" $repoLink
echo "|"
echo "|"
echo "|"

#on clone premierement la branche voulu depuis le repos svn
git svn clone -T $branche $svnRepoLink

#on entre dans le dossier de projet créé par git
cd $svnRepoName
echo "|"
echo "|"
echo "|"
echo "|"

#on  se positionne sur la branche voulu
echo "positionnement sur la branche : " $branche
git checkout -b $branche
echo "|"
echo "|"
echo "|"
echo "|"

#on pousse le projet vers le repos distant
echo "push vers "$repoLink
git push $repoLink
echo "|"
echo "|"
echo "|"

echo "|"
echo "OPERATION TERMINEE"
echo "branche : " $branche 
echo " "
echo "svnRepolink : " $svnRepoLink
echo " "
echo "svpRepoName : " $svnRepoName
echo " "
echo "repoLink : " $repoLink
