echo ""
echo "===== $1 -> rebase develop on top of main ====="
git rebase develop main -v

echo ""
echo "===== $1 -> push the rebased main ====="
git checkout main
git merge develop --ff-only
git push --recurse-submodules=check --progress origin refs/heads/main:refs/heads/main