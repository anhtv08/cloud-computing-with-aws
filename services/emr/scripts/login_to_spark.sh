#!/bin/bash
private_key_loc=$HOME/working/devops/aws/joeytrang_key.pem
spark_dns_name="hadoop@ec2-54-179-147-224.ap-southeast-1.compute.amazonaws.com"
# spark_dns_name="ec2-54-179-147-224.ap-southeast-1.compute.amazonaws.com"
ssh -i $private_key_loc $spark_dns_name
