#!/bin/sh -l


java -version
echo "---------"
echo "java home: ${JAVA_HOME}"
echo "gha release java home: ${GHA_RELEASE_JAVA_HOME}"
export JAVA_HOME='/opt/zing/zing25.02.0.0-2-jre21.0.6/'
echo "java home: ${JAVA_HOME}"
mvn -version
echo "---------"
git --version
echo "---------"
pwd
ls -lah
