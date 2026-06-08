# Start Here

Leia este arquivo antes de usar a Project Base.

Este é o guia inicial para começar um projeto usando esta base.

## O que é a Project Base

A Project Base é uma base de trabalho para iniciar projetos com organização, documentação, segurança, design, agentes de IA e memória.

Ela ajuda a criar projetos de forma mais previsível, evitando perda de contexto, retrabalho e bagunça de arquivos.

## Como pensar no fluxo

O fluxo recomendado é:

```txt
Você conversa com ChatGPT
↓
ChatGPT faz perguntas e organiza o projeto
↓
ChatGPT gera comandos e prompts
↓
Você roda no terminal
↓
Claude/Codex implementa
↓
O agente atualiza relatórios em Markdown
↓
Você envia esses relatórios ao ChatGPT
↓
ChatGPT analisa e orienta o próximo passo
```

## Antes de começar

Recomendado ter:

- VS Code instalado
- Git instalado
- Node.js LTS instalado
- Terminal funcionando
- Conta GitHub
- Uma pasta padrão para projetos, como `~/vscode`
- Acesso a ChatGPT para planejamento
- Acesso a Claude Code, Codex ou agente equivalente para implementação

## Organização recomendada no computador

Exemplo:

```txt
~/vscode/
  project-base/
  food-orders/
  worklog/
  core/
  outro-projeto/
```

A Project Base fica como base/referência.

Os outros projetos são criados a partir dela.

## Começando um projeto novo

### 1. Conversar primeiro com ChatGPT

Antes de criar código, explique o projeto.

Conte:

- o que você quer fazer;
- quem vai usar;
- qual problema resolve;
- qual prazo;
- quais referências tem;
- se tem APIs;
- se tem login;
- se tem pagamento;
- se tem dados sensíveis;
- qual estilo visual você quer.

O ChatGPT deve te entrevistar antes de gerar a base.

### 2. Criar repositório no GitHub

Antes de subir o projeto, crie um repositório no GitHub.

Configuração recomendada:

```txt
Repository name: nome-do-projeto
Description: descrição curta do projeto
Visibility: Private
README: não marcar
.gitignore: não marcar
License: não marcar
```

Não marque README, .gitignore ou licença se a base local já tiver esses arquivos.

Guia completo:

- `docs/workflows/GITHUB_REPOSITORY_SETUP.md`

### 3. Criar/copiar a base localmente

Por enquanto, a forma simples é copiar ou clonar a Project Base.

No futuro, o projeto terá um script para criar novos projetos automaticamente.

Script planejado:

- `scripts/create-project-from-base.sh`

### 4. Abrir no VS Code

Dentro da pasta do projeto:

```txt
code .
```

### 5. Conferir Git

Rodar:

```txt
git status --short
git log --oneline --max-count=3
```

### 6. Ler os arquivos principais

Antes de pedir para um agente trabalhar, revisar:

- `README.md`
- `START_HERE.md`
- `AGENTS.md`
- `CLAUDE.md`
- `CODEX.md`
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`

## Arquivos que você deve mandar para Claude/Codex

Quando for pedir implementação, mande o agente ler:

- `AGENTS.md`
- `CLAUDE.md` ou `CODEX.md`
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`

## Prompt inicial para agente

Use este modelo:

```txt
Retome o projeto a partir do estado atual do repositório.

Antes de alterar qualquer coisa, rode:

git status
git diff --stat

Leia obrigatoriamente:

- AGENTS.md
- CLAUDE.md ou CODEX.md
- docs/PROJECT_MAP.md
- docs/agent-state/CURRENT_SESSION.md
- docs/project-memory/TASK_PLAN.md
- docs/project-memory/PROGRESS.md
- docs/project-memory/DECISIONS.md
- docs/project-memory/FINDINGS.md

Não reinicie do zero.

Preserve o que funciona.

Atualize docs/agent-state/CURRENT_SESSION.md ao iniciar, durante o trabalho e ao finalizar.

Ao final, atualize docs/agent-reports/latest.md com o que foi feito, arquivos alterados, problemas, pendências e próximos passos.
```

## Quando o agente chegar no limite

Se Claude/Codex chegar perto do limite de sessão/contexto, peça para ele atualizar:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`

Prompt de retomada:

- `docs/agent-state/RESUME_PROMPT.md`

Versão curta:

```txt
Você atingiu o limite da sessão anterior enquanto estava trabalhando.

