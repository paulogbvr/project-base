# Database

Este documento define o padrão de planejamento de banco de dados para projetos derivados da Project Base.

## Regra principal

O banco deve ser planejado antes da implementação final.

Mesmo que o projeto comece com dados mockados, o agente deve pensar na estrutura futura de dados para evitar refatoração desnecessária.

## Princípios

- UUID como identificador técnico interno.
- Slugs apenas para URLs amigáveis.
- Tokens públicos para links compartilhados.
- Números amigáveis para exibição humana.
- Campos sensíveis identificados desde o início.
- Índices planejados para consultas importantes.
- Regras de acesso documentadas.
- RLS planejada quando usar Supabase.
- Soft delete considerado quando necessário.
- Audit log considerado em dados sensíveis.

## Etapas para planejar o banco

1. Listar entidades principais.
2. Definir relacionamentos.
3. Definir campos obrigatórios.
4. Definir campos sensíveis.
5. Definir identificadores.
6. Definir status/enums.
7. Definir índices.
8. Definir permissões.
9. Definir RLS.
10. Definir estratégia de seed/mock.

## Identificadores

Seguir:

- `docs/architecture/IDENTIFIERS.md`

Padrão:

- `id` → UUID interno
- `slug` → URL amigável
- `public_token` → link público seguro
- `number` ou `*_number` → número amigável

## Campos padrão recomendados

Para tabelas principais:

- `id`
- `created_at`
- `updated_at`
- `deleted_at`, quando usar soft delete
- `created_by`, quando fizer sentido
- `updated_by`, quando fizer sentido
- `organization_id`, quando multi-tenant
- `user_id`, quando pertence a usuário
- `status`, quando tiver fluxo

## Soft delete

Usar soft delete quando:

- o dado tem valor histórico;
- há necessidade de auditoria;
- há relação com pagamentos;
- há relação com cliente;
- há arquivos associados;
- exclusão definitiva pode causar perda importante.

Campos comuns:

- `deleted_at`
- `deleted_by`
- `delete_reason`

## Status

Status deve ser claro e previsível.

Exemplos:

- `draft`
- `pending`
- `active`
- `inactive`
- `completed`
- `cancelled`
- `archived`
- `failed`
- `blocked`

Documentar status em regras de negócio quando existirem.

## Dados sensíveis

Identificar campos como:

- e-mail;
- telefone;
- endereço;
- CPF;
- CNPJ;
- documentos;
- pagamentos;
- chaves de API;
- tokens;
- arquivos privados;
- observações internas.

Dados sensíveis exigem regras de acesso mais cuidadosas.

## Multi-tenant

Se o projeto tiver múltiplos clientes, empresas, restaurantes, organizações ou usuários isolados, considerar:

- `organization_id`
- `workspace_id`
- `restaurant_id`
- `client_id`
- `project_id`

A separação precisa existir no banco e nas APIs, não apenas na UI.

## Arquivos

Arquivos devem ter tabela/metadados quando forem importantes.

Campos possíveis:

- `id`
- `bucket`
- `path`
- `original_name`
- `mime_type`
- `size`
- `visibility`
- `resource_type`
- `resource_id`
- `uploaded_by`
- `deleted_at`

Ver:

- `docs/storage/STORAGE_MANAGEMENT.md`
- `docs/storage/FILE_LIFECYCLE.md`

## Audit log

Considerar audit log para:

- alterações em pagamento;
- alteração de status;
- remoção de arquivo;
- troca de chave de API;
- login/admin;
- criação/revogação de link;
- ações destrutivas.

Campos possíveis:

- `id`
- `actor_id`
- `action`
- `resource_type`
- `resource_id`
- `metadata`
- `created_at`

## Tracking events

Eventos de analytics podem ficar em tabela própria quando necessário.

Ver:

- `docs/analytics/TRACKING_EVENTS_LIBRARY.md`
- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Checklist de banco

- [ ] Entidades principais listadas?
- [ ] Relacionamentos definidos?
- [ ] UUID usado como ID interno?
- [ ] Slugs/tokens/números amigáveis definidos?
- [ ] Campos sensíveis identificados?
- [ ] Status documentados?
- [ ] Soft delete considerado?
- [ ] Índices principais considerados?
- [ ] RLS planejada, se usar Supabase?
- [ ] Storage modelado, se houver arquivos?
- [ ] Audit log considerado?
- [ ] Seeds/mocks planejados?
