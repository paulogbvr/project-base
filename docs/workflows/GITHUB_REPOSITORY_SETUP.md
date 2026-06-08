# GitHub Repository Setup

Este documento define a ordem correta para criar e subir um projeto baseado na Project Base para o GitHub.

## Ordem oficial

1. Criar o repositório no GitHub.
2. Criar ou copiar a base do projeto localmente.
3. Inicializar Git localmente, se ainda não existir.
4. Fazer o primeiro commit.
5. Conectar o repositório local ao GitHub.
6. Fazer o primeiro push.
7. Confirmar se o repositório remoto está correto.

## Criando o repositório no GitHub

Ao criar o repositório no GitHub, usar:

Repository name: nome-do-projeto  
Description: descrição curta do projeto  
Visibility: Private  
README: não marcar  
.gitignore: não marcar  
License: não marcar  

Não marcar README, .gitignore ou licença quando esses arquivos já existirem localmente.

## Depois de criar o repositório

Dentro da pasta local do projeto, rodar:

git branch -M main
git remote add origin https://github.com/USUARIO/NOME-DO-REPOSITORIO.git
git push -u origin main

Exemplo:

git branch -M main
git remote add origin https://github.com/paulogbvr/project-base.git
git push -u origin main

## Se o remote já existir

Usar:

git remote set-url origin https://github.com/USUARIO/NOME-DO-REPOSITORIO.git
git push -u origin main

## Conferência

Depois do push, rodar:

git remote -v
git status --short
git log --oneline --max-count=3

Resultado esperado:

- origin apontando para o repositório correto
- git status --short sem arquivos pendentes
- último commit aparecendo em origin/main

## Regra importante

Sempre criar o repositório no GitHub antes de tentar fazer push.

O commit pode existir localmente antes do repositório remoto, mas ele só aparecerá no GitHub depois de configurar o origin e fazer git push.
