#!/bin/bash
# testing closing file descriptors
exec 3> ./files/script71
echo "This is a test line of data" >&3
exec 3>&-
cat ./files/script71
exec 3> ./files/script71
echo "This'll be bad" >&3