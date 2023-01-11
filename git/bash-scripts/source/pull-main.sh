echo ""
echo "===== $1 -> main ====="
git checkout main
git branch --set-upstream-to origin/main main
git pull --rebase --progress origin
