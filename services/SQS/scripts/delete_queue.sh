#!/bin/bash
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws/services
test_queue_name='my-queue-test'
queue_endpoint_url="https://ap-southeast-1.queue.amazonaws.com/504441261471/$test_queue_name"
aws sqs delete-queue \
--queue-url $queue_endpoint_url