# Next SaaS Template

Template futuro para criar projetos web/SaaS a partir da Project Base.

Este template ainda é uma especificação. Ele deve orientar a criação de uma base Next.js completa, com documentação, segurança, design system, agentes e estrutura de desenvolvimento.

## Objetivo

Criar rapidamente um projeto Next.js com:

- TypeScript;
- Tailwind CSS;
- estrutura componentizada;
- dark/light mode;
- pré-hidratação;
- sidebar premium;
- toasts;
- StatusPulse;
- loading states refinados;
- Supabase preparado;
- autenticação planejada;
- links compartilhados seguros;
- documentação viva;
- agent-state;
- agent-reports;
- project-memory.

## Quando usar

Usar este template quando o projeto precisar de:

- sistema web;
- dashboard;
- área admin;
- área de cliente;
- SaaS;
- sistema interno;
- portal;
- CRUD;
- login;
- banco;
- storage;
- integrações;
- links compartilhados;
- deploy na Vercel.

## Stack recomendada

- Next.js
- TypeScript
- Tailwind CSS
- shadcn/ui, quando fizer sentido
- Lucide Icons
- Sonner para toasts
- Zod
- React Hook Form
- Supabase
- Vercel

Ver:

- `docs/architecture/STACK.md`

## Estrutura esperada

```txt
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
    forms/
    data-display/
    shared/

  features/
    auth/
    customers/
    projects/
    files/
    shared-links/
    notifications/
    settings/

  lib/
    supabase/
    validations/
    ids/
    dates/
    formatters/
    storage/
    analytics/
    security/
    integrations/
    utils/

  styles/
    globals.css
    tokens.css

  data/
    mock/
    seed/
```

## Componentes base esperados

### Layout

- AppShell
- Sidebar
- Topbar
- PageShell
- PageHeader
- SidebarToggle
- ThemeToggle

### Feedback

- ToastProvider
- StatusPulse
- LoadingState
- EmptyState
- ErrorState
- Skeleton

### Ações

- CopyButton
- ShareButton
- DownloadButton
- ConnectionTestButton

### Integrações

- EnvironmentStatusPanel
- IntegrationStatusCard
- ApiKeyField

## Tema e pré-hidratação

O template deve vir com:

- dark mode;
- light mode;
- system mode, se fizer sentido;
- localStorage key documentada;
- script de pré-hidratação;
- prevenção de flash visual;
- sidebar sem glitch.

Ver:

- `docs/design/THEME_AND_PREHYDRATION.md`

## Sidebar

Projetos com painel devem ter sidebar com:

- logo;
- hover;
- botão de expandir/recolher;
- estado persistido;
- item ativo;
- footer/perfil;
- responsividade;
- comportamento sem glitch.

Ver:

- `docs/design/SIDEBAR_PATTERN.md`

## Supabase

O template pode vir preparado para Supabase, mas não deve exigir conexão real imediatamente.

Prever:

- client browser;
- server client;
- admin client;
- `.env.example`;
- `.env.local.example`;
- RLS documentada;
- storage documentado.

Ver:

- `docs/database/SUPABASE.md`
- `docs/integrations/SUPABASE.md`
- `docs/database/RLS_POLICIES.md`

## Segurança

O template deve nascer com atenção a:

- env vars;
- secrets;
- APIs;
- auth;
- storage;
- links compartilhados;
- metadata;
- webhooks.

Ver:

- `docs/security/SECURITY_OVERVIEW.md`
- `docs/security/SECURITY_CHECKLIST.md`

## Links compartilhados

Se o projeto usar links públicos, o template deve prever:

- token seguro;
- rota pública;
- metadata segura;
- copy button;
- share message;
- revogação futura;
- expiração futura;
- tracking opcional.

Ver:

- `docs/workflows/SHARED_LINK_FLOW.md`

## Arquivos de documentação que devem vir junto

O template deve manter:

- README.md
- START_HERE.md
- AGENTS.md
- CLAUDE.md
- CODEX.md
- docs/
- docs/project-memory/
- docs/agent-state/
- docs/agent-reports/

## Variáveis

O template deve manter:

- `.env.example`
- `.env.local.example`
- `.gitignore`

Nunca commitar `.env.local`.

## Primeiro fluxo recomendado

1. Criar app shell.
2. Criar tema e pré-hidratação.
3. Criar sidebar.
4. Criar página inicial/dashboard.
5. Criar dados mockados.
6. Criar componentes de feedback.
7. Criar estrutura de features.
8. Conectar Supabase apenas quando o fluxo visual estiver validado.

## O que não fazer no template inicial

- Não conectar API real sem necessidade.
- Não colocar chave real.
- Não criar complexidade antes do MVP.
- Não instalar biblioteca sem decisão.
- Não deixar visual genérico.
- Não criar rotas públicas com ID previsível.
- Não ignorar documentação viva.

## Checklist

- [ ] Next.js configurado?
- [ ] TypeScript configurado?
- [ ] Tailwind configurado?
- [ ] Dark/light mode planejado?
- [ ] Pré-hidratação planejada?
- [ ] Sidebar planejada?
- [ ] Toasts planejados?
- [ ] StatusPulse planejado?
- [ ] Supabase preparado?
- [ ] Env examples preparados?
- [ ] Segurança documentada?
- [ ] Links compartilhados considerados?
- [ ] Agent-state e reports incluídos?
