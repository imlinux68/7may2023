#!/bin/bash

function makedirs() {
echo "1. creating dirs"
cd ~
mkdir -p aws/{compute/{mango,lambda},storage/{s3,vpc},database/rds,networking}
tree ~/aws

echo "2. move vpc to net"
mv ~/aws/storage/vpc ~/aws/networking/

echo "3. rename mango to ec2"
mv ~/aws/compute/mango ~/aws/compute/ec2

echo "4. create cloudcloud in net"
touch ~/aws/networking/cloudcloud

echo "5. copy file to compute"
cp ~/aws/networking/cloudcloud ~/aws/compute/

echo "6. copy s3 dir to aws"
cp -r ~/aws/storage/s3 ~/aws

echo "7. delete all dirs"
rm -rvf ~/aws
}
