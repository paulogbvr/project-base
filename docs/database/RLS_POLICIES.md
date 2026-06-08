# RLS Policies

Este documento define o padrão para Row Level Security no Supabase.

## Regra principal

Quando usar Supabase com dados privados, RLS deve ser considerada obrigatória.

A interface não é segurança.

API sem RLS pode vazar dados se a consulta estiver errada.

## Objetivo da RLS

Garantir que cada usuário acesse apenas os dados permitidos, mesmo se:

- manipular URL;
- manipular payload;
- chamar API diretamente;
- alterar UUID;
- tentar acessar outra organização;
- usar anon key no frontend.

## Quando usar RLS

Usar RLS em tabelas com:

- dados de cliente;
- dados financeiros;
- projetos;
- pedidos;
- pagamentos;
- arquivos;
- links privados;
- chaves/integrations;
- dados por organização;
- dados por usuário.

## Multi-tenant

Em sistemas multi-tenant, a política deve garantir escopo.

Exemplos de escopo:

- `organization_id`
- `workspace_id`
- `restaurant_id`
- `project_id`
- `customer_id`

## Papéis

Possíveis papéis:

- owner;
- admin;
- manager;
- staff;
- viewer;
- customer.

Papéis devem ser validados por tabela de membros/permissões.

## Tabelas comuns

### organizations

Usuário acessa organizações onde é membro.

### organization_members

Usuário acessa membership próprio ou memberships se for admin/owner.

### projects

Usuário acessa projetos da organização onde tem permissão.

### files

Usuário acessa arquivos associados a recursos permitidos.

### shared_links

Link público pode ser acessado por token, mas deve retornar apenas dados permitidos.

### integration_settings

Acesso restrito a owner/admin.

Nunca retornar segredo completo sem necessidade.

## Links públicos

Links públicos podem exigir lógica diferente.

Opções:

- rota backend valida token e usa service role com filtro seguro;
- view pública limitada;
- função RPC que valida token;
- política específica para token, com muito cuidado.

Nunca expor tabela completa de dados privados via anon key.

## Service role

Service role ignora RLS.

Usar apenas no backend e com filtros explícitos.

Nunca no frontend.

## Testes obrigatórios

Testar:

- usuário sem login;
- usuário de outra organização;
- usuário sem permissão;
- alteração manual de UUID;
- acesso via API;
- link público inválido;
- link público expirado;
- link público revogado.

## Checklist RLS

- [ ] RLS habilitada nas tabelas sensíveis?
- [ ] Políticas de SELECT criadas?
- [ ] Políticas de INSERT criadas?
- [ ] Políticas de UPDATE criadas?
- [ ] Políticas de DELETE criadas?
- [ ] Multi-tenant protegido?
- [ ] Usuário sem permissão bloqueado?
- [ ] Service role não está no frontend?
- [ ] Links públicos tratados com segurança?
- [ ] Testes manuais feitos?
