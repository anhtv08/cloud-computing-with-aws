#!/bin/bash

aws_working_dir=/Users/anhtrang/working/cloud-computing/aws/services

#Step 1: Generate a Private Key
openssl genrsa -des3 -passout pass:joey  \
-out $aws_working_dir/ELB/certs/server.key 1024

#Step 2: Generate a CSR (Certificate Signing Request)
openssl req -new \
-passin pass:joey \
-key $aws_working_dir/ELB/certs/server.key \
-out $aws_working_dir/ELB/certs/server.csr \
-subj "/C=SG/ST=Singapore/L=Singapore/O=Global Security/OU=IT Department/CN=example.com"

#Step 3: Remove Passphrase from Key
cp $aws_working_dir/ELB/certs/server.key \
$aws_working_dir/ELB/certs/server.key.org

openssl rsa \
-passin pass:joey \
-in $aws_working_dir/ELB/certs/server.key.org \
-out $aws_working_dir/ELB/certs/server.key

#Step 4: Generating a Self-Signed Certificate
openssl x509 -req -days 365 \
-in $aws_working_dir/ELB/certs/server.csr \
-signkey $aws_working_dir/ELB/certs/server.key \
-out $aws_working_dir/ELB/certs/server.crt
