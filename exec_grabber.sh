#!/usr/bin/env bash
# 1) Bağımlılıkları tek seferde kur
python3 -m pip install --upgrade yt-dlp requests lxml pytz beautifulsoup4

# 2) youtube-dl çağrılarını yt-dlp'ye yönlendirmek için sembolik link (drop-in replacement)
ln -sf "$(command -v yt-dlp)" ~/.local/bin/youtube-dl  # veya /usr/local/bin

# 3) Asıl dönüştürücü skripti çalıştır
python3 YouTubeLinkGrabber.py > ./youtube.m3u8

echo "M3U update complete."
