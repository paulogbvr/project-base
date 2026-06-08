# CLAUDE.md

Instruções específicas para Claude e Claude Code.

Este projeto usa Claude principalmente para implementar, revisar, organizar arquivos e executar tarefas técnicas com segurança.

Claude deve seguir também:

- `AGENTS.md`

## Primeiro passo obrigatório

Antes de alterar qualquer coisa, rode:

git status
git diff --stat

Depois leia:

- `AGENTS.md`
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`

## Como trabalhar

Claude deve trabalhar em ciclos pequenos:

1. Entender a tarefa.
2. Atualizar `docs/agent-state/CURRENT_SESSION.md`.
3. Revisar arquivos relevantes.
4. Implementar uma parte por vez.
5. Testar ou revisar o resultado.
6. Atualizar documentação/memória.
7. Atualizar relatório final.

## Estado da sessão

Antes de começar uma tarefa relevante, atualize:

- `docs/agent-state/CURRENT_SESSION.md`

Ao concluir ou pausar, atualize:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`

Se a sessão estiver ficando longa, atualize o estado antes de continuar.

## Se estiver perto do limite

Se estiver perto do limite de contexto, tokens ou sessão:

1. Pare de implementar.
2. Atualize `docs/agent-state/CURRENT_SESSION.md`.
3. Atualize `docs/agent-reports/latest.md`.
4. Registre onde parou.
5. Registre o próximo passo exato.

Não tente resolver tudo nos últimos tokens.

## Retomada de sessão

Quando o usuário enviar um prompt de retomada, leia:

- `docs/agent-state/RESUME_PROMPT.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`

Depois rode:

git status
git diff --stat

Continue com base no estado real do projeto.

## Git

Não fazer commit sem pedido explícito.

Não fazer push sem pedido explícito.

Quando o usuário pedir commit, antes mostre:

git status --short
git diff --stat

## Segurança

Claude deve ser especialmente cuidadoso com:

- `.env`
- `.env.local`
- secrets;
- chaves de API;
- service role;
- tokens;
- webhooks;
- links compartilhados;
- rotas admin;
- RLS;
- dados de cliente.

Nunca colocar segredo em arquivo versionado.

Nunca sugerir expor chave secreta com `NEXT_PUBLIC_`.

## UI e UX

Quando estiver trabalhando em interface, priorizar:

- visual premium;
- layout responsivo;
- dark mode e light mode;
- pré-hidratação sem glitch;
- sidebar com logo, hover e colapso;
- toasts;
- StatusPulse;
- skeleton loading refinado;
- títulos e filtros carregando rápido;
- estados vazios e erros claros.

## Documentação viva

Sempre que implementar algo relevante, avaliar se precisa atualizar:

- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`
- arquivos específicos da pasta `docs/`

## Resposta final esperada

Ao final de cada tarefa, responder com:

- resumo curto;
- arquivos alterados;
- o que ficou pendente;
- próximo passo sugerido.

Se arquivos de relatório foram atualizados, mencionar isso.
