#!/bin/bash
export aws_home_dir="$HOME/working/cloud-computing/aws/services"

action=$1
cert_name=mycustomCert
cert_file="$aws_home_dir/server.csr"
cert_private_key_file="$aws_home_dir/server.key"

function uploadCert(){
    aws iam upload-server-certificate \
    --server-certificate-name $cert_name \
    --certificate-body file://$cert_file \
    --certificate-chain file://$cert_file \
    --private-key file://$cert_private_key_file   
}
function delete_cert(){
    echo "to be implemented"
}

case $action in 
    upload)
       uploadCert 
       ;;
    delete)
       delete_cert 
       ;;
    *)
        echo "action is not supported"
       ;;
esac    

