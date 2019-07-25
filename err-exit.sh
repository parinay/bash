#!/bin/bash

trap onError ERR

onError()
{
  echo "Failed in script \"$0\" at line $BASH_LINENO"
  exit 1
}

echo Hello
true
echo This is a test
false # This command always fails
echo Done
exit 0
