#!/bin/bash

aws_working_dir=$HOME/working/cloud-computing/aws/services

# 1.    Remove EMR_EC2_DefaultRole from the instance profile:
aws iam remove-role-from-instance-profile \
--instance-profile-name EMR_EC2_DefaultRole \
 --role-name EMR_EC2_DefaultRole

# 2.    Delete the instance profile:

 aws iam delete-instance-profile \
 --instance-profile-name EMR_EC2_DefaultRole

# 3. Delete the IAM policy associated with EMR_EC2_DefaultRole:
 aws iam detach-role-policy \
 --role-name EMR_EC2_DefaultRole \
 --policy-arn arn:aws:iam::aws:policy/service-role/AmazonElasticMapReduceforEC2Role

# 4.    Delete EMR_EC2_DefaultRole:
 aws iam delete-role \
 --role-name EMR_EC2_DefaultRole

# 5.    Delete the IAM policy associated with EMR_DefaultRole:
 aws iam detach-role-policy \
 --role-name EMR_DefaultRole \
 --policy-arn arn:aws:iam::aws:policy/service-role/AmazonElasticMapReduceRole

# 6.    Delete EMR_DefaultRole:
 aws iam delete-role \
 --role-name EMR_DefaultRole

# 7.    Run create-default-roles to recreate the default roles:
 aws emr create-default-roles

