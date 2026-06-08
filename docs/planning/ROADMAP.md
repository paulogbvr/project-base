# Roadmap

Este documento organiza o projeto em fases.

## Regra principal

Roadmap não é lista infinita de desejos.

Ele deve separar o que vem agora, o que vem depois e o que só deve ser feito quando fizer sentido.

## Fase 0 — Planejamento

Objetivo:

Entender o projeto antes de implementar.

Itens:

- entrevista inicial;
- visão;
- posicionamento;
- escopo MVP;
- riscos;
- referências;
- arquitetura inicial;
- segurança;
- design direction.

Status: A definir.

## Fase 1 — Base do projeto

Objetivo:

Criar estrutura inicial organizada.

Itens:

- README;
- START_HERE;
- AGENTS/CLAUDE/CODEX;
- docs;
- project-memory;
- agent-state;
- agent-reports;
- .env.example;
- .env.local.example;
- .gitignore;
- estrutura src, se houver código;
- Git/GitHub.

Status: A definir.

## Fase 2 — Primeira experiência visual

Objetivo:

Criar primeira versão visual que mostre o valor.

Itens:

- design system inicial;
- app shell;
- tema;
- sidebar, se necessário;
- primeira página;
- estados visuais;
- toasts;
- loading refinado;
- dados mockados.

Status: A definir.

## Fase 3 — Fluxo principal

Objetivo:

Fazer o fluxo mais importante funcionar.

Itens possíveis:

- cadastro;
- pedido;
- pagamento;
- link compartilhado;
- timeline;
- upload;
- dashboard;
- acompanhamento;
- proposta;
- checkout.

Status: A definir.

## Fase 4 — Dados e backend

Objetivo:

Sair do mock e conectar estrutura real.

Itens:

- banco;
- Supabase;
- schema;
- RLS;
- APIs;
- storage;
- validações;
- seeds.

Status: A definir.

## Fase 5 — Autenticação e permissões

Objetivo:

Proteger áreas privadas e usuários.

Itens:

- login;
- Google Auth, se necessário;
- roles;
- permissões;
- proteção de rotas;
- estados de auth;
- logout.

Status: A definir.

## Fase 6 — Integrações

Objetivo:

Conectar serviços externos.

Possíveis integrações:

- AbacatePay;
- WhatsApp;
- Google;
- APIs externas;
- webhooks;
- analytics;
- storage externo.

Status: A definir.

## Fase 7 — Segurança e auditoria

Objetivo:

Revisar riscos antes de liberar.

Itens:

- checklist de segurança;
- teste de links;
- teste de APIs;
- teste de auth;
- teste de RLS;
- teste de storage;
- teste de webhooks;
- revisão de env vars;
- revisão de metadata.

Status: A definir.

## Fase 8 — Marca, metadata e compartilhamento

Objetivo:

Preparar o projeto para ser compartilhado.

Itens:

- logo;
- favicon;
- title;
- description;
- Open Graph image;
- preview de WhatsApp;
- mensagem de compartilhamento;
- imagem personalizada quando fizer sentido.

Status: A definir.

## Fase 9 — Deploy e apresentação

Objetivo:

Colocar no ar ou apresentar.

Itens:

- build;
- Vercel;
- envs de produção;
- domínio;
- testes;
- checklist final;
- roteiro de apresentação;
- proposta, se houver.

Status: A definir.

## Fase 10 — Evolução

Objetivo:

Melhorar após validação.

Itens:

- automações;
- relatórios;
- performance;
- novos módulos;
- melhorias de UX;
- feedback de usuários;
- integrações adicionais.

Status: A definir.

## Como usar este roadmap

Para cada projeto real:

1. Marcar fases necessárias.
2. Remover fases que não fazem sentido.
3. Definir prioridade.
4. Atualizar `TASK_PLAN.md`.
5. Registrar decisões em `DECISIONS.md`.

## Checklist

- [ ] MVP está claro?
- [ ] Futuro separado do agora?
- [ ] Segurança tem fase própria?
- [ ] Metadata/preview tem fase própria?
- [ ] Deploy tem checklist?
- [ ] Roadmap está realista?
