# Tracking Events Selected

Este documento registra quais eventos de tracking serão usados no projeto atual.

## Regra principal

Não usar todos os eventos por padrão.

Escolher apenas os eventos úteis para o objetivo do projeto.

Eventos descartados também devem ser registrados quando forem relevantes.

## Eventos usados neste projeto

Ainda não definidos.

Formato recomendado:

| Evento | Onde dispara | Objetivo | Metadata permitida |
|---|---|---|---|
| `event_name` | página/ação | por que rastrear | campos permitidos |

## Eventos descartados

Ainda não definidos.

Formato recomendado:

| Evento | Motivo do descarte |
|---|---|
| `event_name` | motivo |

## Critérios para escolher eventos

Usar evento quando ele ajudar a entender:

- conversão;
- uso de funcionalidade;
- gargalo;
- abandono;
- status operacional;
- erro;
- segurança;
- valor para o cliente.

Descartar evento quando:

- não gera decisão;
- rastreia dado sensível sem necessidade;
- aumenta complexidade sem benefício;
- não será analisado;
- não faz sentido para o MVP.

## Cuidados

Não registrar em metadata:

- senha;
- token;
- API key;
- CPF completo;
- CNPJ completo quando não necessário;
- telefone completo sem motivo;
- endereço completo sem motivo;
- dados financeiros sensíveis;
- payload completo de webhook;
- dados privados de cliente.

## Checklist

- [ ] Eventos escolhidos fazem sentido?
- [ ] Eventos descartados foram registrados?
- [ ] Metadata está segura?
- [ ] Eventos têm objetivo claro?
- [ ] Eventos não são excessivos?
- [ ] O MVP precisa mesmo de analytics agora?
