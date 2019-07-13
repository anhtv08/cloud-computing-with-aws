import boto3
client = boto3.client('ec2')


response = client.describe_addresses(
    Filters=[
        {
            'Name': 'string',
            'Values': [
                'string',
            ]
        },
    ],
    PublicIps=[
        'string',
    ],
    AllocationIds=[
        'string',
    ],
    DryRun=True|False
)

print(response)




