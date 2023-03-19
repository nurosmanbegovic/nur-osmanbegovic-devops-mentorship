#!/bin/bash
# redirecting output to different locations
exec 2> ./files/script64err.txt
echo "This is the start of the script"
echo "now redirecting all output to another location"
exec 1> ./files/script64out.txt
echo "This output should go to the testout file"
echo "but this should go to the testerror file" >&2