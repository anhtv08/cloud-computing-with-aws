#!/bin/bash

aws_working_dir=$HOME/working/cloud-computing/aws/services
test_topic_name='my-topic-test'
topic_endpoint="arn:aws:sns:ap-southeast-1:504441261471:$test_topic_name"
email_consume_protocol="email"
email_end_point="anhtv010888@gmail.com"
# for index in "{0..10}"; do
aws sns subscribe \
--topic-arn $topic_endpoint \
--protocol $email_consume_protocol \
--notification-endpoint $email_end_point
# done
