# Marker guide in githup
[Readme Marker](https://help.github.com/en/articles/basic-writing-and-formatting-syntax)

## Provisioning a testing vpc using aws cloud formation.

### step by step for provisioning.
### Create new vpc
`./create_new_vpc.sh`
### Destroy newly created VPC
`./destroy_a_vpc.sh`

### Describe stack name
```
aws cloudformation describe-stack-events--stack-name vpc-stack-name-test
```
**Adding stack information**
