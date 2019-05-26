#!/bin/bash
aws_working_dir=$HOME/working/cloud-computing/aws/services
test_topic_name='my-topic-test'
topic_endpoint="arn:aws:sns:ap-southeast-1:504441261471:$test_topic_name"

aws sns delete-topic \
--topic-arn $topic_endpoint
