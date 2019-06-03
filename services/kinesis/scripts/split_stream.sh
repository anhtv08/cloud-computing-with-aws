#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

stream_name=myStream
num_of_shards=$1
shard_id=$2
new_hash_key=$3

aws kinesis split-shard \
--stream-name $stream_name \
--shard-to-split $shard_id \
--new-starting-hash-key $new_hash_key
