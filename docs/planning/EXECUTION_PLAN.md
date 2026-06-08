# Execution Plan

Este documento transforma o roadmap em plano de execução.

## Regra principal

Executar em blocos pequenos e verificáveis.

Não misturar muitas frentes ao mesmo tempo.

## Antes de começar

Conferir:

- visão;
- MVP;
- perguntas pendentes;
- stack;
- design;
- segurança;
- integrações;
- prazo.

Arquivos:

- `docs/vision/VISION.md`
- `docs/vision/MVP_SCOPE.md`
- `docs/vision/PROJECT_INTAKE_ANSWERS.md`
- `docs/planning/ROADMAP.md`
- `docs/project-memory/TASK_PLAN.md`

## Sequência padrão

### Bloco 1 — Organização

- revisar README;
- revisar START_HERE;
- revisar AGENTS/CLAUDE/CODEX;
- revisar PROJECT_MAP;
- revisar project-memory;
- revisar agent-state.

### Bloco 2 — Design base

- definir cor de acento;
- definir tema;
- preparar tokens;
- preparar app shell;
- preparar sidebar;
- preparar feedbacks.

### Bloco 3 — Estrutura técnica

- criar pastas;
- configurar stack;
- configurar lint/typecheck;
- configurar env examples;
- configurar utilitários.

### Bloco 4 — Primeira tela

- criar tela principal;
- criar componentes base;
- criar dados mockados;
- criar estados loading/empty/error.

### Bloco 5 — Fluxo principal

- implementar fluxo central;
- adicionar toasts;
- adicionar status;
- adicionar validações;
- registrar progresso.

### Bloco 6 — Backend/dados

- conectar banco;
- criar schema;
- configurar RLS;
- criar APIs;
- criar storage se necessário.

### Bloco 7 — Segurança

- testar rotas;
- testar APIs;
- testar links;
- testar envs;
- testar storage;
- registrar findings.

### Bloco 8 — Metadata e apresentação

- favicon;
- logo;
- title;
- description;
- Open Graph;
- mensagem de compartilhamento;
- roteiro de demo.

## Como trabalhar com agentes

Para cada bloco:

1. Dar prompt claro.
2. Pedir leitura dos docs.
3. Pedir atualização de `CURRENT_SESSION.md`.
4. Implementar.
5. Pedir atualização de `latest.md`.
6. Conferir `git diff --stat`.
7. Decidir próximo passo.

## Critério de conclusão

Um bloco só é concluído quando:

- implementação/revisão foi feita;
- arquivos alterados foram listados;
- erros foram registrados;
- próximos passos foram definidos;
- memória foi atualizada.

## O que evitar

- implementar sem revisar docs;
- começar pelo banco sem validar fluxo;
- adicionar integração antes do MVP;
- fazer commit sem revisar;
- deixar agente sem atualizar relatório;
- ignorar segurança;
- misturar refatoração grande com feature.

## Checklist

- [ ] Bloco atual definido?
- [ ] Arquivos relevantes lidos?
- [ ] Estado da sessão atualizado?
- [ ] Implementação pequena?
- [ ] Diff revisado?
- [ ] Relatório atualizado?
- [ ] Próximo bloco claro?
