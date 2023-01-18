#!/bin/bash


read -p 'Enter the username to create: ' USER_NAME
read -p 'Enter the name of the person or application that will be using this account: ' COMMENT
read -sp 'Enter the password to use for the account: ' PASSWORD
useradd -c "${COMMENT}" -m ${USER_NAME} 2> /dev/null

if [[ "${?}" -ne 0 ]]
then
  echo 'This username is already exit. Please select different username '
  exit 1
fi


echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
  echo 'The password for the account could not be set.'
  exit 1
fi



passwd -e ${USER_NAME}


echo "${USER_NAME}"

echo "${PASSWORD}"
