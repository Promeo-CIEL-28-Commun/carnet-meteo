#!/bin/bash
# Usage ./releve.sh <ville> <temperature>
if [ $# -ne 2 ]; then
  echo "Usage ./releve.sh <ville> <temperature>"
  exit 1
fi
echo "$(date '+%Y-%m-%d %H:%M') ; $1 ; $2 °C" >> releves.txt
echo "Relevé enregistré pour $1"
