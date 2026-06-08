# Supabase

Este documento define o padrão de uso do Supabase em projetos derivados da Project Base.

## Quando usar Supabase

Usar Supabase quando o projeto precisar de:

- banco de dados;
- autenticação;
- storage;
- realtime;
- RLS;
- edge functions;
- painel rápido de dados;
- APIs seguras com Postgres.

## Regra principal

Supabase deve ser usado com segurança.

Não basta conectar e consultar.

Planejar:

- schema;
- RLS;
- variáveis;
- service role;
- client público;
- storage;
- auth;
- backup;
- ambientes.

## Ambientes

Projetos podem ter:

- desenvolvimento;
- staging;
- produção.

Nome sugerido:

- `nome-do-projeto-dev`
- `nome-do-projeto-prod`

## Variáveis

Variáveis públicas:

- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`

Variáveis secretas:

- `SUPABASE_SERVICE_ROLE_KEY`

Regra:

`SUPABASE_SERVICE_ROLE_KEY` nunca vai para frontend.

## Clients

Separar clientes:

### Browser/client

Usa anon key.

Pode ser usado no frontend com RLS correta.

### Server

Usa cookies/session quando necessário.

### Admin/service role

Apenas no backend.

Usar com muito cuidado.

## RLS

RLS deve ser planejada antes de usar dados reais.

Ver:

- `docs/database/RLS_POLICIES.md`

## Auth

Supabase Auth pode ser usado para:

- e-mail/senha;
- magic link;
- Google Auth;
- OAuth;
- admin/equipe;
- usuários do sistema.

Documentar decisão em:

- `docs/security/AUTH_SECURITY.md`
- `docs/integrations/GOOGLE_AUTH.md`

## Storage

Supabase Storage pode ser usado para:

- imagens;
- PDFs;
- comprovantes;
- logos;
- arquivos de cliente;
- previews.

Seguir:

- `docs/security/STORAGE_SECURITY.md`
- `docs/storage/STORAGE_MANAGEMENT.md`

## Realtime

Realtime pode ser útil para:

- pedidos;
- notificações;
- status;
- dashboards;
- mensagens;
- atualizações de projeto.

Usar com cuidado para não expor dados de outro escopo.

## Edge Functions

Usar quando precisar de:

- webhook;
- processamento seguro;
- integração backend;
- tarefas sensíveis;
- operações com service role;
- chamadas externas protegidas.

## Migrations

Quando o projeto crescer, preferir migrations rastreáveis.

Registrar mudanças de banco em:

- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/PROGRESS.md`

## Seeds

Seeds devem evitar IDs públicos previsíveis em cenários que simulem links.

Usar dados realistas, mas sem dados sensíveis reais.

## Checklist Supabase

- [ ] Projeto Supabase criado?
- [ ] `.env.example` atualizado?
- [ ] `.env.local` preenchido localmente?
- [ ] Service role protegida?
- [ ] RLS planejada?
- [ ] Tabelas principais definidas?
- [ ] Storage definido?
- [ ] Auth definido?
- [ ] Realtime necessário?
- [ ] Edge Functions necessárias?
- [ ] Seeds seguros?
