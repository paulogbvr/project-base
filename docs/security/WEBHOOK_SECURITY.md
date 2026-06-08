# Webhook Security

Este documento define o padrão de segurança para webhooks.

## Regra principal

Nunca confiar cegamente em payload de webhook.

Webhook deve ser validado, registrado e processado de forma idempotente.

## Validação

Sempre que a integração oferecer, validar:

- assinatura;
- secret;
- timestamp;
- origem;
- event id;
- formato do payload.

## Idempotência

Um webhook pode ser enviado mais de uma vez.

O sistema deve evitar:

- pagamento duplicado;
- pedido duplicado;
- atualização duplicada;
- envio duplicado de mensagem.

Guardar identificador do evento quando possível.

## Ordem dos eventos

Eventos podem chegar fora de ordem.

Exemplo:

- pagamento confirmado chega antes de evento de criação;
- cancelamento chega depois de confirmação.

A regra de negócio deve lidar com isso.

## Logs

Registrar:

- event id;
- tipo de evento;
- data/hora;
- status de processamento;
- erro, se houver;
- recurso relacionado.

Não registrar:

- assinatura secreta;
- headers sensíveis completos;
- token completo;
- payload com dado sensível sem necessidade.

## Erros

Webhook deve responder corretamente para a integração.

Cuidado:

- erro temporário pode gerar retry;
- erro permanente deve ser registrado;
- não vazar detalhes internos.

## Segurança por integração

### Pagamentos

Validar:

- assinatura;
- valor;
- status;
- external id;
- idempotência;
- se cobrança pertence ao projeto/cliente certo.

### WhatsApp

Validar:

- token;
- origem;
- tipo de evento;
- dados mínimos;
- duplicidade.

### Storage/externos

Validar evento e escopo.

## Checklist

- [ ] Webhook valida assinatura?
- [ ] Webhook valida timestamp quando existe?
- [ ] Payload é validado?
- [ ] Evento é idempotente?
- [ ] Evento duplicado não quebra o sistema?
- [ ] Evento fora de ordem foi considerado?
- [ ] Logs não vazam segredo?
- [ ] Erros são tratados corretamente?
- [ ] Recurso relacionado é validado?
- [ ] Webhook está documentado?
