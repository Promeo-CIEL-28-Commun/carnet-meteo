#!/bin/bash
# Usage ./releve.sh <ville> <temperature>
echo "$(date '+%Y-%m-%d %H:%M') ; $1 ; $2 °C" >> releves.txt
echo "Relevé enregistré pour $1"
