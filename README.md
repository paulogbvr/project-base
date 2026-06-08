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

<!-- PROJECT_BASE_CLONE_TUTORIAL_START -->

## Como criar um novo projeto usando a Project Base

Este tutorial mostra como criar um novo projeto a partir da Project Base sem apagar a base original.

A Project Base oficial está neste repositório:

```txt
https://github.com/paulogbvr/project-base.git
```

Você pode clonar esse repositório quantas vezes quiser, sempre usando um nome diferente para a pasta do novo projeto.

Exemplo de organização:

```txt
nome-da-sua-pasta-de-projetos/
  project-base/
  nome-da-pasta-do-projeto/
```

A pasta `project-base` pode continuar no computador como referência/base original.

O novo projeto deve ficar em outra pasta.

## 1. Entrar na pasta onde ficam seus projetos

Substitua `nome-da-sua-pasta-de-projetos` pelo caminho da pasta onde você guarda seus projetos.

```bash
cd nome-da-sua-pasta-de-projetos
```

## 2. Clonar a Project Base com o nome do novo projeto

Substitua `nome-da-pasta-do-projeto` pelo nome da pasta que você quer criar para o novo projeto.

```bash
git clone https://github.com/paulogbvr/project-base.git nome-da-pasta-do-projeto
```

Isso cria uma nova pasta baseada na Project Base.

A pasta `project-base` original não será apagada nem alterada.

## 3. Entrar na pasta do novo projeto

```bash
cd nome-da-pasta-do-projeto
```

## 4. Remover o Git antigo da Project Base

Este passo é importante.

Quando você clona a Project Base, o novo projeto ainda vem conectado ao repositório original da Project Base.

Para transformar essa cópia em um projeto novo, remova o Git antigo:

```bash
rm -rf .git
```

## 5. Iniciar um Git novo para o novo projeto

```bash
git init
git add .
git commit -m "Initial project from Project Base"
```

## 6. Criar um novo repositório no GitHub

Agora crie um repositório novo no seu GitHub para esse novo projeto.

Use:

```txt
Repository name: nome-do-repositorio
Description: descrição curta do projeto
Visibility: Private ou Public
README: não marcar
.gitignore: não marcar
License: não marcar
```

Não marque README, `.gitignore` ou licença, porque a Project Base já tem esses arquivos.

## 7. Conectar o projeto local ao novo repositório

Substitua `usuario-do-github` pelo seu usuário do GitHub.

Substitua `nome-do-repositorio` pelo nome do repositório novo que você criou.

```bash
git branch -M main
git remote add origin https://github.com/usuario-do-github/nome-do-repositorio.git
git push -u origin main
```

## 8. Conferir se deu certo

```bash
git status --short
git log --oneline --max-count=3
git remote -v
```

O ideal é:

- `git status --short` não mostrar nada;
- o último commit aparecer no topo;
- o remote `origin` apontar para o repositório novo do projeto;
- o remote `origin` não deve apontar para `paulogbvr/project-base`, porque esse é apenas o repositório da base original.

## Exemplo completo com placeholders

Substitua os valores antes de rodar.

```bash
cd nome-da-sua-pasta-de-projetos

git clone https://github.com/paulogbvr/project-base.git nome-da-pasta-do-projeto

cd nome-da-pasta-do-projeto

rm -rf .git

git init
git add .
git commit -m "Initial project from Project Base"
```

Depois crie o novo repositório no seu GitHub e rode:

```bash
git branch -M main
git remote add origin https://github.com/usuario-do-github/nome-do-repositorio.git
git push -u origin main
```

## Resumo importante

```txt
Não apague a pasta project-base.
Ela é sua base original.

Sempre clone a Project Base com outro nome de pasta.
Exemplo: nome-da-pasta-do-projeto.

A URL oficial da Project Base é:
https://github.com/paulogbvr/project-base.git

Depois de clonar, remova o .git antigo.
Depois crie um Git novo.
Depois conecte no repositório novo do projeto.

Nunca faça push de um projeto novo para o repositório paulogbvr/project-base.
Esse repositório é a base original.
```

<!-- PROJECT_BASE_CLONE_TUTORIAL_END -->

<!-- PROJECT_BASE_AGENT_START -->
## Agente oficial da Project Base

A Project Base possui um agente próprio no ChatGPT para ajudar no início de novos projetos:

```txt
Project Base | Architect
```

Use este agente para transformar uma ideia solta em um projeto bem estruturado antes de começar a codar.

Link do agente:

```txt
https://chatgpt.com/g/g-6a2655fc5d08819189f90606dbe27800-project-base-architect
```

## Para que serve

O agente ajuda a:

- fazer uma entrevista guiada sobre o projeto;
- entender o problema real;
- organizar requisitos;
- definir público e usuários;
- separar MVP do que fica para depois;
- pensar segurança desde o início;
- definir design, identidade visual e cor de acento;
- organizar GitHub, pastas e repositório;
- gerar comandos de terminal;
- gerar prompts para Claude/Codex;
- orientar como conferir `git status`, `git diff`, commits e push;
- manter o projeto alinhado com a estrutura da Project Base.

## Como usar

Comece uma conversa com o agente e explique sua ideia.

Exemplo:

```txt
Quero começar um projeto novo usando a Project Base.
```

O agente deve fazer perguntas antes de gerar comandos ou prompts finais.

Ele também deve perguntar qual sistema operacional você usa:

- macOS;
- Windows;
- Linux.

Assim ele consegue gerar comandos corretos para o seu ambiente.

## Fluxo recomendado com o agente

1. Explique a ideia do projeto.
2. Responda à entrevista guiada.
3. Confirme o escopo inicial.
4. Peça para o agente montar o plano.
5. Peça os comandos de terminal.
6. Crie o repositório no GitHub.
7. Rode os comandos localmente.
8. Use os prompts gerados para trabalhar com Claude/Codex.
9. Envie os relatórios e arquivos de volta ao agente/ChatGPT para continuar o ciclo.

## Observação importante

O agente não substitui a documentação da Project Base.

Ele serve para guiar o uso da base, organizar a ideia e gerar os próximos passos com mais clareza.

Sempre que o projeto evoluir, mantenha atualizados:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`
<!-- PROJECT_BASE_AGENT_END -->

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
