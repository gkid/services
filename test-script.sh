#!/bin/bash

echo "==========================================================================" > test.txt
ls -la >> test.txt

echo "\nnice test\n==========================================================================" >> test.txt
aws s3api list-buckets --query 'Buckets[].Name' >> test.txt

ls

echo "----------------------------"
echo "done"
