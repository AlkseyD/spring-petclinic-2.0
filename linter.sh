#!/bin/bash
dockerfile=$1
shift
output=$(docker run --rm -i hadolint/hadolint hadolint "$@" - < "$dockerfile")
echo "$output"
if [[ $output != "" ]]
then
exit 1
fi
