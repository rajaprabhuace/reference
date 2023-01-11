
clear
source repos.sh

generateClasspathFile() {
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
	mvn eclipse:clean eclipse:eclipse
	cd ..
}

cd /d/github.com/java
pwd
for repo in "${JAVA_REPOS[@]}"
do
	generateClasspathFile $repo
done

<<comment
cd /d/github.com/mule
pwd
for repo in "${MULE_REPOS[@]}"
do
	generateClasspathFile $repo
done
comment
