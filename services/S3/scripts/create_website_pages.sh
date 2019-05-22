#!/bin/bash

# initial setup
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws
#ts=$(date +%s%S)
file_name="index.html"
bucket_name="joey-aws-test-provision"
region_name="ap-southeast-1"

# generate text
#echo "This is pre-signed object url generating by cli at $ts" > "$aws_working_dir/data/$file_name"


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
#/Users/anhtrang/working/cloud-computing/aws/services/S3/static_data/index.html

aws s3 cp "$aws_working_dir/services/S3/static_data/$file_name" "s3://$bucket_name/"

#sign s3 url object with expirary 60 seconds
#aws s3 presign "s3://$bucket_name/$file_name" --expires-in 60