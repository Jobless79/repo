#!/bin/bash

if [[ $1 == "--date" ]]; then
  date
elif [[ $1 == "--logs" ]]; then
  echo -n "Logi do utworzenia: "
  read num_logs

  # Validate user input (optional)
  if ! [[ "$num_logs" =~ ^[1-9][0-9]*$ ]]; then
    echo "Nie mozna utworzyc mniej niz 0 logow."
    exit 1
  fi

  for (( i=1; i<=$num_logs; i++ )); do
    echo "Log numer $i stworzony przez $0" > "log_$i.txt"
  done
elif [[ $1 == "--help" ]]; then
  echo "Użycie: ./skrypt.sh [Opcje]"
  echo "Opcje:"
  echo "  --date	Aktualna data"
  echo "  --logs	Produkuje wybraną liczbę logów"
  echo "  --help	Wyświetla tą wiadomość"
else
  echo "Zly argument - użyj --help"
fi