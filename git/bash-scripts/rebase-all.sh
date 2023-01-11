
clear
source repos.sh

pullAndRebase() {
	echo ""
	echo ""
	echo "================================== $1 =================================="
	
	if [ ! -d "$1" ]; then
		git clone git@github.com:ramkumarant/$1.git
	fi
	
	cd $1
	echo ""
	pwd
	echo ""
	echo "===== $1 -> stash ====="
	git stash save
	
	sh pull-main.sh $1
	sh pull-develop.sh $1
	sh rebase-develop-onto-main.sh $1
	sh rebase-main-onto-develop.sh $1
	
	echo ""
	echo "===== $1 -> switch to develop ====="
	git checkout develop
	
	echo ""
	echo "===== $1 -> pop stash ====="
	git stash pop
	cd ..
}

pullMaster() {
	echo ""
	echo "================================== $1 =================================="

	if [ ! -d "$1" ]; then
		git clone git@github.com:ramkumarant/$1.git
	fi

	cd $1
	echo ""
	pwd
	echo ""
	echo "===== $1 -> stash ====="
	git stash save
	sh pull-master.sh $1
	echo ""
	echo "===== $1 -> pop stash ====="
	git stash pop
}

print_report() {
	echo ""
	echo "================================== $1 =================================="
	cd $1
	echo ""
	pwd
	echo ""
	git show-ref
	echo ""
	git branch -avv
	cd ..
}

cd /d/github.com//java
for repo in "${JAVA_REPOS[@]}"
do
	pullAndRebase $repo
done

<<comment
cd /d/github.com//mule
for repo in "${MULE_REPOS[@]}"
do
	pullAndRebase $repo
done
comment

cd /d/github.com//java
pullMaster "reference.wiki"

cd /d/github.com//java
pullMaster "database-scripts"

cd /d/github.com//java
for repo in "${JAVA_REPOS[@]}"
do
	print_report $repo
done

<<comment
cd /d/github.com//mule
for repo in "${MULE_REPOS[@]}"
do
	print_report $repo
done
comment
