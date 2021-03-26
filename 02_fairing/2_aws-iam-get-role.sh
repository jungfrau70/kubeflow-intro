#!/bin/bash

aws iam get-role --role-name eksworkshop-sagemaker-kfp-role --output text --query 'Role.Arn' | echo "export ROLE_NAME=`awk '{split($0,a,"/"); print a[2]}'`" >> .env
