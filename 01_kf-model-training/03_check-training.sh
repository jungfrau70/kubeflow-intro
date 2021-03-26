#!/bin/bash

source .env

kubectl logs -f mnist-training -n $NAMESPACE
