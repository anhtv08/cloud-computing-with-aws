#!/bin/bash
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws

declare -a groups_name=(
    "j_networkGroup"
    "j_dbGroup"
    "j_AppsGroup"
    "j_OpsGroup"
)

for group_name in "${groups_name[@]}"; do
    aws iam  create-group --group-name $group_nsame
done

