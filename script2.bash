#!/bin/bash
#./script1.bash
git branch -M new_branch
git remote add origin
git commit -m "first branch"
git push https://github.com/BertrandYangni/testingforautomation.git #you can use main there or name of github repo you want to push to
git status
git branch -M main


