#!/bin/bash

aws_working_dir=$HOME/working/cloud-computing/aws/services
test_topic_name='my-topic-test'
topic_endpoint="arn:aws:sns:ap-southeast-1:504441261471:$test_topic_name"

declare -a data=(
    "test1"
    "test2"
    "test3"
    "test4"
    "test5"
)

for item in "${data[@]}"; do
    aws sns publish \
    --topic-arn $topic_endpoint \
    --message $item
done
