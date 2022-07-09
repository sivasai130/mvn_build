#!/bin/bash
cd /home/ec2-user
rm -rf https://github.com/sivasai130/projects1.git
git clone https://github.com/sivasai130/projects1.git
cd projects1
mvn clean install
if [ $?==0 ] ;then
        echo "build is success"
else
        echo "build is failed"
fi
cp -rp /home/ec2-user/projects1/target/*.jar /home/ec2-user/output
