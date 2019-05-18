#!/bin/bash

# initial setup
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws
file_name=test_data.txt
bucket_name="j-aws-s3-bucket-test"
region_name="ap-southeast-1"

# generate text
echo "This is pre-signed object url generating by cli." > "$aws_working_dir/data/$file_name"

eval "aws s3api head-bucket --bucket $bucket_name 2>/dev/null"
ret_code=$?

#create bucket
if [[ $ret_code -ne 0 ]] ; then
    echo "creating bucket "
    aws s3api create-bucket \
     --bucket $bucket_name \
     --region $region_name \
     --create-bucket-configuration LocationConstraint=$region_name
fi

#copy from local 
aws s3 cp "$aws_working_dir/data/$file_name" "s3://$bucket_name/"

#sign s3 url object with expirary 60 seconds
aws s3 presign "s3://$bucket_name/$file_name" --expires-in 60