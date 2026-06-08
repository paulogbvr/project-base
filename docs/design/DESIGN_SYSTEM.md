# Design System

Este documento define a direção visual padrão da Project Base.

O design deve ser limpo, premium, rápido, organizado e com identidade forte.

## Direção principal

Por padrão, projetos devem nascer com estética:

- monocromática premium;
- preto, branco, cinzas e uma cor de acento;
- dark mode e light mode;
- interface forte, moderna e clara;
- sem aparência genérica;
- sem excesso de enfeite;
- componentização visual consistente.

## Cor de acento

Todo projeto deve definir uma cor de acento.

Se o usuário não informar, o agente deve perguntar:

Qual cor de acento você quer para este projeto?

Se o usuário não souber, usar um padrão temporário e registrar como decisão pendente.

## Tema

Todo projeto deve prever:

- light;
- dark;
- system quando fizer sentido.

O tema deve ser consistente em:

- fundo;
- cards;
- bordas;
- textos;
- ícones;
- estados;
- hover;
- focus;
- skeletons;
- toasts.

## Pré-hidratação

O design system deve evitar:

- flash de tema errado;
- sidebar abrindo/recolhendo depois da tela carregar;
- layout shift visual;
- mudança brusca de cor após hidratação.

Ver:

- `docs/design/THEME_AND_PREHYDRATION.md`

## Componentes essenciais

Todo projeto deve considerar:

- Button
- Input
- Textarea
- Select
- Checkbox
- Radio
- Switch
- Badge
- Card
- Modal/Dialog
- Drawer/Sheet
- Dropdown
- Tooltip
- Tabs
- Toast
- Skeleton
- EmptyState
- ErrorState
- LoadingState
- StatusPulse
- CopyButton
- DownloadButton
- ShareButton

## Componentes de layout

- AppShell
- Sidebar
- SidebarToggle
- Topbar
- PageHeader
- PageShell
- Section
- FilterBar
- ContentGrid
- MobileNav quando necessário

## Feedback visual

A interface deve responder às ações do usuário.

Usar:

- toasts;
- loading por ação;
- status visual;
- disabled state;
- optimistic update com cuidado;
- mensagens de erro claras;
- estados vazios úteis.

Ver:

- `docs/design/FEEDBACK_SYSTEM.md`

## Loading

Não bloquear a página inteira sem necessidade.

Títulos, filtros e estrutura devem aparecer rapidamente.

Skeleton deve ser por seção.

Ver:

- `docs/design/LOADING_STATES.md`

## Sidebar

Projetos com dashboard/admin devem ter sidebar premium.

Ver:

- `docs/design/SIDEBAR_PATTERN.md`

## Estados visuais

Toda interface deve prever:

- loading;
- empty;
- error;
- success;
- warning;
- disabled;
- hover;
- focus;
- active;
- selected.

## Tipografia

Preferir:

- títulos fortes;
- subtítulos claros;
- textos curtos;
- boa hierarquia;
- espaçamento generoso;
- legibilidade acima de enfeite.

## Espaçamento

Evitar interface apertada.

Usar espaçamento consistente entre:

- seções;
- cards;
- filtros;
- tabelas;
- botões;
- headers.

## Bordas e sombras

Padrão:

- bordas suaves;
- sombras discretas;
- hover refinado;
- contraste suficiente;
- não exagerar em blur/glassmorphism.

## Ícones

Padrão recomendado:

- Lucide Icons

Ícones devem ser:

- simples;
- consistentes;
- alinhados;
- com tamanho proporcional;
- sem poluição visual.

## Motion

Animações devem ser discretas.

Usar apenas quando ajudarem:

- hover;
- transição de sidebar;
- loading;
- status pulse;
- abertura de modal;
- mudança de estado.

Evitar animações que atrapalham performance ou clareza.

## Responsividade

Projetos devem funcionar bem em:

- desktop;
- notebook;
- tablet quando fizer sentido;
- mobile quando fizer sentido.

Padrão:

- dashboard desktop-first com adaptação mobile;
- cardápio/landing page mobile-first quando o público usar celular.

## Acessibilidade básica

Considerar:

- contraste;
- foco visível;
- labels;
- aria quando necessário;
- botão com área clicável adequada;
- evitar depender apenas de cor.

## Checklist visual

Antes de considerar uma tela pronta:

- [ ] O título aparece rápido?
- [ ] O layout é estável?
- [ ] Há feedback para ações?
- [ ] Há estado vazio?
- [ ] Há estado de erro?
- [ ] Há loading refinado?
- [ ] O tema claro/escuro funciona?
- [ ] A sidebar não pisca?
- [ ] O visual parece premium?
- [ ] Os componentes são reutilizáveis?
