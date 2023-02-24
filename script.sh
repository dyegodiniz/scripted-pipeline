#!/bin/bash

git add .

git commit -m "commit test"

git push origin master


JENKINS_USER=admin
JENKINS_USER_API_TOKEN=11bb4b85a8fe21b785aad90dcbfdff518d

# JENKINS_USER_API_TOKEN is obtained from $JENKINS_URL/me/configure
BASIC_AUTH=${JENKINS_USER}:$JENKINS_USER_API_TOKEN

# Obtained from URL without any protocol
JENKINS_ADDRESS="http://192.168.1.174:8081"


# Pass parameters with --data option
curl http://${BASIC_AUTH}@${JENKINS_ADDRESS}/job/my_pipeline/buildWithParameters \
  --data param1=123 --data param2="git-repo"