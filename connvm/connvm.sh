#!/bin/bash

vm_passwords=$(kwallet-query kdewallet -r connvm)
if [ -z "$vm_passwords" ]; then
    echo "Could not get passwords from kwallet"
else
    export vm_passwords;
    connvm_expect "$@"
fi