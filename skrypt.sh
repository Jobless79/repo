#!/bin/bash

if [[ $1 == "--date" ]]; then
  date
fi

if [[ $1 == "--logs" ]]; then
  for i in {1..100}; do
    echo "plik numer $i stworzony przez $0" > "log_$i.txt"
  done
fi
