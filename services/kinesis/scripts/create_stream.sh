#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

stream_name=myStream
num_of_shards=1

aws kinesis create-stream \
--stream-name $stream_name \
--shard-count $num_of_shards


