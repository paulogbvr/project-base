
# Loading States

## Regra principal

A página deve parecer rápida.

Títulos, estrutura principal e filtros devem carregar imediatamente sempre que possível.

Skeleton deve aparecer apenas onde o conteúdo depende de dados.

## Evitar

- Página inteira em skeleton sem necessidade
- Título sumindo
- Filtros carregando tarde
- Layout pulando
- Bloquear toda a interface por uma seção que ainda carrega

## Padrão correto

- PageHeader carrega rápido
- FilterBar carrega rápido
- Cards/tabelas usam skeleton por seção
- Estados vazios e erros são claros
