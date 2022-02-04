#! /bin/bash
echo $1
openssl sha256 $1 | awk '{print $NF}' > digest
cmp digest Icon.digest
# if ($status) ; then echo "Different"; else echo "OK"; fi

