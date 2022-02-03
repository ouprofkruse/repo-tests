#! /bin/bash
openssl sha256 Icon.jpg | awk '{print $NF}' > digest
cmp -s digest Icon.digest || ( echo "Different" ; exit 1 )

