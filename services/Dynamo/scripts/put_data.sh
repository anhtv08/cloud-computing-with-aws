
#!/bin/bash
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

table_name='myDynamoTbl'
aws dynamodb \
put-item --table-name $table_name \
--item '{
  "userId": {
    "S": "test1"
  },
  "student": {
    "S": "trang1"
  }
}'
ret_code=$?
if [ $ret_code -eq 0 ]; then
    echo "putting data into dynamo completed!"
fi

echo "querying data from arango"

aws dynamodb query --table-name $table_name \
    --key-condition-expression "userId = :user1" \
    --expression-attribute-values '{":user1" : {"S": "test1"}}'
