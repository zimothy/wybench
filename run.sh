#!/bin/bash

NRUNS=100
NRAMPUPS=20

concurrent="sum matrix"

for bench in $concurrent
do
  for i in `seq 10 200`
  do
    java -cp "$WHILEY_HOME/lib/wyrt.jar:concurrent/micro/$bench" Gen i > "concurrent/micro/$bench/gen.in"
    echo "$bench: for $i"
    echo "================================="
    echo -n "Master: "
    java -server -cp "dave-wybench:$HOME/Projects/dave-whiley/lib/wyrt.jar:dave-wybench/concurrent/micro/$bench" Runner -r$NRAMPUPS -n$NRUNS Main dave-wybench/concurrent/micro/$bench/gen.in
    echo -n "Actors: "
    java -server -cp "wybench:$WHILEY_HOME/lib/wyrt.jar:wybench/concurrent/micro/$bench" Runner -r$NRAMPUPS -n$NRUNS Main wybench/concurrent/micro/$bench/gen.in
    echo ""
  done
done
