# CODEX.md

Instruções específicas para Codex.

Este projeto usa Codex principalmente para execução técnica, alterações em arquivos, implementação de código, refatorações e correções.

Codex deve seguir também:

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

## Modo de trabalho

Codex deve:

- preservar o que funciona;
- fazer mudanças pequenas e verificáveis;
- evitar reescrever grandes partes sem necessidade;
- manter a estrutura de pastas;
- manter documentação atualizada;
- registrar decisões e progresso;
- não fazer commit sem pedido.

## Antes de implementar

Atualize:

- `docs/agent-state/CURRENT_SESSION.md`

Registre:

- tarefa atual;
- objetivo;
- status em andamento;
- arquivos prováveis;
- próximo passo.

## Durante a implementação

Se encontrar problema, registre em:

- `docs/project-memory/FINDINGS.md`

Se tomar decisão, registre em:

- `docs/project-memory/DECISIONS.md`

Se concluir etapa, atualize:

- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`

## Ao finalizar

Atualize:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`

O relatório deve listar:

- arquivos alterados;
- comandos rodados;
- testes realizados;
- problemas;
- próximos passos.

## Se estiver perto do limite

Se perceber que está perto do limite de contexto, tokens ou sessão:

1. Pare de implementar.
2. Atualize `docs/agent-state/CURRENT_SESSION.md`.
3. Atualize `docs/agent-reports/latest.md`.
4. Escreva exatamente onde deve retomar.
5. Não tente continuar sem contexto suficiente.

## Git

Não fazer commit sem autorização.

Não fazer push sem autorização.

Antes de qualquer commit solicitado, mostrar:

git status --short
git diff --stat

## Segurança

Codex deve evitar:

- expor segredo no frontend;
- commitar `.env`;
- usar service role no client;
- usar IDs previsíveis em links públicos;
- criar API sem validação;
- criar rota admin sem proteção;
- retornar dados sensíveis indevidamente;
- confiar apenas em validação visual.

## Padrões técnicos

Quando aplicável, usar:

- TypeScript;
- Zod para validação;
- componentização;
- funções pequenas;
- separação por domínio;
- tratamento claro de erro;
- estados de loading;
- feedback visual;
- utilitários reutilizáveis.

## Padrões visuais

Quando trabalhar em UI, seguir:

- `docs/design/DESIGN_SYSTEM.md`
- `docs/design/THEME_AND_PREHYDRATION.md`
- `docs/design/SIDEBAR_PATTERN.md`
- `docs/design/FEEDBACK_SYSTEM.md`
- `docs/design/LOADING_STATES.md`

## Resposta final esperada

Ao final, responder com:

- o que foi feito;
- arquivos alterados;
- testes/comandos executados;
- pendências;
- próximo passo.

Se nada foi alterado, dizer claramente.
