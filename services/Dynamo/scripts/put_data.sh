
#!/bin/bash
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

table_name='myDynamoTbl'

# put 100 times to dynamo table

for i in `seq 100`; do

echo "iteration: $i"
aws dynamodb \
put-item --table-name $table_name \
--item '{
  "userId": {
    "S": "test1"
  },
  "student": {
    "S": "trang van anh"
  }
}'
ret_code=$?
if [ $ret_code -eq 0 ]; then
    echo "putting data into dynamo completed!"
fi
OperationNotPageableError
done



echo "querying data from arango"


for i in `seq 100`; do

echo "query iteration: $i"
aws dynamodb query --table-name $table_name \
    --key-condition-expression "userId = :user1" \
    --expression-attribute-values '{":user1" : {"S": "test1"}}'

done

