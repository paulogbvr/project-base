# GitHub Repository Setup

Este documento define a ordem correta para criar e subir um projeto baseado na Project Base para o GitHub.

## Regra principal

Criar o repositório no GitHub antes de tentar fazer push.

O commit pode existir localmente antes do repositório remoto, mas ele só aparecerá no GitHub depois de configurar o `origin` e fazer `git push`.

## Ordem oficial

1. Criar o repositório no GitHub.
2. Criar/copiar a base do projeto localmente.
3. Inicializar Git localmente, se ainda não existir.
4. Fazer o primeiro commit.
5. Conectar o repositório local ao GitHub.
6. Fazer o primeiro push.
7. Confirmar se o repositório remoto está correto.

## Criando o repositório no GitHub

Ao criar o repositório no GitHub, usar:

```txt
Repository name: nome-do-projeto
Description: descrição curta do projeto
Visibility: Private
README: não marcar
.gitignore: não marcar
License: não marcar
```

Não marcar README, .gitignore ou licença quando esses arquivos já existirem localmente.

## Por que não marcar README/.gitignore/license

A Project Base já cria:

- README.md
- .gitignore
- documentação
- estrutura inicial

Se o GitHub criar arquivos também, pode gerar conflito no primeiro push.

## Depois de criar o repositório

Dentro da pasta local do projeto, rodar:

```bash
git branch -M main
git remote add origin https://github.com/USUARIO/NOME-DO-REPOSITORIO.git
git push -u origin main
```

Exemplo:

```bash
git branch -M main
git remote add origin https://github.com/paulogbvr/project-base.git
git push -u origin main
```

## Se o remote já existir

Usar:

```bash
git remote set-url origin https://github.com/USUARIO/NOME-DO-REPOSITORIO.git
git push -u origin main
```

## Conferência

Depois do push, rodar:

```bash
git remote -v
git status --short
git log --oneline --max-count=3
```

Resultado esperado:

- `origin` apontando para o repositório correto;
- `git status --short` sem arquivos pendentes;
- último commit aparecendo em `origin/main`.

## Exemplo de saída correta

```txt
origin  https://github.com/usuario/nome-do-repo.git (fetch)
origin  https://github.com/usuario/nome-do-repo.git (push)

abc1234 (HEAD -> main, origin/main) Initial project structure
```

## Quando fazer commit

Durante uma grande etapa de refinamento, não precisa fazer commit a cada arquivo.

Estratégia recomendada:

1. Refinar blocos de arquivos.
2. Conferir `git diff --shortstat`.
3. Revisar no VS Code.
4. Fazer commit consolidado.
5. Fazer push.

## Antes do commit

Rodar:

```bash
git status --short
git diff --stat
git diff --shortstat
```

## Commit consolidado

Exemplo:

```bash
git add .
git commit -m "Refine Project Base documentation"
```

## Push

Depois:

```bash
git push
```

## Erros comuns

### Remote não existe

Criar repositório no GitHub primeiro.

### Remote já existe

Usar `git remote set-url origin ...`.

### README conflitante

Não criar README no GitHub quando já existe localmente.

### Nada aparece no GitHub

Provavelmente o commit existe apenas localmente.

Verificar:

```bash
git remote -v
git status --short
git log --oneline --max-count=3
git push
```

## Checklist

- [ ] Repositório criado no GitHub?
- [ ] Visibility definida?
- [ ] README não marcado?
- [ ] .gitignore não marcado?
- [ ] License não marcada?
- [ ] Git local iniciado?
- [ ] Primeiro commit feito?
- [ ] Remote origin configurado?
- [ ] Push feito?
- [ ] `origin/main` confirmado?
