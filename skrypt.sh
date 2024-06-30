#!/bin/bash

echo ".gitignore" > .gitignore

if [[ $1 == "--date" || $1 == "-d" ]]; then
  date
fi

if [[ $1 == "--logs" || $1 == "-l" ]]; then
  if [[ $2 =~ ^[1-9][0-9]*$ ]]; then
    num_logs=$2
  else
    echo "Nieprawidłowy argument: Nie można utworzyć mniej niż 0 logów."
    exit 1
  fi

  for (( i=1; i<=$num_logs; i++ )); do
    echo "Log numer $i stworzony przez $0" > "log_$i.txt"
  done
fi

if [[ $1 == "--help" || $1 == "-h" ]]; then
  echo "Użycie: $0 [argument]"
  echo "Argumenty:"
  echo "  -d, --date     Wyświetla aktualną datę"
  echo "  -l, --logs N   Tworzy logi"
  echo "  -h, --help     Wyświetla tę wiadomość"
  exit 0
fi

while getopts ":hd:l:" opt; do
  case $opt in
    h)
      echo "Sposób użycia: $0 [OPCJE]"
      echo "Opcje:"
      echo "  -d       Wyświetla aktualną datę"
      echo "  -l       Tworzy logi"
      echo "  -h       Wyświetla tę wiadomość"
      exit 0
      ;;
    d)
      date
      ;;
    l)
      num_logs=$OPTARG
      if ! [[ "$num_logs" =~ ^[1-9][0-9]*$ ]]; then
        echo "Nieprawidłowy argument: Nie można utworzyć mniej niż 0 logów."
        exit 1
      fi
      for (( i=1; i<=$num_logs; i++ )); do
        echo "Log numer $i stworzony przez $0" > "log_$i.txt"
      done
      ;;
    \?)
      echo "Nieprawidłowy argument -$OPTARG. Użyj -h aby uzyskać pomoc."
      exit 1
      ;;
  esac
done
