# Folder Structure

Este documento define o padrão de organização de pastas para projetos derivados da Project Base.

A estrutura pode variar conforme o projeto, mas os princípios devem ser preservados.

## Princípio principal

Separar claramente:

- app/rotas;
- componentes reutilizáveis;
- features por domínio;
- integrações;
- utilitários;
- dados mockados;
- documentação;
- memória do projeto;
- relatórios dos agentes;
- recursos auxiliares.

## Estrutura recomendada para projetos Next.js

src/
  app/
    (public)/
    (auth)/
    dashboard/
    admin/
    api/

  components/
    ui/
    layout/
    feedback/
    integrations/
    shared/
    forms/
    data-display/

  features/
    auth/
    customers/
    projects/
    orders/
    payments/
    files/
    shared-links/
    notifications/
    settings/

  lib/
    supabase/
    validations/
    ids/
    utils/
    dates/
    formatters/
    storage/
    analytics/
    security/
    integrations/

  data/
    seed/
    mock/

  styles/
    globals.css
    tokens.css

## App Router

A pasta `src/app` deve cuidar de rotas, layouts e páginas.

Evitar colocar regra de negócio pesada dentro de páginas.

Páginas devem montar componentes e chamar features.

## Components

A pasta `src/components` deve guardar componentes reutilizáveis.

### `components/ui`

Componentes básicos e genéricos:

- Button
- Input
- Badge
- Card
- Modal
- Dropdown
- Tabs
- Tooltip
- Skeleton
- EmptyState
- ErrorState

### `components/layout`

Estrutura visual:

- AppShell
- Sidebar
- Topbar
- MobileNav
- PageHeader
- PageShell
- SidebarToggle
- ThemeToggle

### `components/feedback`

Feedback visual:

- ToastProvider
- StatusPulse
- ActionFeedback
- LoadingState
- ErrorBoundary

### `components/integrations`

Componentes ligados a integrações:

- EnvironmentStatusPanel
- IntegrationStatusCard
- ApiKeyField
- ConnectionTestButton

### `components/forms`

Componentes de formulário:

- FormField
- MaskedInput
- CurrencyInput
- DocumentInput
- PhoneInput

### `components/data-display`

Exibição de dados:

- DataTable
- MetricCard
- Timeline
- ActivityLog
- FilePreview
- PdfPreview

## Features

A pasta `src/features` deve organizar módulos por domínio.

Cada feature pode conter:

- componentes específicos;
- hooks;
- schemas;
- services;
- actions;
- types;
- utils locais.

Exemplo:

src/features/orders/
  components/
  hooks/
  schemas/
  services/
  types.ts

## Lib

A pasta `src/lib` guarda integrações, utilitários e funções compartilhadas.

### `lib/supabase`

- client público;
- server client;
- admin client, quando necessário;
- helpers de auth;
- helpers de storage.

### `lib/validations`

- schemas Zod;
- validações reutilizáveis;
- CPF/CNPJ quando necessário.

### `lib/ids`

- geração de UUID quando necessário;
- geração de tokens públicos;
- slugs;
- números amigáveis.

### `lib/dates`

- formatação de datas;
- cálculo de idade;
- timezone;
- timestamps.

### `lib/formatters`

- moeda;
- CPF;
- CNPJ;
- telefone;
- CEP;
- datas;
- porcentagens.

### `lib/storage`

- upload;
- delete;
- cleanup;
- signed URLs;
- verificação de arquivos órfãos.

### `lib/analytics`

- tracking events;
- helpers de eventos;
- registro de eventos escolhidos.

### `lib/security`

- permissões;
- guards;
- sanitização;
- helpers de token.

## Data

A pasta `src/data` deve conter dados mockados e seeds.

Usar:

- `src/data/mock/`
- `src/data/seed/`

Mock deve evitar IDs públicos previsíveis quando simular links.

## Styles

A pasta `src/styles` pode conter:

- tokens;
- variáveis CSS;
- estilos globais;
- helpers de tema.

## Documentação

A pasta `docs` deve acompanhar o projeto.

Não tratar docs como algo secundário.

Ela deve registrar:

- visão;
- arquitetura;
- decisões;
- progresso;
- segurança;
- workflows;
- integração;
- relatórios;
- estado de agentes.

## Recursos auxiliares

A pasta `resources/skills` deve guardar materiais auxiliares que não fazem parte do sistema principal.

Exemplos:

- carrossel;
- propostas;
- Google Ads;
- auditoria de segurança;
- copywriting;
- landing pages;
- workflow de imagens.

## Regra de componentização

Evitar arquivos gigantes.

Se um componente crescer demais, separar em:

- container;
- presentational component;
- subcomponents;
- hooks;
- utils;
- schemas.

## Regra de dependência

Componentes genéricos não devem depender de features específicas.

Features podem usar componentes genéricos.

`lib` não deve depender de componentes.

## Regra para agentes

Antes de criar arquivo novo, o agente deve pensar:

- isso é rota?
- isso é componente genérico?
- isso é componente específico de feature?
- isso é regra de negócio?
- isso é integração?
- isso é utilitário?
- isso é documentação?
- isso é recurso auxiliar?

Criar no lugar certo.
