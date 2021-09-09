#!/bin/bash
#set -xe
read -p "please enter teh username :" USER_NAME
PASSWORD=$(curl -sL https://random.justyy.workers.dev/api/random/?n=10)
#read -s -p "please enter teh password :" USER_PASS
useradd -m ${USER_NAME}
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
echo "The username is ${USER_NAME} and Password is ${PASSWORD}"

