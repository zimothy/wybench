#!/bin/bash

NRUNS=100
NRAMPUPS=20

bench="sum"
i=1000

while [ $i -lt 100000 ]
do
  java -cp "concurrent/micro/$bench" Gen $i | tee "concurrent/micro/$bench/gen.in" > /dev/null
  echo -en "$i\t"
  java -server -cp ".:$HOME/Projects/dave-whiley/lib/wyrt.jar:concurrent/micro/$bench" Runner -r$NRAMPUPS -n$NRUNS Main concurrent/micro/$bench/gen.in
  echo ""
  let i=i+1000
done
