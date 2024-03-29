#!/bin/bash
# process new user accounts
input="./files/users.txt"
while IFS=',' read -r userid name
do
echo "adding $userid"
useradd -c "$name" -m $userid
done < "$input"
tail /etc/passwd