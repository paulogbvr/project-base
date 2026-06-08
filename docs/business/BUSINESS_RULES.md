# Business Rules

Este documento registra regras de negócio do projeto.

## Objetivo

Evitar que regras importantes fiquem apenas no chat ou na cabeça de quem está desenvolvendo.

Toda regra de negócio relevante deve ser documentada.

## O que é regra de negócio

Exemplos:

- quem pode criar;
- quem pode editar;
- quem pode excluir;
- status possíveis;
- prazo;
- preço;
- fluxo de aprovação;
- regra de pagamento;
- regra de entrega;
- regra de visibilidade;
- regra de acesso;
- regra de notificação;
- regra de atualização para cliente.

## Estrutura recomendada

Para cada regra, registrar:

- nome da regra;
- descrição;
- quem é afetado;
- onde aparece;
- exceções;
- impacto técnico;
- impacto comercial;
- status da decisão.

## Usuários e papéis

Registrar papéis do projeto.

Exemplo:

- owner;
- admin;
- manager;
- staff;
- customer;
- viewer;
- public user.

Para cada papel, definir:

- o que pode ver;
- o que pode criar;
- o que pode editar;
- o que pode excluir;
- o que não pode acessar.

## Status

Quando houver fluxo, documentar status.

Exemplo:

- draft;
- pending;
- active;
- in_progress;
- completed;
- cancelled;
- archived;
- blocked.

Para cada status, definir:

- significado;
- quem altera;
- próxima etapa possível;
- impacto na UI;
- impacto em notificações.

## Visibilidade

Definir o que é:

- público;
- privado;
- interno;
- visível para cliente;
- visível apenas para admin;
- acessível por link.

## Regras financeiras

Quando existir pagamento, documentar:

- valor;
- desconto;
- parcelamento;
- taxa;
- recorrência;
- vencimento;
- status;
- comprovante;
- reembolso;
- cancelamento.

## Links compartilhados

Quando existir link público, documentar:

- o que o link mostra;
- o que não mostra;
- se expira;
- se pode revogar;
- se registra acesso.

## Notificações

Documentar:

- quando notificar;
- quem recebe;
- canal;
- mensagem;
- se é automático ou manual.

## Checklist

- [ ] Papéis definidos?
- [ ] Permissões definidas?
- [ ] Status definidos?
- [ ] Visibilidade definida?
- [ ] Regras financeiras definidas?
- [ ] Links compartilhados definidos?
- [ ] Notificações definidas?
- [ ] Exceções documentadas?
