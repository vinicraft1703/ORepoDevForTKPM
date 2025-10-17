#!/bin/sh

echo "🔧 Instalando KindleForge..."

mkdir -p /mnt/us/extensions/TKPM/.TKPM/tmp

curl -s -L "https://github.com/vinicraft1703/ORepoDevForTKPM/blob/main/Package-KindleForge.zip?raw=true" -o "/mnt/us/extensions/TKPM/.TKPM/tmp/Package-KindleForge.zip"

unzip -o "/mnt/us/extensions/TKPM/.TKPM/tmp/Package-KindleForge.zip" -d "/mnt/us/extensions/TKPM/.TKPM/tmp"

cp -r "/mnt/us/extensions/TKPM/.TKPM/tmp/KindleForge.sh" /mnt/us/documents/
cp -r "/mnt/us/extensions/TKPM/.TKPM/tmp/KindleForge/" /mnt/us/documents/

rm "/mnt/us/extensions/TKPM/.TKPM/tmp/Package-KindleForge.zip"

echo "✅ KindleForge instalado com sucesso!"
