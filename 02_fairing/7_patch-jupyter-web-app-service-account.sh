#!/bin/bash

source .env

kubectl -n $NAMESPACE patch serviceaccount default -p '{"imagePullSecrets": [{"name": "aws-ecr"}]}'
kubectl -n $NAMESPACE patch serviceaccount default-editor -p '{"imagePullSecrets": [{"name": "aws-ecr"}]}'
kubectl -n $NAMESPACE patch serviceaccount default-viewer -p '{"imagePullSecrets": [{"name": "aws-ecr"}]}'
