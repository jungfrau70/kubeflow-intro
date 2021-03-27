#!/bin/bash

KUBERNETES_REGISTRY=aws-ecr
DOCKER_ECR=004625312447.dkr.ecr.ap-northeast-2.amazonaws.com
DOCKER_USERNAME=AWS
DOCKER_EMAIL=inhwan.jung@gmail.com
#DOCKER_SECRET=$(aws --profile "production" ecr get-login | sed -e 's/.*-p //' -e 's/ .*$//')
DOCKER_SECRET=$(aws ecr get-login-password --region ap-northeast-2)
kubectl delete secrets ${KUBERNETES_REGISTRY} 2> /dev/null
kubectl create secret docker-registry ${KUBERNETES_REGISTRY} \
--docker-server=${DOCKER_ECR} \
--docker-username=${DOCKER_USERNAME} \
--docker-password=${DOCKER_SECRET} \
--docker-email=${DOCKER_EMAIL}
