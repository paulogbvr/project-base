# WhatsApp

Este documento define o padrão para integrações futuras com WhatsApp.

## Quando usar

Usar WhatsApp para:

- aviso de pedido;
- atualização de projeto;
- confirmação de pagamento;
- lembrete;
- status de entrega;
- link de acompanhamento;
- notificação de arquivo;
- recuperação de contato;
- suporte.

## Regra principal

Mensagens devem ser úteis, claras e não excessivas.

Seguir estilo de mensagem:

- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

## Tipos de envio

### Manual

Sistema gera mensagem pronta para copiar e colar.

Mais simples e seguro no início.

### Link para WhatsApp

Sistema abre WhatsApp com texto pré-preenchido.

### API oficial

Sistema envia automaticamente via API.

Exige:

- configuração segura;
- templates quando necessário;
- controle de opt-in;
- logs;
- tratamento de erro.

## Eventos possíveis

- pedido recebido;
- pagamento aprovado;
- pedido pronto;
- saiu para entrega;
- projeto atualizado;
- arquivo adicionado;
- cobrança criada;
- lembrete de pagamento;
- link compartilhado.

## Mensagem padrão

Usar:

- `*texto*`
- `_texto_`
- `_*texto*_`
- `>`
- `→`
- `↓`
- `•`

Não usar:

- `#`
- `##`
- emoji por padrão.

## Variáveis possíveis

- `WHATSAPP_API_TOKEN`
- `WHATSAPP_PHONE_NUMBER_ID`
- `WHATSAPP_WEBHOOK_SECRET`
- `WHATSAPP_VERIFY_TOKEN`

Secrets não devem ir para o frontend.

## API configurável pelo front

Se o sistema for para terceiros, permitir configuração pelo painel:

- token mascarado;
- telefone/ID;
- testar conexão;
- status visual;
- remover conexão;
- logs de envio.

Seguir:

- `docs/integrations/API_CONNECTION_SETTINGS.md`
- `docs/security/SECRETS_AND_API_KEYS.md`

## Logs

Registrar:

- mensagem criada;
- mensagem enviada;
- falha;
- destinatário mascarado quando necessário;
- evento relacionado;
- data/hora.

Evitar registrar token.

## Segurança e privacidade

- não enviar mensagem sem permissão quando houver exigência de opt-in;
- não vazar dados sensíveis;
- cuidado com links privados;
- usar tokens seguros em links;
- respeitar templates/regras da plataforma.

## Tracking events possíveis

- whatsapp_message_created
- whatsapp_message_sent
- whatsapp_message_failed
- notification_sent
- notification_opened

Registrar em:

- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Checklist

- [ ] WhatsApp é manual ou automático?
- [ ] Mensagem segue padrão?
- [ ] API token está seguro?
- [ ] Existe status visual?
- [ ] Existe teste de conexão?
- [ ] Logs não vazam segredo?
- [ ] Links usam token seguro?
- [ ] Eventos escolhidos registrados?
