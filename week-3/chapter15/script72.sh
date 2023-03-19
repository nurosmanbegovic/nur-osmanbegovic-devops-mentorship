#!/bin/bash
# testing lsof with file descriptors
exec 3> ./files/script72_1
exec 6> ./files/script72_2
exec 7< ./files/script72
/usr/bin/lsof -a -p $$ -d0,1,2,3,6,7