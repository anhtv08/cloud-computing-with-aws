# cloud-computing-with-aws

### using the reference from awslab: `https://github.com/awslabs`
**This is project structure**
```

├── AutoScaling
│   ├── AutoScalingMultiAZWithNotifications.yaml
│   └── scripts
│       ├── create_auto_scaling_group.sh
│       └── delete_auto_scaling_group.sh
├── DirectoryService
├── Dynamo
│   ├── create_dynamo_table_template.yaml
│   └── scripts
│       ├── create_dynamo_tbl.sh
│       ├── delete_dynamo_tbl.sh
│       └── put_data.sh
├── ECS
├── ELB
├── IAM
├── Lambda
├── RDS
│   ├── RDS_MySQL_With_Read_Replica.yaml
│   └── scripts
│       ├── create_rds_instance.sh
│       ├── create_rds_with_mysql_engine.sh
│       ├── delete_rds_instance.sh
│       └── delete_rds_with_mysql_engine.sh
├── S3
│   ├── S3_Website_Bucket_With_Retain_On_Delete.yaml
│   ├── scripts
│   │   ├── create_website_pages.sh
│   │   ├── pre_sign_s3_object.sh
│   │   ├── s3_cleanup_bucket.sh
│   │   ├── s3_create_bucket.sh
│   │   └── s3_delete_bucket.sh
│   └── static_data
│       └── index.html
├── S53
├── SNS
├── SQS
├── ec2
│   ├── ec2_instance_with_sg.yaml
│   └── scripts
│       ├── ec2_create_instance.sh
│       └── ec2_delete_instance.sh
├── test.txt
└── vpc
    ├── readme.md
    ├── scripts
    │   ├── vpc_create_new_vpc.sh
    │   ├── vpc_create_with_muliple_subnets.sh
    │   ├── vpc_delete_with_muliple_subnets.sh
    │   └── vpc_destroy_a_vpc.sh
    ├── vpc_single_instance_into_subnet.template
    └── vpc_with_managed_NAT_And_Private_Subnet.yaml
```