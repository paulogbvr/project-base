# Loading States

Este documento define o padrão de loading e skeleton da Project Base.

## Regra principal

A página deve parecer rápida.

Mesmo quando os dados ainda estão carregando, a estrutura principal deve aparecer logo.

## Problema que queremos evitar

Evitar:

- página inteira em skeleton;
- título desaparecendo;
- filtros carregando tarde;
- layout pulando;
- tela parecendo travada;
- loading genérico em tudo;
- bloqueio total por causa de uma seção.

## Padrão desejado

A estrutura da página deve carregar primeiro.

Carregar rapidamente:

- título;
- subtítulo;
- ações principais;
- filtros estáticos;
- abas principais;
- layout base.

Usar skeleton apenas para:

- cards de dados;
- tabelas;
- métricas;
- listas;
- gráficos;
- previews;
- conteúdo que depende de API/banco.

## PageHeader

O `PageHeader` deve aparecer rápido.

Ele pode conter:

- título;
- descrição;
- ação principal;
- breadcrumbs;
- status;
- botão de filtro.

Evitar skeleton no título quando o título for conhecido pela rota.

## FilterBar

Filtros principais devem aparecer rápido quando forem estáticos.

Se as opções vierem da API, carregar:

- estrutura do filtro;
- skeleton apenas no conteúdo interno;
- fallback claro.

## Cards

Cards podem ter skeleton próprio.

Exemplos:

- MetricCardSkeleton
- ProjectCardSkeleton
- PaymentCardSkeleton
- OrderCardSkeleton

Evitar skeleton genérico sem forma do componente real.

## Tabelas

Tabelas devem manter:

- cabeçalho visível;
- filtros visíveis;
- skeleton nas linhas;
- paginação estável quando possível.

## Gráficos

Gráficos podem ter:

- container fixo;
- skeleton proporcional;
- mensagem se não houver dados.

## Loading por seção

Preferir loading por seção ao invés de loading global.

Exemplo:

- métricas carregando;
- tabela carregando;
- timeline carregando;
- filtros já visíveis.

## Layout shift

Evitar mudança brusca de altura/largura.

Reservar espaço para:

- imagens;
- cards;
- tabelas;
- gráficos;
- sidebars;
- headers.

## Loading de ação

Ações devem ter loading específico.

Exemplos:

- botão salvar;
- botão testar conexão;
- botão baixar;
- botão enviar;
- botão copiar.

Não travar a página inteira se só um botão está carregando.

## Empty State

Quando não houver dados, mostrar empty state útil.

Incluir:

- título curto;
- explicação;
- ação sugerida;
- botão quando fizer sentido.

## Error State

Quando houver erro, mostrar:

- mensagem clara;
- ação para tentar novamente;
- instrução se faltar configuração;
- sem vazar segredo técnico.

## Checklist

Antes de aprovar uma tela:

- [ ] O título aparece rápido?
- [ ] Os filtros principais aparecem rápido?
- [ ] O layout não pula?
- [ ] O skeleton representa o componente real?
- [ ] O loading é por seção?
- [ ] Botões têm loading próprio?
- [ ] Existe empty state?
- [ ] Existe error state?
- [ ] A tela parece rápida?
- [ ] O usuário sabe o que está acontecendo?
