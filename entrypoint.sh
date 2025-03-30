#!/bin/sh -l

java -version
echo "---------"
echo "${JAVA_HOME}"
mvn -version
echo "---------"
git --version
echo "---------"
pwd
ls -lah
