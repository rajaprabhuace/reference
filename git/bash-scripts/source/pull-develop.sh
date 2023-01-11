echo ""
echo "===== $1 -> develop ====="
git checkout develop
git branch --set-upstream-to origin/develop develop
git pull --rebase --progress origin
