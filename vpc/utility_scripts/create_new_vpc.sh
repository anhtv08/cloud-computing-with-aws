#!/bin/bash

# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/setup_env.sh

# create vpc using cloud formation.
# [a-zA-Z][-a-zA-Z]
vpc_stack_name="vpc-with-single-ec2-instance"


#validate template
validate_stack_cmd="aws cloudformation validate-template --template-body $aws_home_dir/vpc/templates/vpc_single_instance_into_subnet.template"
exec $validate_stack_cmd

deploy_stack_cmd="aws cloudformation deploy --stack-name $vpc_stack_name --template-file $aws_home_dir/vpc/templates/vpc_single_instance_into_subnet.template"
exec $validate_stack_cmd
# ret_code=$?
# if [[ $ret_code -ne 0 ]]; then
#     echo "Validation is completed"
# elif
#     echo "validation failed"
#     exit -1    

# execute and deploy stack
#exec $deploy_stack_cmd

#verify the stack deployment



 