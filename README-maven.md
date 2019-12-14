cls && mvn eclipse:clean eclipse:eclipse
cls && mvn dependency:tree
cls && mvn -e -Dmaven.test.skip=true -Dmaven.javadoc.skip=true clean install
cls && mvn -e -DskipTests=true -Dmaven.javadoc.skip=true clean install
cls && mvn dependency:resolve -Dclassifier=sources && mvn dependency:resolve -Dclassifier=javadoc && mvn eclipse:clean eclipse:eclipse
