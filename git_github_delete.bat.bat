
D:
cd D:\Gallery-Android\android_game_20220305
RD /S /Q D:\Gallery-Android\android_game_20220305\.git
DEL /F /S /Q README.md
DEL /F /S /Q test

git init
git lfs install
git lfs track *
git remote add origin https://github.com/jasonhuchina/android_app.git
git config lfs.https://github.com/jasonhuchina/android_app.git/info/lfs.locksverify false
git config --global http.sslVerify "false"
git pull --rebase origin master
git push origin --delete game_20220305

