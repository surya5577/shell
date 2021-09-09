#!/bin/bash
#set -x -e
read -p "enter the username:" USER_NAME
SPEC='!@#$%^&*()_'
SPECCHAR=$( echo ${SPEC} | fold -w1 |shuf | head -1 )
PASSWORD=${RANDOM}$(date +%s%N)${SPECCHAR}
useradd -m ${USER_NAME}
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
echo "succussfully created user ${USER_NAME} with password as ${PASSWORD}"
