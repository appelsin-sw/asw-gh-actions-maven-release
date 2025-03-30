#!/bin/sh -l

java -version
echo "---------"
echo "java home: ${JAVA_HOME}"
#echo "${java.home}"
#cat "${HOME}/.m2/settings.xml"
export JAVA_HOME=${JAVA_HOME_21_X64:-$JAVA_HOME_21_arm64}
echo "java home: ${JAVA_HOME}"
mvn -version
echo "---------"
git --version
echo "---------"
pwd
ls -lah
