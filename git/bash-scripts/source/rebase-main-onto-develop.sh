echo ""
echo "===== $1 -> rebase main on top of develop ====="
git rebase main develop -v

echo ""
echo "===== $1 -> push the rebased develop ====="
git checkout develop
git merge main --ff-only
git push --recurse-submodules=check --progress origin refs/heads/develop:refs/heads/develop