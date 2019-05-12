#!/bin/bash

# load environment setup scripts
source $aws_home_dir/setup_env.sh

# create vpc using cloud formation.

deploy_stack_cmd=$(aws cloudformation deploy --file-value=$aws_home_dir/vpc/templates/vpc_single_instance_into_subnet.template)

exec $deploy_stack_cmd


 