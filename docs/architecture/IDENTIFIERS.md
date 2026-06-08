
# Identifiers

## Regra principal

Usar UUID como identificador técnico interno.

## Separação

- UUID → banco de dados e relações internas
- Slug → URLs amigáveis
- Token curto seguro → links públicos, sessões, mesas e compartilhamentos
- Número amigável → exibição humana

## Exemplos

- `projects.id` → UUID
- `projects.slug` → `core`
- `shared_links.token` → `lk_9Kf72aPq`
- `orders.order_number` → `000342`

## Proibições

- Não usar ID numérico sequencial como chave principal.
- Não usar IDs previsíveis em links públicos.
- Não expor UUID técnico quando um token público for mais seguro.
