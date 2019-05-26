#!/bin/bash
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws/services
test_queue_name='my-queue-test'
aws sqs create-queue \
--queue-name $test_queue_name

