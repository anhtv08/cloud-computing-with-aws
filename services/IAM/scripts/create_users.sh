#!/bin/bash
aws_working_dir=/Users/anhtrang/working/cloud-computing/aws

declare -a list_of_users=(
    "j_cli_user1"
    "j_cli_user2"
    "j_cli_user3"
    "j_cli_user4"
)

for user_name in "${list_of_users[@]}"; do
    aws iam  create-user --user-name $user_name
done

