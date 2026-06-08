
# AGENTS.md

Instruções universais para qualquer agente de IA trabalhando neste projeto.

## Antes de alterar qualquer coisa

Rode:

git status
git diff --stat

Leia:

- `README.md`
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/DECISIONS.md`

## Estado da sessão

Antes de iniciar uma tarefa relevante, atualize:

- `docs/agent-state/CURRENT_SESSION.md`

Durante o trabalho, mantenha este arquivo atualizado.

Se estiver perto do limite de tokens/sessão, pare antes de perder contexto e sobrescreva:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`

## Memória do projeto

Atualize os arquivos conforme necessário:

- Decisão tomada → `docs/project-memory/DECISIONS.md`
- Progresso feito → `docs/project-memory/PROGRESS.md`
- Tarefa alterada → `docs/project-memory/TASK_PLAN.md`
- Problema ou aprendizado → `docs/project-memory/FINDINGS.md`
- Relatório final → `docs/agent-reports/latest.md`

## Regras gerais

- Não reiniciar do zero sem autorização.
- Preservar o que funciona.
- Trabalhar de forma componentizada.
- Manter segurança desde o início.
- Não expor segredos no frontend.
- Não commitar `.env`, `.env.local` ou chaves reais.
- Manter documentação viva.
- Ao final de uma tarefa, registrar o que foi feito.
