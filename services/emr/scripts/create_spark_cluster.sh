#!/bin/bash

aws_working_dir=$HOME/working/cloud-computing/aws/services
spark_cluster_name="spark-cluster-test"
spark_app_name="my-spark-app-test"
key_name="joeytrang_key"
instance_type=t2.micro
instance_count=3
aws emr create-cluster \
--name $spark_cluster_name \
--release-label emr-5.23.0 \
--applications Name=$spark_app_name \
--ec2-attributes KeyName=$key_name \
--instance-type $instance_type  \
--instance-count $instance_count \
--use-default-roles
