# Component Strategy

Este documento define a estratégia de componentização para projetos derivados da Project Base.

## Regra principal

Componentes devem ser pequenos, reutilizáveis e fáceis de encontrar.

Evitar arquivos gigantes e mistura de responsabilidades.

## Separação por responsabilidade

### UI genérica

Fica em:

src/components/ui/

Exemplos:

- Button
- Input
- Card
- Badge
- Modal
- Skeleton
- Tooltip
- Tabs

### Layout

Fica em:

src/components/layout/

Exemplos:

- AppShell
- Sidebar
- Topbar
- PageHeader
- PageShell
- MobileNav
- ThemeToggle

### Feedback

Fica em:

src/components/feedback/

Exemplos:

- ToastProvider
- StatusPulse
- ActionFeedback
- LoadingState
- ErrorState
- EmptyState

### Integrações

Fica em:

src/components/integrations/

Exemplos:

- EnvironmentStatusPanel
- IntegrationStatusCard
- ApiKeyField
- ConnectionTestButton

### Features

Fica em:

src/features/

Exemplos:

src/features/orders/
src/features/payments/
src/features/customers/
src/features/shared-links/

## Estrutura de feature

Uma feature pode conter:

components/
hooks/
schemas/
services/
actions/
types.ts
utils.ts

## Quando criar componente

Criar componente quando:

- trecho se repete;
- arquivo ficou grande;
- há responsabilidade visual clara;
- há lógica isolável;
- precisa reaproveitar;
- facilita teste/leitura.

## Quando criar hook

Criar hook quando:

- lógica de estado é reutilizável;
- interação é complexa;
- há side effects;
- fetch/controlador pode ser isolado;
- componente está ficando pesado.

## Quando criar service/action

Criar service/action quando:

- há chamada de API;
- há regra de negócio;
- há persistência;
- há integração externa;
- há operação server-side.

## Evitar

- componente com responsabilidade demais;
- componente genérico dependendo de feature;
- regra de negócio dentro de UI pura;
- arquivo com muitas funções não relacionadas;
- duplicação de formatação;
- estilos inconsistentes.

## Componentes obrigatórios a considerar

Dependendo do projeto:

- AppShell
- Sidebar
- ThemeToggle
- StatusPulse
- ToastProvider
- CopyButton
- ShareButton
- DownloadButton
- FilePreview
- PdfViewer
- EmptyState
- ErrorState
- LoadingState
- PageHeader
- FilterBar

## Design system

Componentes devem respeitar:

- docs/design/DESIGN_SYSTEM.md
- docs/design/FEEDBACK_SYSTEM.md
- docs/design/LOADING_STATES.md
- docs/design/SIDEBAR_PATTERN.md
- docs/design/THEME_AND_PREHYDRATION.md

## Tipagem

Usar TypeScript de forma clara.

Evitar `any` sem necessidade.

Criar types quando:

- objeto é compartilhado;
- payload de API é usado em vários lugares;
- feature tem domínio próprio;
- status/enums precisam consistência.

## Validação

Usar schemas quando houver entrada de dados.

Preferir:

- Zod;
- validações centralizadas;
- mensagens claras.

## Checklist

- [ ] Componente tem responsabilidade clara?
- [ ] Feature está isolada?
- [ ] UI genérica não depende de regra específica?
- [ ] Hooks foram usados quando necessário?
- [ ] Services/actions isolam regra de negócio?
- [ ] Types estão claros?
- [ ] Estados de loading/erro/vazio existem?
- [ ] Feedback visual existe?
- [ ] Arquivo não ficou gigante?
