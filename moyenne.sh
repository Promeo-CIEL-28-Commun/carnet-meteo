#!/bin/bash
# Affiche la température moyenne des relevés
awk -F ' ; ' '{ total += $3; n++ } END { if (n > 0) printf "Moyenne %.1f °C sur %d relevés\n", total/n, n }' releves.txt
