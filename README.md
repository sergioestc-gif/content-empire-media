# content-empire-media

Host público de archivos (imágenes/videos) para postear a Instagram vía la Graph API.
La API de Instagram **no sube archivos locales**: necesita una **URL pública**. Este repo,
servido por GitHub Pages, da esas URLs.

## Uso
1. Poné el archivo en `media/` (ej. `media/reel_businessminds_01.mp4`).
2. `git add . && git commit -m "add media" && git push`
3. La URL pública es: `https://sergioestc-gif.github.io/content-empire-media/media/<archivo>`
4. Esa URL va al `image_url` / `video_url` de la MCP de Instagram.

## Reglas
- **Solo contenido destinado a publicarse** (este repo es PÚBLICO).
- Imágenes: JPEG/PNG. Reels: MP4 (H.264), vertical 9:16, < 100 MB.
- Para mucho volumen de video, migrar a Cloudflare R2 (egress gratis).
