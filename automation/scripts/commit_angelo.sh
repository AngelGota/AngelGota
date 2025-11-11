#!/bin/bash
# Actualiza la fecha y hora en el README o en un archivo de logs
DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

# Archivo donde se verá la actualización
echo "🕓 Última actualización automática: $DATE" > automation/data/last_update.md

# Commit
git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git add automation/data/last_update.md
git commit -m "chore: auto-update heartbeat at $DATE" || echo "No hay cambios"