# Architecture

Este documento define a arquitetura geral para projetos derivados da Project Base.

A arquitetura deve ajudar o projeto a crescer com organização, segurança, clareza e facilidade de manutenção.

## Regra principal

Arquitetura boa é aquela que permite evoluir sem virar bagunça.

O projeto deve nascer simples, mas preparado para crescer.

## Princípios

A arquitetura deve seguir estes princípios:

- componentização forte;
- separação por domínio;
- segurança desde o início;
- documentação viva;
- UX rápida e estável;
- padrões reutilizáveis;
- dados mockados antes de integrações complexas, quando fizer sentido;
- UUID como identificador técnico interno;
- tokens seguros para links públicos;
- variáveis de ambiente bem documentadas;
- agentes atualizando memória e relatórios.

## Camadas principais

Projetos derivados podem ter as seguintes camadas:

1. Interface
2. Componentes
3. Features
4. Serviços/actions
5. Validações
6. Integrações
7. Banco/storage
8. Segurança
9. Analytics/tracking
10. Documentação/memória

## Interface

A interface deve ser organizada com:

- rotas;
- layouts;
- páginas;
- app shell;
- sidebar/topbar quando aplicável;
- estados de loading;
- feedback visual;
- responsividade.

Em Next.js, isso geralmente fica em:

```txt
src/app/
```

## Componentes

Componentes reutilizáveis devem ficar separados da regra de negócio.

Exemplos:

```txt
src/components/ui/
src/components/layout/
src/components/feedback/
src/components/integrations/
src/components/forms/
src/components/data-display/
```

Ver:

- `docs/architecture/FOLDER_STRUCTURE.md`
- `docs/implementation/COMPONENT_STRATEGY.md`

## Features

Features representam domínios do projeto.

Exemplos:

- auth;
- customers;
- projects;
- orders;
- payments;
- files;
- shared-links;
- notifications;
- settings.

Estrutura sugerida:

```txt
src/features/nome-da-feature/
  components/
  hooks/
  schemas/
  services/
  actions/
  types.ts
  utils.ts
```

## Lib

A pasta `lib` deve guardar utilitários, integrações e funções compartilhadas.

Exemplos:

```txt
src/lib/supabase/
src/lib/validations/
src/lib/ids/
src/lib/utils/
src/lib/dates/
src/lib/formatters/
src/lib/storage/
src/lib/analytics/
src/lib/security/
src/lib/integrations/
```

## Identificadores

Seguir:

- `docs/architecture/IDENTIFIERS.md`

Resumo:

- UUID para identidade técnica interna;
- slug para URL amigável;
- token curto e seguro para link público;
- número amigável para exibição humana.

## Links compartilhados

Projetos com links públicos devem seguir:

- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/workflows/SHARED_LINK_FLOW.md`

Regras:

- não usar ID previsível;
- usar token seguro;
- evitar dados sensíveis em metadata;
- validar no backend;
- permitir expiração/revogação quando necessário.

## Segurança

Segurança deve ser parte da arquitetura, não uma etapa final.

Ver:

- `docs/security/SECURITY_OVERVIEW.md`
- `docs/security/SECURITY_CHECKLIST.md`
- `docs/security/API_SECURITY.md`
- `docs/security/AUTH_SECURITY.md`
- `docs/security/ENVIRONMENT_VARIABLES.md`
- `docs/security/SECRETS_AND_API_KEYS.md`

Regras:

- não expor segredo no frontend;
- não confiar só na UI;
- proteger APIs;
- proteger rotas privadas;
- considerar RLS;
- validar webhooks;
- proteger storage.

## Banco de dados

Ver:

- `docs/database/DATABASE.md`
- `docs/database/SUPABASE.md`
- `docs/database/RLS_POLICIES.md`

Padrões:

- UUID;
- timestamps;
- soft delete quando necessário;
- audit log quando necessário;
- isolamento por organização/cliente/projeto quando aplicável;
- RLS quando usar Supabase.

## Storage

Ver:

- `docs/storage/STORAGE_MANAGEMENT.md`
- `docs/storage/FILE_LIFECYCLE.md`
- `docs/security/STORAGE_SECURITY.md`

Padrões:

- separar público/privado;
- validar uploads;
- proteger downloads;
- limpar órfãos quando seguro;
- evitar paths com dados sensíveis.

## Integrações

Ver:

- `docs/integrations/API_CONNECTION_SETTINGS.md`
- `docs/integrations/SUPABASE.md`
- `docs/integrations/GOOGLE_AUTH.md`
- `docs/integrations/ABACATEPAY.md`
- `docs/integrations/WHATSAPP.md`

Integrações devem ter:

- variáveis documentadas;
- status visual;
- botão testar conexão quando fizer sentido;
- erros claros;
- segredos protegidos;
- logs seguros.

## Design e UI

Ver:

- `docs/design/DESIGN_SYSTEM.md`
- `docs/design/THEME_AND_PREHYDRATION.md`
- `docs/design/SIDEBAR_PATTERN.md`
- `docs/design/FEEDBACK_SYSTEM.md`
- `docs/design/LOADING_STATES.md`

Padrões:

- visual premium;
- dark/light mode;
- pré-hidratação;
- sidebar sem glitch;
- toasts;
- StatusPulse;
- skeleton refinado;
- estados vazios e erros claros.

## Analytics

Ver:

- `docs/analytics/TRACKING_EVENTS_LIBRARY.md`
- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

Regra:

Escolher eventos úteis, não rastrear tudo sem necessidade.

## Documentação viva

A arquitetura depende da documentação viva.

Arquivos centrais:

- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/FINDINGS.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`

## Agentes

Agentes devem seguir:

- `AGENTS.md`
- `CLAUDE.md`
- `CODEX.md`

Eles devem atualizar estado, progresso, decisões e relatórios.

## Evolução por fases

A arquitetura deve permitir começar simples:

1. docs;
2. mock;
3. UI;
4. fluxo;
5. banco;
6. auth;
7. integrações;
8. segurança;
9. polish;
10. escala.

## O que evitar

- lógica de negócio dentro de componente visual;
- service role no frontend;
- link público com ID sequencial;
- arquivo gigante;
- componente genérico dependente de feature;
- API sem validação;
- dados sensíveis em metadata;
- storage público sem necessidade;
- decisões importantes só no chat;
- agente trabalhando sem atualizar relatório.

## Checklist de arquitetura

- [ ] Features estão separadas?
- [ ] Componentes genéricos estão isolados?
- [ ] Regras de negócio não estão misturadas na UI?
- [ ] Identificadores seguem o padrão?
- [ ] Links públicos são seguros?
- [ ] Variáveis estão documentadas?
- [ ] Segurança foi considerada?
- [ ] Banco/RLS foi considerado?
- [ ] Storage foi considerado?
- [ ] Integrações estão isoladas?
- [ ] Design system foi considerado?
- [ ] Documentação viva está atualizada?
