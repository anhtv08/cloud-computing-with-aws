#!/bin/bash

aws_working_dir=$HOME/working/cloud-computing/aws/services
test_topic_name='my-topic-test'
aws sns create-topic \
--name $test_topic_name