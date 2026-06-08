
# CLAUDE.md

Instruções para Claude/Claude Code.

## Primeiro passo obrigatório

Rode:

git status
git diff --stat

Depois leia:

- `AGENTS.md`
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`

## Durante a execução

Atualize `docs/agent-state/CURRENT_SESSION.md` quando:

- iniciar uma tarefa;
- concluir uma tarefa;
- encontrar um bloqueio;
- perceber que está perto do limite da sessão.

## Ao finalizar

Atualize:

- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`

## Regra de handoff

Se estiver perto do limite da sessão, pare antes de perder contexto.

Sobrescreva `docs/agent-state/CURRENT_SESSION.md` com:

- pedido original;
- o que foi feito;
- arquivos alterados;
- onde parou;
- parte incompleta;
- próximos passos;
- erros ou bloqueios.
