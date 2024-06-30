#1: Wprowadzenie do commitów Gita

#1.1:

git commit
git commit

#1.2:

git checkout -b bugFix

#1.3:

git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

#1.4:

git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

#2: Rozkręcenie

#2.1:

git checkout C4

#2.2:

git checkout C4^

#2.3:

git branch -f main C6
git branch -f bugFix HEAD~2
git checkout HEAD^

#2.4:

git reset local~1
git checkout pushed
git revert pushed

#3: Przenoszenie pracy

#3.1:

git cherry-pick C3 C4 C7

#3.2:

git rebase -i main~4 --aboveAll

#4: Po trochu wszystkiego

#4.1:

git checkout main
git cherry-pick C4

#4.2:

git rebase -i caption~2 --aboveAll
git commit --amend
git rebase -i caption~2 --aboveAllg
reset
git rebase -i caption~2 --aboveAll
git commit --amend
git rebase -i caption~2 --aboveAll
git branch -f main caption

#4.3:

git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

#4.4

git tag v0 C1
git tag v1 C2
git checkout C2

#4.5

git commit

#5: Push & Pull -- zdalne repozytoria

#5.1:

git clone

#5.2:

git commit
git checkout o/main
git commit

#5.3:

git fetch

#5.4:

git pull

#5.5:

git clone
git fakeTeamwork main 2
git commit
git pull

#5.6:

git commit
git commit
git push

#5.7:

git clone
git fakeTeamwork
git commit 
git pull --rebase
git push

#5.8:

git reset --hard o/master
git checkout -b feature C2
git push

#6: Do źródła i dalej -- zaawansowane zdalne repozytoria

#6.1:

git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git pull --rebase
git push

#6.2:

git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

#6.3:

git checkout -b side o/main
git commit
git pull --rebase
git push

#6.4:

git push origin main
git push origin foo