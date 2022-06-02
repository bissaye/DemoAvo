#firstly we clone the svn repo
git svn clone -T $branche $svnRepoLink

#we switch on the specific branche
git checkout -b $brancheName

#we push the project to the repo
git push $repoLink