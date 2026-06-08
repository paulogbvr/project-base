# Findings

Este arquivo registra problemas encontrados, aprendizados, riscos, padrões observados e correções recorrentes.

## Regra principal

Se algo pode evitar erro futuro, registrar aqui.

## Quando registrar

Registrar quando encontrar:

- bug recorrente;
- erro de agente;
- risco de segurança;
- problema de UX;
- problema de performance;
- problema de documentação;
- decisão que precisa ser revista;
- padrão que funcionou bem;
- correção de ortografia/copy recorrente;
- erro em prompt;
- problema de arquitetura;
- limitação técnica.

## Formato recomendado

### YYYY-MM-DD — Título

Tipo: bug / risco / aprendizado / UX / segurança / conteúdo / arquitetura / agente

Descrição:
Explique o que foi encontrado.

Impacto:
Explique por que importa.

Como evitar:
Explique o que fazer nas próximas vezes.

Arquivos relacionados:
- caminho/do/arquivo.md

## Findings registrados

### 2026-06 — Agentes podem perder contexto por limite de sessão

Tipo: agente

Descrição:
Claude/Codex podem atingir limite de sessão/contexto antes de finalizar uma tarefa.

Impacto:
Sem handoff, o usuário perde contexto, precisa explicar novamente e pode haver retrabalho.

Como evitar:
Manter `docs/agent-state/CURRENT_SESSION.md` atualizado e usar `docs/agent-state/RESUME_PROMPT.md`.

Arquivos relacionados:
- docs/agent-state/CURRENT_SESSION.md
- docs/agent-state/RESUME_PROMPT.md

### 2026-06 — Comandos grandes podem quebrar com heredoc

Tipo: agente

Descrição:
Comandos grandes com `cat <<EOF` podem quebrar se o EOF ficar indentado ou se Markdown interferir.

Impacto:
O terminal pode entrar em `heredoc>` e travar esperando fechamento.

Como evitar:
Preferir scripts Python para escrever múltiplos arquivos quando o comando for grande.

### 2026-06 — Mensagens WhatsApp não devem usar títulos Markdown

Tipo: conteúdo

Descrição:
Agentes podem usar `#` ou `##` em mensagens que deveriam ser enviadas pelo WhatsApp.

Impacto:
A mensagem fica com aparência errada e não segue o padrão do usuário.

Como evitar:
Seguir `docs/brand/WHATSAPP_MESSAGE_STYLE.md`.

### 2026-06 — Evitar skeleton genérico de página inteira

Tipo: UX

Descrição:
Skeletons genéricos podem fazer a página parecer lenta e mal acabada.

Impacto:
O usuário sente que o sistema está travando ou carregando mal.

Como evitar:
Usar loading por seção, mantendo títulos, filtros e estrutura visíveis quando possível.

Arquivos relacionados:
- docs/design/LOADING_STATES.md

### 2026-06 — Aspas sobrando em comando pode prender terminal em dquote

Tipo: agente

Descrição:
Um comando foi enviado com aspas sobrando:

```bash
git diff --stat"
```

Isso fez o terminal entrar em `dquote>`.

Impacto:
O usuário fica preso no terminal esperando fechar aspas.

Como evitar:
Revisar comandos antes de enviar e, quando acontecer, usar `Ctrl + C` para cancelar.

### 2026-06 — Arquivos novos não aparecem no git diff --shortstat sem git add -N

Tipo: git

Descrição:
Arquivos novos aparecem como `??` e não entram na contagem de `git diff --shortstat`.

Impacto:
O usuário esperava 94 files changed, mas o diff continuava em 92.

Como evitar:
Usar `git add -N arquivo` para fazer o Git enxergar arquivos novos no diff sem fazer commit ainda.

Comando usado:

```bash
git add -N templates/next-saas/README.md templates/docs-only/README.md
```

### 2026-06 — Conferência por quantidade de arquivos ajuda o fluxo

Tipo: workflow

Descrição:
O usuário prefere conferir rapidamente pelo formato:

```txt
94 files changed, 14264 insertions(+), 886 deletions(-)
```

Impacto:
Fica mais rápido validar se o bloco foi aplicado corretamente.

Como evitar:
Sempre incluir `git diff --shortstat` e a resposta esperada.
