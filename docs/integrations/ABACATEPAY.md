# AbacatePay

Este documento define o padrão para integração futura com AbacatePay.

## Quando usar

Usar AbacatePay quando o projeto precisar de:

- Pix;
- cartão;
- checkout;
- cobrança;
- pagamento online;
- confirmação automática;
- webhook de pagamento;
- link de pagamento.

## Regra principal

Pagamento precisa ser tratado com segurança e idempotência.

Nunca confiar apenas no frontend para confirmar pagamento.

## Fluxo recomendado

1. Usuário inicia pagamento.
2. Backend cria cobrança.
3. Sistema registra pagamento como pendente.
4. Cliente paga.
5. AbacatePay envia webhook.
6. Backend valida webhook.
7. Sistema atualiza status.
8. Interface mostra confirmação.
9. Cliente/admin recebe feedback.

## Status possíveis

- `pending`
- `waiting_payment`
- `paid`
- `failed`
- `cancelled`
- `refunded`
- `expired`

Adaptar ao projeto.

## Variáveis possíveis

- `ABACATEPAY_API_KEY`
- `ABACATEPAY_WEBHOOK_SECRET`

Essas variáveis são secretas.

Nunca usar `NEXT_PUBLIC_`.

## Checkout transparente

Quando usar checkout transparente:

- gerar cobrança no backend;
- retornar apenas dados necessários;
- proteger API;
- validar status via webhook;
- não marcar como pago apenas por ação do usuário.

## Webhook

Seguir:

- `docs/security/WEBHOOK_SECURITY.md`

Validar:

- assinatura;
- evento;
- valor;
- cobrança;
- external id;
- idempotência.

## External ID

Usar `externalId` ou equivalente para relacionar pagamento ao recurso interno.

Exemplos:

- pedido;
- projeto;
- assinatura;
- cobrança;
- proposta.

## Taxas

Se houver taxa de pagamento:

- documentar regra;
- mostrar de forma clara ao usuário, quando repassada;
- evitar surpresa no checkout.

## Segurança

- API key só no backend;
- webhook secret protegido;
- status final via webhook;
- idempotência;
- logs sem segredo;
- validação de valor.

## Tracking events possíveis

- payment_started
- payment_completed
- payment_failed
- payment_cancelled
- payment_refunded

Registrar em:

- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Checklist

- [ ] Pagamento precisa entrar no MVP?
- [ ] API key documentada?
- [ ] Webhook secret documentado?
- [ ] API cria cobrança no backend?
- [ ] Status inicial é pendente?
- [ ] Webhook valida assinatura?
- [ ] Idempotência considerada?
- [ ] Valor validado?
- [ ] UI mostra feedback?
- [ ] Eventos escolhidos registrados?
