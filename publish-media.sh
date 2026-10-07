#!/usr/bin/env bash
# Sube un archivo de media al host público y te imprime la URL lista para Instagram.
# Uso:  bash publish-media.sh /ruta/al/archivo.mp4  [nombre-destino-opcional.mp4]
set -euo pipefail
SRC="${1:?Uso: publish-media.sh <archivo> [nombre-destino]}"
[ -f "$SRC" ] || { echo "No existe: $SRC" >&2; exit 1; }
DEST="${2:-$(basename "$SRC")}"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"
cp "$SRC" "media/$DEST"
git add "media/$DEST"
git commit -q -m "media: $DEST"
git push -q origin main
URL="https://sergioestc-gif.github.io/content-empire-media/media/$DEST"
echo ""
echo "✅ Subido. URL pública (puede tardar ~30-60s en estar activa):"
echo "   $URL"
echo ""
echo "   Verificá con:  curl -sI \"$URL\" | head -1"