Retome de onde parou. Não reinicie do zero.

Primeiro rode:

git status
git diff --stat

Leia:

- docs/agent-state/CURRENT_SESSION.md
- docs/agent-reports/latest.md
- docs/project-memory/PROGRESS.md
- docs/project-memory/TASK_PLAN.md

Revise o que já foi alterado/incompleto e continue com base no estado real do projeto.

Preserve o que funciona e me avise o que mudou, arquivos mexidos e próximo passo.
```

## Arquivos para enviar de volta ao ChatGPT

Quando quiser ajuda para revisar o que o agente fez, envie:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`

Esses arquivos ajudam o ChatGPT a entender o estado real do projeto sem depender só da conversa.

## Variáveis de ambiente

Nunca envie chaves reais em chat, print ou arquivo versionado.

Arquivos esperados:

- `.env.example`
- `.env.local.example`

Para criar seu ambiente local:

```txt
cp .env.local.example .env.local
```

Depois preencha o `.env.local`.

Nunca commitar:

- `.env`
- `.env.local`
- `.env.*.local`

## Segurança

Antes de publicar ou mostrar projeto com dados reais, revisar:

- `docs/security/SECURITY_OVERVIEW.md`
- `docs/security/SECURITY_CHECKLIST.md`
- `docs/security/ENVIRONMENT_VARIABLES.md`
- `docs/security/SECRETS_AND_API_KEYS.md`
- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/security/API_SECURITY.md`
- `docs/security/PEN_TEST_PLAN.md`

## Design

Antes de implementar interface, revisar:

- `docs/design/DESIGN_SYSTEM.md`
- `docs/design/THEME_AND_PREHYDRATION.md`
- `docs/design/SIDEBAR_PATTERN.md`
- `docs/design/FEEDBACK_SYSTEM.md`
- `docs/design/LOADING_STATES.md`

Padrão visual esperado:

- monocromático premium;
- dark mode e light mode;
- cor de acento definida;
- sidebar premium quando aplicável;
- toasts;
- StatusPulse;
- skeleton loading refinado;
- pré-hidratação para evitar glitch.

## Links compartilhados

Se o projeto tiver links para clientes, propostas, pedidos, arquivos ou atualizações, revisar:

- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/workflows/SHARED_LINK_FLOW.md`
- `docs/brand/LINK_PREVIEW.md`
- `docs/brand/SHARE_MESSAGES.md`

Regra:

Nunca usar ID previsível em link público.

## Mensagens WhatsApp

Se o projeto gerar mensagens para WhatsApp, revisar:

- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

Padrão:

```txt
*→ Título da mensagem!*

> *Projeto: →* nome
> _*data - hora*_

*Campo: →* valor

*Chamada para ação:* ↓
link
```

Não usar `#` ou `##`.

Não usar emoji por padrão.

## Como saber o que fazer depois

Veja:

- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`
- `docs/agent-state/CURRENT_SESSION.md`

## Antes de fazer commit

Conferir:

```txt
git status --short
git diff --stat
git diff --shortstat
```

Não fazer commit se ainda estiver no meio de uma grande revisão, a menos que você queira salvar um ponto intermediário.

## Antes de fazer push

Conferir:

```txt
git remote -v
git status --short
git log --oneline --max-count=3
```

Depois:

```txt
git push
```

## Checklist rápido para iniciar projeto novo

- [ ] Conversei com ChatGPT sobre a ideia?
- [ ] Respondi a entrevista inicial?
- [ ] Criei repositório no GitHub?
- [ ] Criei/copiei a base local?
- [ ] Conferi Git?
- [ ] Abri no VS Code?
- [ ] Revisei os arquivos principais?
- [ ] Defini cor de acento?
- [ ] Defini se terá login?
- [ ] Defini se terá link compartilhado?
- [ ] Defini se terá dados sensíveis?
- [ ] Defini se terá API externa?
- [ ] Defini o MVP?
- [ ] Enviei prompt correto para o agente?

## Checklist para trabalhar com agente

- [ ] Agente rodou `git status`?
- [ ] Agente rodou `git diff --stat`?
- [ ] Agente leu `AGENTS.md`?
- [ ] Agente leu `CURRENT_SESSION.md`?
- [ ] Agente atualizou estado antes de começar?
- [ ] Agente atualizou relatório ao finalizar?
- [ ] Agente registrou decisões?
- [ ] Agente registrou problemas?
- [ ] Agente informou próximos passos?
