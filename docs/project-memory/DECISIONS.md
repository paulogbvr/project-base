# Decisions

Este arquivo registra decisões tomadas no projeto.

## Regra principal

Decisões importantes não devem ficar apenas no chat.

Sempre que uma decisão afetar arquitetura, design, negócio, segurança, stack ou fluxo, registrar aqui.

## Como registrar

Use o formato:

### YYYY-MM-DD — Título da decisão

Status: ativa / revisada / descartada

Decisão:
Descreva a decisão.

Motivo:
Explique por que foi decidido.

Impacto:
Explique o que muda no projeto.

Arquivos relacionados:
- caminho/do/arquivo.md

## Decisões iniciais

### 2026-06 — Nome da base

Status: ativa

Decisão:
A base padrão será chamada Project Base.

Motivo:
Nome simples, direto e reutilizável para diferentes tipos de projeto.

Impacto:
A estrutura, documentação e scripts devem usar Project Base como nome da base.

Arquivos relacionados:
- README.md
- START_HERE.md

### 2026-06 — Repositório

Status: ativa

Decisão:
O repositório sugerido da base será `project-base`.

Motivo:
Nome claro, curto e fácil de clonar/reutilizar.

Impacto:
Comandos e documentação devem considerar `project-base` como repositório base.

### 2026-06 — Documentação viva

Status: ativa

Decisão:
A documentação deve ser mantida viva durante o desenvolvimento.

Motivo:
O usuário trabalha com ChatGPT + Claude/Codex e precisa enviar arquivos de volta para continuar o raciocínio com contexto.

Impacto:
Agentes devem atualizar progresso, tarefas, decisões, findings, estado da sessão e relatórios.

### 2026-06 — Estado vivo do agente

Status: ativa

Decisão:
Todo projeto deve ter `docs/agent-state/CURRENT_SESSION.md`.

Motivo:
Agentes frequentemente atingem limite de sessão/contexto. O arquivo permite retomar sem perder o estado.

Impacto:
Agentes devem ler e atualizar esse arquivo antes, durante e depois de tarefas relevantes.

### 2026-06 — Relatório mais recente do agente

Status: ativa

Decisão:
Todo projeto deve ter `docs/agent-reports/latest.md`.

Motivo:
Facilitar o envio de relatório ao ChatGPT e reduzir dependência de copiar respostas longas do terminal.

Impacto:
Ao final de tarefas, agentes devem atualizar esse arquivo.

### 2026-06 — UUID interno e tokens públicos

Status: ativa

Decisão:
Usar UUID como identificador técnico interno e tokens curtos não previsíveis para links públicos.

Motivo:
Separar identidade técnica de acesso público e reduzir risco de links previsíveis.

Impacto:
Projetos devem seguir `docs/architecture/IDENTIFIERS.md`.

### 2026-06 — Mensagens WhatsApp

Status: ativa

Decisão:
Mensagens finais para WhatsApp devem usar padrão com `*texto*`, `_texto_`, `>`, `→`, `↓` e `•`, sem `#`/`##` e sem emoji por padrão.

Motivo:
Manter o padrão visual aprovado pelo usuário e compatível com WhatsApp.

Impacto:
Agentes devem seguir `docs/brand/WHATSAPP_MESSAGE_STYLE.md`.

### 2026-06 — Design base

Status: ativa

Decisão:
Projetos devem partir de visual monocromático premium, com dark/light mode, pré-hidratação, sidebar premium quando aplicável, toasts, StatusPulse e loading refinado.

Motivo:
Esse padrão reflete o gosto do usuário e melhora qualidade inicial dos projetos.

Impacto:
Projetos devem seguir documentos em `docs/design/`.

### 2026-06 — Segurança desde o início

Status: ativa

Decisão:
Segurança deve ser planejada desde o início.

Motivo:
Projetos do usuário frequentemente usam links compartilhados, dados de cliente, APIs, storage, pagamentos e variáveis sensíveis.

Impacto:
Agentes devem revisar documentos em `docs/security/` antes de implementar funcionalidades sensíveis.
