# Resume Prompt

Use este prompt quando um agente atingir limite de sessão, contexto ou tokens antes de concluir o trabalho.

## Prompt padrão

Você atingiu o limite da sessão anterior enquanto estava trabalhando.

Retome de onde parou. Não reinicie do zero.

Primeiro rode:

git status
git diff --stat

Depois leia obrigatoriamente:

- `AGENTS.md`
- `CLAUDE.md` ou `CODEX.md`, conforme o agente usado
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`

Revise o que já foi alterado ou incompleto e continue com base no estado real do projeto.

Preserve o que funciona.

Não reinicie a implementação do zero.

Antes de alterar qualquer coisa nova, explique rapidamente:

- onde a sessão anterior parou;
- quais arquivos parecem ter sido alterados;
- qual tarefa estava em andamento;
- qual será o próximo passo.

Durante o trabalho, mantenha atualizado:

- `docs/agent-state/CURRENT_SESSION.md`

Ao finalizar ou pausar, atualize:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`

Se estiver novamente perto do limite da sessão, pare antes de perder contexto e sobrescreva `docs/agent-state/CURRENT_SESSION.md` com o estado mais recente.

## Versão curta para colar no agente

Você atingiu o limite da sessão anterior enquanto estava trabalhando.

Retome de onde parou. Não reinicie do zero.

Primeiro rode:

git status
git diff --stat

Leia:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`

Revise o que já foi alterado/incompleto e continue com base no estado real do projeto.

Preserve o que funciona e me avise o que mudou, arquivos mexidos e próximo passo.
