#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/setup_env.sh


# clean up bucket.
# buck name :
test_buck_name="joey-aws-test-provision"
s3_delete_bucket_cmd="aws s3 rb  s3://$test_buck_name --force"
exec $s3_delete_bucket_cmd


 