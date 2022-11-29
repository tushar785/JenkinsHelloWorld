#!/bin/sh

option="${1}"

case ${option} in

   -f) FILE="`ls -lrt ${2}`"
      echo "File name is $FILE"
      ;;

   -d) DIR="`ls -ld ${2}`"
      echo "Dir name is ls -ld $DIR"
      ;;

   *)
      echo "`basename ${0}`:usage: [-f file] | [-d directory]"
      exit 1 # Command to come out of the program with status 1
      ;;
esac
