#!/bin/sh

# Verifica se o comando e o pacote foram informados
if [ "$#" -lt 2 ]; then
    echo "Uso: TKPM.sh install <NomeDoPacote>"
    exit 1
fi

COMANDO="$1"
PACOTE="$2"

if [ "$COMANDO" = "install" ]; then
    URL=$(grep "^$PACOTE " Index.txt | awk '{print $2}')
    if [ -z "$URL" ]; then
        echo "❌ Pacote '$PACOTE' não encontrado."
        exit 1
    fi

    echo "⬇️ Baixando script de instalação..."
    curl -s "$URL" -o "Install-$PACOTE.sh"
    chmod +x "Install-$PACOTE.sh"
    echo "🚀 Executando script..."
    sh "Install-$PACOTE.sh"
else
    echo "❌ Comando desconhecido: $COMANDO"
fi
