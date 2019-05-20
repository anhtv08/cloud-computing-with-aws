#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

aws rds create-db-instance \
--db-instance-identifier 'mydbinstance' \
--engine 'mysql' \
--db-instance-class 'db.t2.micro' \
--allocated-storage 5 \
--master-username 'myusername' \
--master-user-password 'mypassword' \
--no-multi-az \
--availability-zone 'ap-southeast-1a' \
--db-subnet-group-name 'my-rds-subnet-group'

