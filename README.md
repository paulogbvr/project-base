# Project Base

Project Base é uma base padrão para iniciar projetos com planejamento, documentação, agentes de IA, segurança, design, workflows, memória de projeto e relatórios.

Ela foi criada para transformar uma ideia solta em um projeto organizado, pronto para ser planejado com ChatGPT e executado com Claude, Codex ou outro agente de desenvolvimento.

## Ideia central

A Project Base não é apenas um template de site.

Ela é um sistema de trabalho.

O fluxo principal é:

1. Conversar primeiro com ChatGPT.
2. Fazer uma entrevista detalhada do projeto.
3. Organizar visão, escopo, arquitetura, segurança e design.
4. Criar a base local do projeto.
5. Criar ou conectar o repositório no GitHub.
6. Enviar prompts para Claude/Codex executar.
7. Fazer o agente atualizar arquivos de estado e relatórios.
8. Enviar esses arquivos de volta ao ChatGPT.
9. Continuar o ciclo com mais clareza e menos retrabalho.

## Para quem é

Esta base serve para criar:

- sistemas internos;
- dashboards;
- SaaS;
- landing pages;
- áreas de cliente;
- links compartilhados;
- sistemas com admin;
- projetos com Supabase;
- projetos com APIs externas;
- projetos com pagamento;
- projetos com WhatsApp;
- ferramentas próprias;
- propostas e workflows comerciais;
- projetos que serão desenvolvidos com agentes de IA.

## Por que existe

Projetos feitos com IA podem se perder quando:

- o agente atinge limite de sessão;
- a conversa fica grande demais;
- decisões ficam só no chat;
- o agente esquece o contexto;
- arquivos são alterados sem relatório;
- segurança fica para depois;
- o projeto cresce sem estrutura;
- o usuário precisa explicar tudo de novo.

A Project Base resolve isso criando uma estrutura com:

- documentação viva;
- memória de projeto;
- estado de sessão do agente;
- relatórios;
- workflows;
- padrões de segurança;
- padrões de design;
- prompts reutilizáveis.

## Como trabalhar com esta base

O jeito recomendado é:

```txt
ChatGPT → estratégia, planejamento, arquitetura, revisão e próximos passos
Claude/Codex → implementação, refatoração, execução e alteração de arquivos
Project Base → memória, documentação, padrões e continuidade
```

## Estrutura principal

Arquivos da raiz:

- `README.md` — visão geral da base
- `START_HERE.md` — guia para começar
- `AGENTS.md` — regras universais para agentes
- `CLAUDE.md` — regras específicas para Claude/Claude Code
- `CODEX.md` — regras específicas para Codex
- `.env.example` — variáveis de ambiente documentadas
- `.env.local.example` — modelo seguro para ambiente local
- `.gitignore` — arquivos ignorados, incluindo envs e segredos

Pasta principal:

- `docs/`

Recursos auxiliares:

- `resources/skills/`

Scripts futuros:

- `scripts/`

Templates futuros:

- `templates/`

## Documentação

O índice oficial da documentação fica em:

- `docs/PROJECT_MAP.md`

Sempre que criar, remover ou reorganizar arquivos importantes, atualize o Project Map.

## Agentes

Antes de qualquer agente trabalhar no projeto, ele deve ler:

- `AGENTS.md`
- `CLAUDE.md` ou `CODEX.md`
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`

## Estado da sessão

Arquivo principal:

- `docs/agent-state/CURRENT_SESSION.md`

Esse arquivo mostra onde o agente está, o que ele está fazendo, onde parou, quais arquivos alterou e o próximo passo.

Ele existe para evitar perda de contexto quando Claude/Codex chegam ao limite de sessão.

## Relatório do agente

Arquivo principal:

- `docs/agent-reports/latest.md`

Esse arquivo deve ser atualizado ao final de cada tarefa relevante.

Ele serve para o usuário enviar ao ChatGPT e continuar o planejamento sem precisar copiar respostas enormes do agente.

## Memória do projeto

Pasta:

- `docs/project-memory/`

Arquivos principais:

- `DECISIONS.md` — decisões tomadas
- `FINDINGS.md` — aprendizados, erros e riscos
- `PROGRESS.md` — progresso
- `TASK_PLAN.md` — tarefas
- `KNOWLEDGE_BASE.md` — base de conhecimento

## Segurança

A base já prevê documentação para:

- variáveis de ambiente;
- chaves de API;
- links compartilhados;
- tokens públicos;
- APIs;
- autenticação;
- storage;
- webhooks;
- RLS;
- testes de segurança.

Pasta:

- `docs/security/`

Regra principal:

Segurança não deve ficar para depois.

## Design

A base já prevê padrões para:

- visual monocromático premium;
- dark mode;
- light mode;
- pré-hidratação;
- sidebar;
- toasts;
- StatusPulse;
- skeleton loading refinado;
- feedback visual;
- componentes reutilizáveis.

Pasta:

- `docs/design/`

## Links compartilhados

A Project Base considera que muitos projetos terão links para clientes, propostas, pedidos, pagamentos, arquivos ou atualizações.

Por isso, ela documenta:

- tokens seguros;
- expiração;
- revogação;
- preview seguro;
- metadata sem dados sensíveis;
- mensagens de compartilhamento.

Arquivos importantes:

- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/workflows/SHARED_LINK_FLOW.md`
- `docs/brand/LINK_PREVIEW.md`
- `docs/brand/SHARE_MESSAGES.md`

## Mensagens WhatsApp

Mensagens finais para WhatsApp seguem o padrão:

- `*texto*` para negrito
- `_texto_` para itálico
- `_*texto*_` para negrito + itálico
- `>` para citação/destaque
- `→` para campo/direção
- `↓` antes de link ou ação abaixo
- `•` para bullet simples

Não usar `#` ou `##` como título.

Não usar emoji por padrão.

Arquivo:

- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

## GitHub

Antes de usar esta base em um projeto real, crie o repositório no GitHub e depois conecte o projeto local ao remote.

Guia completo:

- `docs/workflows/GITHUB_REPOSITORY_SETUP.md`

Ordem recomendada:

1. Criar repositório privado no GitHub.
2. Não marcar README, .gitignore ou licença se a base já tiver esses arquivos.
3. Criar/copiar a base localmente.
4. Fazer o primeiro commit.
5. Conectar o remote `origin`.
6. Fazer o primeiro push.
7. Conferir se `origin/main` aparece corretamente.

## Fluxo com ChatGPT e agentes

Depois que o agente trabalhar, peça para ele atualizar:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`

Depois envie esses arquivos ao ChatGPT para revisão e próximos passos.

## Regras importantes

- Não começar codando sem planejar.
- Não deixar decisões importantes só no chat.
- Não expor segredos.
- Não commitar `.env` ou `.env.local`.
- Não usar ID previsível em link público.
- Não confiar apenas na interface para segurança.
- Não deixar agente trabalhar sem atualizar estado/relatório.
- Não fazer commit/push sem intenção clara.
- Manter documentação viva.

## Status atual da base

A Project Base está em construção/refinamento.

Antes de usar como base final para outros projetos, revisar:

- README;
- START_HERE;
- AGENTS;
- CLAUDE;
- CODEX;
- docs principais;
- scripts;
- templates;
- skills auxiliares.

## Próximos passos recomendados

1. Revisar documentação principal.
2. Refinar skills auxiliares.
3. Criar script funcional para gerar projetos.
4. Criar template Next.js/SaaS.
5. Criar template docs-only.
6. Fazer commit consolidado.
7. Usar a base no primeiro projeto real.
