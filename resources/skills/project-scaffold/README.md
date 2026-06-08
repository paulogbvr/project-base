# Project Scaffold Skill

Skill auxiliar para criar novos projetos a partir da Project Base.

## Objetivo

Transformar uma ideia planejada com ChatGPT em uma base local pronta para desenvolvimento.

## Fluxo ideal

1. Usuário conversa com ChatGPT.
2. ChatGPT entrevista o usuário.
3. ChatGPT organiza requisitos.
4. ChatGPT define nome do projeto.
5. ChatGPT define pasta destino.
6. ChatGPT define stack/template.
7. ChatGPT gera comando.
8. Usuário roda no terminal.
9. Base é criada.
10. Repositório GitHub é conectado.
11. Claude/Codex recebe prompt de implementação.

## Informações necessárias

Antes de criar scaffold, definir:

- nome técnico;
- nome comercial;
- descrição;
- pasta destino;
- tipo de projeto;
- stack;
- cor de acento;
- se terá Supabase;
- se terá login;
- se terá links compartilhados;
- se terá API;
- se terá pagamento;
- se terá storage;
- se terá deploy.

## Nome técnico

Usar para:

- pasta;
- repositório;
- variáveis;
- localStorage keys;
- prefixos.

Exemplo:

- `food-orders`
- `project-base`
- `worklog`

## Nome comercial

Usar para:

- UI;
- README;
- proposta;
- metadata.

Exemplo:

- Central de Pedidos Rukka
- WorkLog
- Project Base

## Placeholders futuros

Possíveis placeholders:

- `{{PROJECT_NAME}}`
- `{{PROJECT_SLUG}}`
- `{{PROJECT_DESCRIPTION}}`
- `{{COMMERCIAL_NAME}}`
- `{{ACCENT_COLOR}}`
- `{{CLIENT_NAME}}`
- `{{CREATED_AT}}`

## Script futuro

Arquivo planejado:

- `scripts/create-project-from-base.sh`

Ideia:

```txt
./scripts/create-project-from-base.sh nome-do-projeto /caminho/de/destino
```

Futuro possível:

```txt
npx create-project-base nome-do-projeto --path ~/vscode --accent red
```

## GitHub

Ordem correta:

1. Criar repo no GitHub.
2. Criar base local.
3. Commit.
4. Conectar remote.
5. Push.

Ver:

- `docs/workflows/GITHUB_REPOSITORY_SETUP.md`

## Templates

Templates planejados:

- `templates/next-saas/`
- `templates/docs-only/`

## Saída esperada

O scaffold deve criar:

- README;
- START_HERE;
- AGENTS;
- CLAUDE;
- CODEX;
- docs;
- project-memory;
- agent-state;
- agent-reports;
- env examples;
- gitignore;
- estrutura src quando for projeto web;
- resources/skills quando fizer sentido.

## Checklist

- [ ] Nome técnico definido?
- [ ] Nome comercial definido?
- [ ] Pasta destino definida?
- [ ] GitHub criado?
- [ ] Stack definida?
- [ ] Cor de acento definida?
- [ ] Segurança considerada?
- [ ] Docs criados?
- [ ] Env examples criados?
- [ ] Agentes configurados?
- [ ] Primeiro prompt gerado?
