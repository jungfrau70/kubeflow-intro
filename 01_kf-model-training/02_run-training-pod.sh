#!/bin/bash

source .env

curl -LO https://eksworkshop.com/advanced/420_kubeflow/kubeflow.files/mnist-training.yaml

envsubst < mnist-training.yaml | kubectl create -f -
