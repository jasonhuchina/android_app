
D:
cd D:\Gallery-Android\android_game_20220305
RD /S /Q D:\Gallery-Android\android_game_20220305\.git
DEL /F /S /Q README.md
DEL /F /S /Q test

git init
git lfs install
git lfs track *
git remote add origin ssh://jasonhu@git.code.sf.net/p/android-app/code
git config lfs.https://git.code.sf.net/p/android-app/code.git/info/lfs.locksverify false
git pull --rebase origin master
git push origin --delete game_20220305
git branch game_20220305
git checkout game_20220305

DEL /F /S /Q .gitattributes
DEL /F /S /Q .gitlab-ci.yml
DEL /F /S /Q README.md
DEL /F /S /Q test

git add *
git commit -m "Git LFS commit"
git push origin game_20220305

