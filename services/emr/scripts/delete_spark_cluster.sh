#!/bin/bash

aws_working_dir=$HOME/working/cloud-computing/aws/services
spark_cluster_ids="j-303WYFJQX0NVJ"

aws emr terminate-clusters \
--cluster-ids $spark_cluster_ids
