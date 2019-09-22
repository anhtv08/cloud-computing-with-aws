#!/bin/sh

aws cloudformation deploy \
  --template-file stack.yaml \
  --stack-name edge-lambda-test \
  --capabilities CAPABILITY_IAM