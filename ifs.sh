#!/bin/bash

oldIFS="$IFS"
IFS=:
echo "please input some data separated with colons..."
read x y z
echo "x is $x y is $y z is $z "
IFS="$old_IFS"
