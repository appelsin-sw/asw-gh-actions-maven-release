#!/bin/sh -l

java -version
echo "---------"
echo "${JAVA_HOME}"
echo "${java.home}"
cat "${HOME}/.m2/settings.xml"
mvn -version
echo "---------"
git --version
echo "---------"
pwd
ls -lah
