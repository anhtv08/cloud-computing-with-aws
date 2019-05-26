#!/bin/bash

aws_working_dir=$HOME/working/cloud-computing/aws/services
spark_cluster_name="spark-cluster-test"
spark_app_name="my-spark-app-test"
key_name="joeytrang_key"
sub_net_0=subnet-0ee3d0ec8eaa6808b
sub_net_1=subnet-0f618e2d2fa501308
instance_type=m1.medium
instance_count=1
aws emr create-cluster \
--name $spark_cluster_name \
--release-label emr-5.23.0 \
--ec2-attributes KeyName=$key_name,SubnetIds=$sub_net_0 \
--instance-type $instance_type  \
--instance-count $instance_count \
--use-default-roles

