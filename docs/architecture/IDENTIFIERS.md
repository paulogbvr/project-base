# Identifiers

Este documento define o padrão de identificadores da Project Base.

A regra principal é separar identidade técnica interna de identificadores públicos, amigáveis e seguros.

## Regra principal

Usar UUID como identificador técnico interno.

Não usar ID numérico sequencial como chave principal de tabelas importantes.

## Separação oficial

### UUID

Uso interno, técnico e relacional.

Exemplos:

- `users.id`
- `projects.id`
- `customers.id`
- `orders.id`
- `payments.id`
- `files.id`
- `shared_links.id`

Padrão recomendado no banco:

id uuid primary key default gen_random_uuid()

### Slug

Uso em URLs amigáveis e legíveis.

Exemplos:

- `/core`
- `/worklog`
- `/rukka`
- `/clientes/joao-silva`

Campos comuns:

- `projects.slug`
- `restaurants.slug`
- `clients.slug`
- `organizations.slug`

Regras para slug:

- usar letras minúsculas;
- remover acentos;
- substituir espaços por hífen;
- evitar caracteres especiais;
- manter único dentro do escopo necessário;
- não usar slug como única barreira de segurança.

### Token público

Uso em links públicos, links compartilhados, sessões, mesas, convites e acessos sem login.

Exemplos:

- `lk_9Kf72aPq`
- `tbl_8fK29xA`
- `sess_Pq82Lm9X`
- `share_x8Kp2QmA`

Regras:

- curto o suficiente para ser usável;
- aleatório;
- não previsível;
- não sequencial;
- com prefixo que indique o tipo;
- revogável quando possível;
- expirável quando o contexto exigir.

Prefixos sugeridos:

- `lk_` para links
- `sh_` para compartilhamentos
- `tbl_` para mesas
- `sess_` para sessões
- `inv_` para convites
- `pay_` para pagamentos públicos
- `ord_` para referência pública de pedido, quando necessário

### Número amigável

Uso para exibição humana, atendimento, suporte e comunicação com cliente.

Exemplos:

- Pedido #000342
- Projeto #0012
- Cliente #129
- Mesa 04

Campos comuns:

- `orders.order_number`
- `projects.project_number`
- `customers.customer_number`
- `tables.label`

Regra:

Número amigável pode ser sequencial, mas não deve ser usado como chave principal nem como única proteção de acesso.

## Padrão recomendado por tipo de dado

### Projeto

- `id` → UUID interno
- `slug` → URL amigável
- `project_number` → número amigável opcional
- `public_token` → token para link compartilhado, quando existir

### Cliente

- `id` → UUID interno
- `customer_number` → número amigável para admin
- `slug` → opcional, se houver página amigável
- `public_token` → apenas se houver link público seguro

### Pedido

- `id` → UUID interno
- `order_number` → número visível para cliente/admin
- `public_token` → se o cliente acompanhar pedido sem login

### Mesa / sessão

- `id` → UUID interno
- `label` → Mesa 04
- `token` → token seguro do QR Code
- `session_token` → token temporário da sessão ativa, quando necessário

### Link compartilhado

- `id` → UUID interno
- `token` → token público seguro
- `expires_at` → expiração opcional
- `revoked_at` → revogação opcional
- `access_count` → contador opcional
- `last_accessed_at` → último acesso opcional

## Links públicos

Links públicos nunca devem depender de ID previsível.

Evitar:

- `/cliente/1`
- `/pedido/2`
- `/mesa/4`
- `/share/123`
- `/project/0001`

Preferir:

- `/share/lk_9Kf72aPq`
- `/mesa/tbl_8fK29xA`
- `/pedido/ord_Kp82Lm9x`

## Dados mockados

Mesmo em mock, evitar IDs previsíveis quando eles simulam acesso público.

Evitar:

- `id: "1"`
- `id: "2"`
- `token: "token-1"`
- `shareUrl: "/share/teste"`

Preferir:

- `id: "mock-project-uuid-like-core"`
- `token: "lk_mock_9Kf72aPq"`
- `shareUrl: "/share/lk_mock_9Kf72aPq"`

## Segurança

UUID não é senha.

Token público não deve carregar dado sensível.

Slug não deve ser usado como proteção.

A autorização real deve existir no backend, no banco, nas APIs e nas políticas de acesso.

## Checklist

Antes de criar uma rota, tabela ou link público, verificar:

- [ ] O ID técnico é UUID?
- [ ] A URL pública evita ID previsível?
- [ ] O token público é aleatório?
- [ ] O token pode ser revogado quando necessário?
- [ ] Existe separação entre ID interno e número amigável?
- [ ] O link não expõe dado sensível?
- [ ] O backend valida permissão?
- [ ] A RLS ou regra equivalente protege o dado?
