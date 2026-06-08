# Supabase Integration

Este documento define o padrão de integração Supabase no nível de aplicação.

Para planejamento de banco, ver:

- `docs/database/SUPABASE.md`
- `docs/database/RLS_POLICIES.md`

## Usos possíveis

Supabase pode ser usado para:

- banco Postgres;
- autenticação;
- storage;
- realtime;
- edge functions;
- RPC;
- migrations;
- dashboard de dados.

## Regra principal

Separar uso client, server e admin.

## Client

Usar no navegador apenas com:

- anon key;
- RLS correta;
- dados permitidos;
- sem service role.

## Server

Usar no servidor para:

- buscar dados privados;
- validar sessão;
- executar lógica segura;
- proteger rotas;
- gerar signed URLs.

## Admin

Usar service role apenas no backend.

Casos:

- webhooks;
- jobs;
- scripts internos;
- operações administrativas;
- migrações controladas.

## Estrutura sugerida

src/lib/supabase/
  client.ts
  server.ts
  admin.ts
  middleware.ts
  storage.ts
  auth.ts

## Auth

Se usar Supabase Auth:

- documentar providers;
- documentar redirect URLs;
- documentar papéis;
- proteger rotas.

## Storage

Se usar Supabase Storage:

- definir buckets;
- público/privado;
- signed URLs;
- limpeza de arquivos;
- permissões.

## Realtime

Se usar Realtime:

- filtrar por escopo;
- não assinar dados de outros usuários;
- limpar subscriptions;
- tratar reconexão;
- mostrar status.

## Edge Functions

Usar para:

- webhooks;
- chamadas externas seguras;
- tarefas com service role;
- processamento backend.

## Checklist

- [ ] Client usa anon key?
- [ ] Service role só no backend?
- [ ] RLS configurada?
- [ ] Storage protegido?
- [ ] Auth configurado?
- [ ] Realtime filtra escopo?
- [ ] Variáveis documentadas?
- [ ] `.env.example` atualizado?
