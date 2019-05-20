#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

aws rds delete-db-instance \
    --db-instance-identifier 'mydbinstance'  \
    --final-db-snapshot-identifier mydbinstancefinalsnapshot \
    --delete-automated-backups