#!/bin/sh
output_directory="TEST-JUNIT-REPORTS-"$(date +%Y%m%d-%H%M)
cd behave/
python setup.py install
python setup.py develop
cd tests/
cd features/
echo "*****************************************************"
echo "*******************STARTING TEST*********************"
echo "*****************************************************"
tags=$1
echo "$tags"
if [ -n "$tags" ];then
echo "*****************Running 1**************************"
behave --format "json.pretty" --tags="$tags" --expand --verbose --junit --junit-directory="${output_directory}"
else
echo "*****************Running 2**************************"
behave --format "json.pretty" --expand --verbose --junit --junit-directory="${output_directory}"
fi