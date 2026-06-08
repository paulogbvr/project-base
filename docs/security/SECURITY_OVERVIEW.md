# Security Overview

Este documento define a visão geral de segurança da Project Base.

Segurança não deve ser tratada como etapa final. Ela deve estar presente desde o planejamento, arquitetura, banco, APIs, links compartilhados, integrações, storage, autenticação e interface.

## Regra principal

Nenhuma funcionalidade sensível deve depender apenas de estar escondida na interface.

Se algo precisa ser protegido, a proteção deve existir também no backend, banco, API, RLS, middleware ou camada equivalente.

## Áreas críticas

A Project Base deve prever segurança para:

- autenticação;
- autorização;
- rotas privadas;
- rotas admin;
- APIs;
- banco de dados;
- RLS;
- links compartilhados;
- tokens públicos;
- variáveis de ambiente;
- chaves de API;
- webhooks;
- storage;
- uploads;
- downloads;
- metadata;
- previews de link;
- dados de cliente;
- arquivos sensíveis;
- logs;
- tracking events.

## Princípios

### Menor privilégio

Cada usuário, token, rota ou API deve acessar apenas o necessário.

### Separação de responsabilidades

A UI pode esconder botões, mas a segurança real deve estar no backend/banco.

### Tokens seguros

Links públicos devem usar tokens curtos, aleatórios e não previsíveis.

### Segredos protegidos

Chaves de API, service role, webhook secrets e tokens privados não devem ir para o frontend.

### Metadata segura

Title, description e preview de link não devem expor dados sensíveis.

### Logs seguros

Logs não devem registrar tokens, segredos, headers de autorização ou dados sensíveis desnecessários.

## Riscos comuns

- usar ID sequencial em link público;
- deixar API sem validação;
- confiar só na UI;
- expor service role no frontend;
- usar `.env.local` no Git;
- deixar bucket público sem necessidade;
- não validar webhook;
- permitir acesso cruzado entre clientes/projetos;
- colocar dado sensível em metadata;
- retornar erro técnico com segredo;
- permitir download de arquivo privado sem checagem.

## Segurança por tipo de projeto

### Projeto privado/admin

Mesmo sendo interno, deve proteger:

- login;
- APIs;
- variáveis;
- arquivos;
- dados financeiros;
- dados de cliente;
- rotas de administração.

### Sistema para terceiros/SaaS

Além do básico, deve prever:

- isolamento por organização/cliente;
- papéis e permissões;
- RLS;
- audit log;
- painel de integrações;
- armazenamento seguro de chaves;
- logs de alterações;
- controle de links compartilhados.

### Link público/cliente

Deve prever:

- token seguro;
- escopo limitado;
- expiração quando necessário;
- revogação;
- metadata sem dados sensíveis;
- validação no backend;
- logs de acesso quando fizer sentido.

## Documentos relacionados

- `docs/security/SECURITY_CHECKLIST.md`
- `docs/security/ENVIRONMENT_VARIABLES.md`
- `docs/security/SECRETS_AND_API_KEYS.md`
- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/security/API_SECURITY.md`
- `docs/security/AUTH_SECURITY.md`
- `docs/security/STORAGE_SECURITY.md`
- `docs/security/WEBHOOK_SECURITY.md`
- `docs/security/PEN_TEST_PLAN.md`
- `docs/architecture/IDENTIFIERS.md`

## Regra para agentes

Ao criar uma funcionalidade, o agente deve responder mentalmente:

- existe dado sensível?
- precisa de login?
- precisa de permissão?
- há API envolvida?
- há link público?
- há arquivo?
- há webhook?
- há chave de API?
- o dado aparece no frontend?
- o dado aparece em metadata?
- o usuário pode manipular IDs?
- precisa de RLS?

Se qualquer resposta for sim, revisar os documentos de segurança antes de implementar.

## Checklist rápido

- [ ] Rotas privadas protegidas
- [ ] APIs com autenticação/autorização
- [ ] Links públicos com token seguro
- [ ] Segredos fora do frontend
- [ ] `.env.local` ignorado
- [ ] RLS planejada quando usar Supabase
- [ ] Storage com regras claras
- [ ] Webhooks validados
- [ ] Metadata sem dados sensíveis
- [ ] Logs sem segredos
