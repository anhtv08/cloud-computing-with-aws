#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

stream_name=myStream
shard_to_merge=$2
adjacent_shard_to_merge=$3

aws kinesis merge-shards \
--stream-name $stream_name \
--shard-to-merge $shard_to_merge \
--adjacent-shard-to-merge $adjacent_shard_to_merge
