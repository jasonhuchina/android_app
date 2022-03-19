
D:
cd D:\Gallery-Android\android_app-main
RD /S /Q D:\Gallery-Android\android_app-main\.git
DEL /F /S /Q README.md
DEL /F /S /Q test

git init
git lfs install
git lfs track *
git remote add origin ssh://jasonhu@git.code.sf.net/p/android-app/code
git config lfs.https://git.code.sf.net/p/android-app/code.git/info/lfs.locksverify false
git pull --rebase origin master
git push origin --delete main
git branch main
git checkout main

DEL /F /S /Q .gitattributes
DEL /F /S /Q .gitlab-ci.yml
DEL /F /S /Q README.md
DEL /F /S /Q test

git add *
git commit -m "Git LFS commit"
git push origin main

