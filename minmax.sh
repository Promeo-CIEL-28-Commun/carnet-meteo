# 1. Créer et basculer sur la branche feature/min-max
git checkout -b feature/min-max

# 2. Créer le script minmax.sh
cat << 'EOF' > minmax.sh
#!/bin/bash
# Script pour afficher la température minimale et maximale

if [ $# -lt 2 ]; then
    echo "Usage: $0 temp1 temp2 [temp3 ...]"
    exit 1
fi

min=$1
max=$1

for temp in "$@"; do
    if (( $(echo "$temp < $min" | bc -l) )); then
        min=$temp
    fi
    if (( $(echo "$temp > $max" | bc -l) )); then
        max=$temp
    fi
done

echo "Température minimale : $min°C"
echo "Température maximale : $max°C"
EOF

# Make script executable
chmod +x minmax.sh

# 3. Ajouter le fichier au suivi Git et commiter
git add minmax.sh
git commit -m "feat: ajout du script minmax.sh pour calculer les températures min et max"

# 4. Pousser la branche sur le dépôt distant (GitHub/GitLab)
git push -u origin feature/min-max
