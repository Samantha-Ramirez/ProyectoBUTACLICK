#!/bin/sh
set -e

cd /app

if [ ! -d node_modules ] || [ -z "$(ls -A node_modules 2>/dev/null)" ]; then
    echo "[frontend] node_modules no existe. Ejecutando npm install..."
    npm install
else
    echo "[frontend] node_modules detectado. Saltando npm install."
fi

exec npm run dev -- --host 0.0.0.0 --port 5173
