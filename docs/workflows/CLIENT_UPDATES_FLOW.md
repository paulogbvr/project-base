# Client Updates Flow

Este documento define o padrão para atualizações visíveis ao cliente.

## Objetivo

Permitir que clientes acompanhem o andamento de algo por link ou área própria.

Exemplos:

- projeto;
- pedido;
- pagamento;
- produção;
- entrega;
- proposta;
- solicitação;
- atendimento;
- suporte.

## Regra principal

Atualizações para cliente devem ser claras, seguras e filtráveis.

O cliente deve entender rapidamente:

- o que aconteceu;
- quando aconteceu;
- qual é o status atual;
- qual é o próximo passo.

## Fluxo básico

1. Admin registra atualização.
2. Sistema salva atualização.
3. Cliente acessa link/área.
4. Sistema mostra timeline.
5. Cliente pode filtrar quando houver muitas atualizações.
6. Sistema exibe status atual.
7. Sistema permite copiar/compartilhar link quando autorizado.

## Dados de uma atualização

Campos possíveis:

- id UUID;
- public token, se necessário;
- tipo;
- status;
- título;
- descrição;
- data/hora;
- autor;
- visibilidade;
- recurso relacionado;
- anexos;
- metadata segura.

## Tipos de atualização

Exemplos:

- status alterado;
- pagamento registrado;
- arquivo anexado;
- pedido recebido;
- produção iniciada;
- etapa concluída;
- mensagem enviada;
- entrega atualizada;
- observação pública.

## Visibilidade

Cada atualização pode ser:

- interna;
- pública para cliente;
- pública via link;
- restrita a admin;
- restrita a equipe.

Nunca mostrar atualização interna em link público sem permissão.

## Timeline

A timeline deve mostrar:

- data/hora;
- título;
- status;
- descrição curta;
- ícone/status visual;
- anexos permitidos;
- ordem clara.

## Filtros

Filtros possíveis:

- todas;
- status;
- pagamentos;
- arquivos;
- mensagens;
- etapas;
- pendências;
- concluídas.

## Link compartilhado

Quando atualizações forem acessadas via link, seguir:

- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/workflows/SHARED_LINK_FLOW.md`

## Mensagem WhatsApp

Quando enviar link de acompanhamento, seguir:

- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

Exemplo:

*→ Atualização Registrada!*

> *Projeto: →* Nome do Projeto
> _*08/06/2026 - 21:40*_

*Status: →* Em andamento
*Etapa: →* Revisão visual

*Você pode acompanhar todas as atualizações pelo link abaixo:* ↓
https://exemplo.com/share/lk_token

## Segurança

Não mostrar:

- dados internos;
- notas privadas;
- custo interno;
- segredos;
- dados de outros clientes;
- arquivos sem permissão.

## Feedback visual

Prever:

- StatusPulse;
- badges de status;
- empty state;
- loading por seção;
- toast ao copiar link;
- erro amigável.

## Tracking events possíveis

- client_update_created
- client_update_viewed
- client_updates_filtered
- shared_link_opened
- shared_link_copied

Registrar em:

- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Checklist

- [ ] Atualizações têm visibilidade?
- [ ] Timeline é clara?
- [ ] Cliente vê apenas o permitido?
- [ ] Filtros existem quando necessário?
- [ ] Link compartilhado é seguro?
- [ ] Mensagem WhatsApp segue padrão?
- [ ] Arquivos anexados respeitam permissão?
- [ ] Empty/loading/error states existem?
- [ ] Eventos escolhidos registrados?
