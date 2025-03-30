#!/bin/bash

if [[ -z "${GIT_EMAIL}" ]]; then
  echo "::error::The parameter \"github-action-git-email\" is mandatory"
  exit 1
fi
if [[ -z "${GIT_USERNAME}" ]]; then
  echo "::error::The parameter \"github-action-git-username\" is mandatory"
  exit 1
fi
if [[ -z "${GIT_SSH_KEY}" ]]; then
  echo "::error::The parameter \"github-action-git-ssh-key\" is mandatory"
  exit 1
fi


java -version
echo "---------"
export JAVA_HOME="${GHA_RELEASE_JAVA_HOME}"
mvn -version
echo "---------"
git --version
echo "---------"
pwd
ls -lah
mvn -B package --file pom.xml -DskipTests
