#!/bin/bash

#curl -LO https://eksworkshop.com/advanced/420_kubeflow/kubeflow.files/inference_client.py
python3 inference_client.py --endpoint http://localhost:8500/v1/models/mnist:predict

