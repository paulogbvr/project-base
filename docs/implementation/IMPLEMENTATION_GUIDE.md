# Implementation Guide

Este documento define o guia de implementação para projetos derivados da Project Base.

## Objetivo

Orientar como transformar planejamento em implementação sem perder organização, segurança, memória e qualidade visual.

## Regra principal

Não implementar tudo de uma vez.

Trabalhar em ciclos pequenos, verificáveis e documentados.

## Ciclo recomendado

1. Ler documentação.
2. Rodar comandos de estado.
3. Atualizar estado da sessão.
4. Planejar pequena alteração.
5. Implementar.
6. Testar ou revisar.
7. Atualizar memória.
8. Atualizar relatório.
9. Definir próximo passo.

## Antes de implementar

Rodar:

git status
git diff --stat

Ler:

- AGENTS.md
- CLAUDE.md ou CODEX.md
- docs/PROJECT_MAP.md
- docs/agent-state/CURRENT_SESSION.md
- docs/project-memory/TASK_PLAN.md
- docs/project-memory/PROGRESS.md
- docs/project-memory/DECISIONS.md
- docs/project-memory/FINDINGS.md

## Atualizar estado

Antes da tarefa, atualizar:

- docs/agent-state/CURRENT_SESSION.md

Registrar:

- pedido original;
- objetivo da sessão;
- tarefa atual;
- status em andamento;
- arquivos prováveis;
- próximo passo.

## Ordem geral de implementação

### 1. Base

- estrutura de pastas;
- configs;
- README;
- env examples;
- app shell;
- tema;
- design tokens.

### 2. UI principal

- layout;
- sidebar/topbar;
- páginas principais;
- componentes base;
- feedback visual;
- loading states.

### 3. Dados mockados

- seeds;
- mocks;
- tipos;
- schemas;
- fluxos simulados.

### 4. Fluxo principal

- ação central do sistema;
- CRUD essencial;
- link compartilhado, se houver;
- upload/download, se houver;
- status e atualizações.

### 5. Banco e backend

- schema;
- Supabase;
- RLS;
- APIs;
- validações;
- storage.

### 6. Integrações

- pagamentos;
- WhatsApp;
- Google Auth;
- APIs externas;
- webhooks.

### 7. Segurança

- checklist;
- testes manuais;
- rotas privadas;
- links públicos;
- env vars;
- storage;
- webhooks.

### 8. Polish

- metadata;
- favicon;
- preview;
- performance;
- responsividade;
- mensagens;
- revisão visual.

## Mudanças pequenas

Preferir pequenas alterações.

Evitar:

- reescrever tudo;
- trocar stack sem motivo;
- apagar docs;
- alterar muitos domínios ao mesmo tempo;
- misturar refactor com feature grande.

## Testes e verificações

Dependendo do projeto, rodar:

- lint;
- typecheck;
- build;
- testes;
- revisão manual;
- teste de rota;
- teste de segurança.

Registrar comandos em:

- docs/agent-reports/latest.md

## Documentação viva

Ao implementar, atualizar:

- PROGRESS.md;
- TASK_PLAN.md;
- DECISIONS.md;
- FINDINGS.md;
- docs específicos.

## Handoff

Se estiver perto do limite da sessão:

- parar;
- atualizar CURRENT_SESSION.md;
- atualizar latest.md;
- registrar exatamente onde retomar.

## Checklist antes de encerrar tarefa

- [ ] git status foi revisado?
- [ ] tarefa foi implementada em parte pequena?
- [ ] resultado foi testado/revisado?
- [ ] CURRENT_SESSION.md atualizado?
- [ ] latest.md atualizado?
- [ ] PROGRESS.md atualizado?
- [ ] TASK_PLAN.md atualizado?
- [ ] DECISIONS.md atualizado, se necessário?
- [ ] FINDINGS.md atualizado, se necessário?
- [ ] próximo passo registrado?
