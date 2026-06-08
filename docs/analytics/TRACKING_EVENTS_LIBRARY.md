# Tracking Events Library

Biblioteca de eventos possíveis para projetos derivados da Project Base.

Nem todo projeto precisa usar todos os eventos.

O agente deve escolher os eventos úteis e registrar os descartados em:

- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Regra principal

Tracking deve ajudar a entender comportamento, operação e conversão.

Não rastrear dados sensíveis desnecessários.

## Convenção de nomes

Usar snake_case.

Exemplos:

- `page_viewed`
- `shared_link_opened`
- `payment_completed`

## Campos comuns

Eventos podem ter:

- `event_name`
- `user_id`
- `session_id`
- `organization_id`
- `project_id`
- `resource_type`
- `resource_id`
- `public_token`
- `metadata`
- `created_at`

Evitar metadata sensível.

## Eventos gerais

- `page_viewed`
- `cta_clicked`
- `button_clicked`
- `modal_opened`
- `modal_closed`
- `tab_changed`
- `filter_used`
- `search_performed`
- `sort_changed`

## Autenticação

- `login_started`
- `login_completed`
- `login_failed`
- `logout_clicked`
- `signup_started`
- `signup_completed`
- `invite_sent`
- `invite_accepted`

## Formulários

- `form_started`
- `form_submitted`
- `form_failed`
- `field_validation_failed`

## Links compartilhados

- `shared_link_created`
- `shared_link_copied`
- `shared_link_opened`
- `shared_link_expired`
- `shared_link_revoked`
- `shared_link_blocked`

## Atualizações para cliente

- `client_update_created`
- `client_update_viewed`
- `client_updates_filtered`

## Arquivos

- `file_uploaded`
- `file_viewed`
- `file_downloaded`
- `file_deleted`
- `file_orphan_detected`
- `file_cleanup_completed`

## Pagamentos

- `payment_started`
- `payment_created`
- `payment_completed`
- `payment_failed`
- `payment_cancelled`
- `payment_refunded`

## Checkout / comércio

- `product_viewed`
- `cart_started`
- `cart_updated`
- `cart_abandoned`
- `checkout_started`
- `checkout_completed`
- `coupon_applied`
- `coupon_failed`

## Sistemas e integrações

- `integration_connected`
- `integration_disconnected`
- `integration_failed`
- `integration_tested`
- `env_status_checked`
- `webhook_received`
- `webhook_processed`
- `webhook_failed`

## Notificações

- `notification_created`
- `notification_sent`
- `notification_failed`
- `notification_opened`
- `whatsapp_message_created`
- `whatsapp_message_sent`
- `whatsapp_message_failed`

## Admin / operação

- `status_changed`
- `record_created`
- `record_updated`
- `record_deleted`
- `settings_updated`
- `api_key_replaced`
- `api_key_removed`

## Segurança

- `unauthorized_access_attempt`
- `expired_link_accessed`
- `revoked_link_accessed`
- `invalid_token_used`
- `permission_denied`
- `suspicious_request_detected`

## Regra para agentes

Ao iniciar projeto, o agente deve:

1. Revisar esta biblioteca.
2. Escolher eventos úteis.
3. Registrar eventos escolhidos.
4. Registrar eventos descartados.
5. Explicar motivo dos descartes principais.

## Checklist

- [ ] Eventos úteis escolhidos?
- [ ] Eventos descartados registrados?
- [ ] Metadata evita dados sensíveis?
- [ ] Nomes seguem snake_case?
- [ ] Eventos ajudam tomada de decisão?
- [ ] Segurança/privacidade considerada?
