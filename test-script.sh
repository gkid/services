#!/bin/bash

echo "==========================================================================" > test.txt
ls -la >> test.txt

echo "\nnice test\n==========================================================================" >> test.txt
aws s3api list-buckets --query 'Buckets[].Name' >> test.txt

tar -czf test.txt.tar.gz test.txt

ls

echo "----------------------------"
aws s3 sync test.txt.tar.gz s3://aaaa-test/
echo "done"
