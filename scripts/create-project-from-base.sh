#!/usr/bin/env bash

# Project Base — Future Scaffold Script
#
# Este script ainda é um rascunho.
# A ideia futura é criar projetos a partir da Project Base automaticamente.
#
# Uso futuro planejado:
#
# ./scripts/create-project-from-base.sh nome-do-projeto /caminho/de/destino
#
# Exemplo:
#
# ./scripts/create-project-from-base.sh food-orders ~/vscode
#
# Futuro possível:
#
# npx create-project-base food-orders --path ~/vscode --accent red

set -e

PROJECT_NAME="$1"
DESTINATION_PATH="$2"

if [ -z "$PROJECT_NAME" ]; then
  echo "[ERRO] Informe o nome técnico do projeto."
  echo "Exemplo:"
  echo "./scripts/create-project-from-base.sh food-orders ~/vscode"
  exit 1
fi

if [ -z "$DESTINATION_PATH" ]; then
  echo "[ERRO] Informe o caminho de destino."
  echo "Exemplo:"
  echo "./scripts/create-project-from-base.sh food-orders ~/vscode"
  exit 1
fi

echo "→ Script futuro para criar projetos a partir da Project Base."
echo ""
echo "Projeto: $PROJECT_NAME"
echo "Destino: $DESTINATION_PATH"
echo ""
echo "Este script ainda não copia arquivos de verdade."
echo ""
echo "Roadmap do script:"
echo "1. Validar nome técnico."
echo "2. Validar pasta destino."
echo "3. Copiar Project Base."
echo "4. Substituir placeholders."
echo "5. Ajustar README/START_HERE."
echo "6. Ajustar localStorage keys."
echo "7. Ajustar .env.example."
echo "8. Inicializar Git."
echo "9. Orientar criação do GitHub."
echo "10. Gerar primeiro prompt para agente."
