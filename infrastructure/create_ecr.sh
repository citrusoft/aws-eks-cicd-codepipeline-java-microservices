#!/bin/bash

aws cloudformation create-stack --stack-name ecr-product \
    --template-body file://ecr.yaml \
    --parameter ParameterKey="repoName",ParameterValue="product" \
    --region=us-east-2

aws cloudformation create-stack --stack-name ecr-review \
    --template-body file://ecr.yaml \
    --parameter ParameterKey="repoName",ParameterValue="review" \
    --region=us-east-2
