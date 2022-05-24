echo ""
echo "===== $1 -> master ====="
git checkout master
git branch --set-upstream-to origin/master master
git pull --rebase --progress origin
