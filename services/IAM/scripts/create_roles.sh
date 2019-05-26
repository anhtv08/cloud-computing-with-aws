#!/bin/bash
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws

declare -a list_of_roles=(
    "j_network_role"
    "j_app_role"
    "j_db_role"
    "j_ops_role"
)

declare -a list_of_policies=(
    '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action": "sts:AssumeRole","Principal" : { "AWS" : "*" }}]}'
    '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action": "sts:AssumeRole","Principal" : { "AWS" : "*" }}]}'
    '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action": "sts:AssumeRole","Principal" : { "AWS" : "*" }}]}'
    '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action": "sts:AssumeRole","Principal" : { "AWS" : "*" }}]}'
)

for index in "${!list_of_roles[@]}"; do
    aws iam create-role \
    --role-name "${list_of_roles[index]}" \
    --assume-role-policy-document "${list_of_policies[index]}"
done
