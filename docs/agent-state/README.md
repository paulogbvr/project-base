# Agent State

Esta pasta guarda o estado vivo da sessão atual ou da última sessão relevante do agente.

## Arquivo principal

- `CURRENT_SESSION.md`

Esse arquivo deve ser lido antes de qualquer tarefa importante e atualizado durante o trabalho.

## Objetivo

Evitar perda de contexto quando:

- agente atinge limite de sessão;
- agente está perto do limite de tokens;
- usuário troca de agente;
- tarefa fica incompleta;
- projeto precisa ser retomado depois.

## Regra principal

`CURRENT_SESSION.md` deve representar o estado mais recente do trabalho.

Ele pode ser sobrescrito em uma nova sessão relevante.

Não transformar em histórico gigante.

## Histórico

Se precisar preservar uma sessão antiga, copiar para:

- `SESSION_HISTORY/`

Sugestão de nome:

- `YYYY-MM-DD-nome-curto.md`

## Quando atualizar CURRENT_SESSION.md

Atualizar:

- antes de iniciar tarefa;
- ao mudar de etapa;
- ao concluir etapa;
- ao encontrar bloqueio;
- antes de encerrar;
- antes de atingir limite.

## O que registrar

- pedido original;
- objetivo da sessão;
- tarefa atual;
- status por etapa;
- onde parou;
- o que foi feito;
- parte incompleta;
- arquivos alterados;
- comandos rodados;
- erros/bloqueios;
- decisões;
- próximo passo.

## Retomada

Quando retomar uma sessão, ler:

- `RESUME_PROMPT.md`
- `CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`

## Regra para agentes

Não ignorar este arquivo.

Se a tarefa for relevante, este arquivo deve ser atualizado.
