#!/bin/bash

source .env

curl -LO https://eksworkshop.com/advanced/420_kubeflow/kubeflow.files/mnist-inference.yaml

envsubst <mnist-inference.yaml | kubectl apply -f -
