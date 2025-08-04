#!/bin/bash

echo "Running disk write test..."
dd if=/dev/zero of=testfile bs=1G count=1 oflag=dsync

echo "Running disk read test..."
hdparm -Tt /dev/sda

rm testfile
