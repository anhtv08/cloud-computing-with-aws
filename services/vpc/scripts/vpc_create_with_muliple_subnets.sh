#!/bin/bash

# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

# create vpc using cloud formation.
# [a-zA-Z][-a-zA-Z]
vpc_stack_name="vpc-with-multiple-public-private-subnets-1"
deploy_stack_cmd="aws cloudformation deploy --stack-name $vpc_stack_name --template-file $aws_home_dir/services/vpc/vpc_with_managed_NAT_And_Private_Subnet.yaml"
exec $deploy_stack_cmd
# ret_code=$?
# if [[ $ret_code -ne 0 ]]; then
#     echo "Validation is completed"
# elif
#     echo "validation failed"
#     exit -1    

# execute and deploy stack
#exec $deploy_stack_cmd

#verify the stack deployment
 