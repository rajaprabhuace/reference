
clear
source repos.sh

build() {
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
	mvn -DskipMunitTests=true clean install
	cd ..
}

cd /d/github.com/java
pwd
for repo in "${JAVA_REPOS[@]}"
do
	build $repo
done

<<comment
cd /d/github.com/mule
pwd
for repo in "${MULE_REPOS[@]}"
do
	build $repo
done
comment
