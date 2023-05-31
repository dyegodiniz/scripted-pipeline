#!/bin/bash

# tutorial para usar a api do jenkins https://narenchejara.medium.com/trigger-jenkins-job-remotely-using-jenkins-api-20973618a493

echo "============================================================= adicionando arquivos"
git add .

echo "============================================================= fazendo o commit"
git commit -m "commit test"

echo "============================================================= push para repo remoto"
git push origin master


#JENKINS_USER=admin
#JENKINS_USER_API_TOKEN=11bb4b85a8fe21b785aad90dcbfdff518d

# JENKINS_USER_API_TOKEN is obtained from $JENKINS_URL/me/configure
#BASIC_AUTH=${JENKINS_USER}:$JENKINS_USER_API_TOKEN

# Obtained from URL without any protocol
#JENKINS_ADDRESS="192.168.1.174:8081"


# Pass parameters with --data option
#curl http://admin:11bb4b85a8fe21b785aad90dcbfdff518d@http://192.168.1.174:8081/job/test-scripted/buildWithParameters --data param1=123 --data param2="git-repo"
#curl http://${BASIC_AUTH}@${JENKINS_ADDRESS}/job/test-scripted/buildWithParameters
echo "============================================================= rodando pipeline no jenkins"
curl -u admin:1154312ba2c948cd3e15890828e08066b4 http://192.168.0.174:8081/job/test-scripted/build?token=My-token