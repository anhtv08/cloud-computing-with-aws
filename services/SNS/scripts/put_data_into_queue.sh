#!/bin/bash
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws/services
declare -a data=(
    "test1"
    "test2"
    "test3"
    "test4"
    "test5"
)

test_queue_name='my-queue-test'
queue_endpoint_url="https://ap-southeast-1.queue.amazonaws.com/504441261471/$test_queue_name"

for item in "${data[@]}"; do
  aws sqs send-message \
    --queue-url $queue_endpoint_url \
    --message-body $item
done