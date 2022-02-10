#! /bin/bash
openssl sha256 "$1"
openssl sha256 "$1" | awk '{print $NF}' > digest
cmp -s digest $2
status=$?

if [ $status -ne 0 ] 
then 
    echo "$1 - failed verify"
else 
    echo "$1 - PASS"
fi

