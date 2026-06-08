# Stack

Este documento define a stack técnica padrão recomendada para projetos derivados da Project Base.

A stack pode mudar conforme o projeto, mas qualquer alteração relevante deve ser registrada em:

- `docs/project-memory/DECISIONS.md`

## Regra principal

Usar stack moderna, produtiva, segura e fácil de manter.

Não adicionar dependências sem necessidade.

## Stack padrão para projetos web

### Framework

- Next.js

### Linguagem

- TypeScript

### Estilo

- Tailwind CSS

### UI

- shadcn/ui, quando fizer sentido
- Lucide Icons
- Sonner ou sistema equivalente de toasts

### Formulários

- React Hook Form
- Zod
- @hookform/resolvers

### Banco / backend

- Supabase, quando o projeto precisar de banco, auth, storage ou realtime

### Deploy

- Vercel, quando fizer sentido

### Versionamento

- Git
- GitHub

## Next.js

Usar Next.js principalmente para:

- App Router;
- rotas públicas;
- rotas privadas;
- APIs;
- server components;
- metadata;
- preview de link;
- deploy na Vercel.

## TypeScript

TypeScript deve ser usado para:

- reduzir erro;
- deixar payloads claros;
- tipar domínio;
- evitar `any` desnecessário;
- facilitar manutenção por agentes.

## Tailwind CSS

Tailwind deve ser usado para:

- velocidade;
- consistência;
- responsividade;
- design system;
- dark/light mode.

Evitar classes desorganizadas demais em componentes grandes.

Quando necessário, extrair componentes.

## shadcn/ui

Usar quando fizer sentido para acelerar:

- Button;
- Input;
- Dialog;
- Sheet;
- Dropdown;
- Tabs;
- Tooltip;
- Form;
- Table;
- Card.

Regra:

Customizar para não ficar com cara genérica.

## Lucide Icons

Ícones recomendados:

- limpos;
- consistentes;
- bons para dashboard;
- bons para sidebar;
- fáceis de usar.

Ícones comuns:

- PanelLeft
- PanelLeftClose
- ChevronLeft
- ChevronRight
- Settings
- User
- Bell
- Copy
- Download
- Share
- Check
- AlertTriangle
- XCircle
- Loader

## Toasts

Usar Sonner ou equivalente.

Padrão:

- sucesso;
- erro;
- aviso;
- informação;
- loading;
- ação com undo quando fizer sentido.

Ver:

- `docs/design/FEEDBACK_SYSTEM.md`

## Validação

Usar Zod para:

- formulários;
- payloads de API;
- variáveis quando necessário;
- schemas compartilhados.

## Formulários

Usar React Hook Form quando o formulário tiver:

- múltiplos campos;
- validação;
- estados;
- máscara;
- envio;
- erro.

Formulário simples pode usar estado local quando fizer sentido.

## Supabase

Usar quando precisar de:

- banco;
- auth;
- storage;
- realtime;
- RLS.

Separar:

- client;
- server;
- admin.

Ver:

- `docs/database/SUPABASE.md`
- `docs/integrations/SUPABASE.md`

## Auth

Opções:

- Supabase Auth;
- Google Auth;
- magic link;
- e-mail/senha;
- link público seguro;
- telefone/OTP, quando fizer sentido.

A escolha depende do projeto.

Ver:

- `docs/security/AUTH_SECURITY.md`
- `docs/integrations/GOOGLE_AUTH.md`

## Pagamentos

Preferência futura:

- AbacatePay

Ver:

- `docs/integrations/ABACATEPAY.md`

## WhatsApp

Para notificações ou mensagens:

- manual no início;
- link com texto pronto;
- API oficial em fases futuras.

Ver:

- `docs/integrations/WHATSAPP.md`

## Analytics

Pode ser:

- tracking próprio;
- ferramenta externa;
- logs internos;
- eventos em banco.

Ver:

- `docs/analytics/TRACKING_EVENTS_LIBRARY.md`

## Storage

Preferência quando usar Supabase:

- Supabase Storage

Mas a arquitetura deve permitir adaptar a outro storage.

Ver:

- `docs/storage/STORAGE_MANAGEMENT.md`

## Utilitários brasileiros

Quando necessário:

- CPF;
- CNPJ;
- CEP;
- telefone;
- BRL;
- idade;
- NF;
- PIX.

Ver:

- `docs/architecture/BR_UTILS.md`

## Dependências a considerar

Base web comum:

```txt
next
react
react-dom
typescript
tailwindcss
lucide-react
sonner
zod
react-hook-form
@hookform/resolvers
```

Supabase:

```txt
@supabase/supabase-js
@supabase/ssr
```

IDs/tokens:

```txt
nanoid
```

Datas:

```txt
date-fns
```

Adicionar apenas se necessário.

## Regras para dependências

Antes de adicionar uma dependência, verificar:

- ela é realmente necessária?
- dá para resolver sem ela?
- é mantida?
- aumenta muito o bundle?
- funciona bem com Next.js?
- o agente sabe usar?
- existe alternativa já instalada?

Registrar decisão se for relevante.

## Scripts comuns

Projetos Next.js geralmente terão:

```txt
dev
build
start
lint
typecheck
```

Adicionar outros conforme necessidade.

## Ambientes

Projetos podem ter:

- local;
- preview;
- staging;
- production.

Variáveis devem seguir:

- `.env.example`
- `.env.local.example`
- `.env.local`

## O que evitar

- instalar biblioteca para coisa simples;
- misturar várias libs de UI;
- usar service role no frontend;
- criar stack diferente sem motivo;
- ignorar TypeScript;
- deixar validação só no frontend;
- depender apenas de mock;
- não documentar decisões técnicas.

## Checklist de stack

- [ ] Framework definido?
- [ ] TypeScript usado?
- [ ] UI library definida?
- [ ] Toasts definidos?
- [ ] Validação definida?
- [ ] Banco definido?
- [ ] Auth definido?
- [ ] Storage definido?
- [ ] Deploy definido?
- [ ] Dependências justificadas?
- [ ] Decisões registradas?
