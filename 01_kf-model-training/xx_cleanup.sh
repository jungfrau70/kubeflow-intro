#!/bin/bash

# delete s3user
aws iam detach-user-policy --user-name s3user --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess
aws iam delete-access-key --access-key-id `echo $AWS_ACCESS_KEY_ID_VALUE | base64 --decode` --user-name s3user
aws iam delete-user --user-name s3user
# delete sagemakeruser
aws iam detach-user-policy --user-name sagemakeruser --policy-arn arn:aws:iam::aws:policy/AmazonSageMakerFullAccess
aws iam delete-access-key --access-key-id `echo $AWS_ACCESS_KEY_ID_VALUE | base64 --decode` --user-name sagemakeruser
aws iam delete-user --user-name sagemakeruser
# delete S3 bucket
aws s3 rb s3://$S3_BUCKET --force --region $AWS_REGION
# delete aws-secret
kubectl delete secret/aws-secret
kubectl delete secret/aws-secret -n kubeflow
