# Feedback System

Este documento define o padrão de feedback visual da Project Base.

O usuário nunca deve ficar em dúvida se uma ação funcionou, falhou ou está carregando.

## Regra principal

Toda ação importante deve gerar feedback visual.

Feedback pode ser:

- toast;
- status;
- loading;
- pulse;
- mudança visual;
- mensagem inline;
- estado vazio;
- estado de erro;
- confirmação visual.

## Toasts

Usar toast para ações rápidas e importantes.

Exemplos:

- link copiado;
- dados salvos;
- item removido;
- upload concluído;
- download iniciado;
- conexão testada;
- integração conectada;
- erro ao salvar;
- status atualizado;
- pagamento registrado;
- chave copiada;
- arquivo excluído.

## Tipos de toast

Padrões sugeridos:

- success;
- error;
- warning;
- info;
- loading;
- action/undo quando fizer sentido.

## Regra de toast

Não exagerar.

Toast deve informar, não poluir.

Ações pequenas podem usar feedback visual inline se fizer mais sentido.

## StatusPulse

Indicador visual para estado contínuo.

Estados:

- `success` / `ok` → verde pulsando;
- `warning` / `pending` → amarelo pulsando;
- `error` → vermelho pulsando;
- `neutral` → cinza.

Usos:

- API conectada;
- variável faltando;
- webhook com erro;
- pagamento confirmado;
- pedido em andamento;
- projeto ativo;
- link publicado;
- storage configurado.

## Environment Status

Projetos com integrações devem prever painel de status.

Exemplo:

- Supabase → configurado
- AbacatePay → pendente
- WhatsApp → erro
- Storage → configurado
- Google Auth → não usado

Cada item deve ter:

- nome;
- descrição curta;
- status;
- última checagem;
- ação recomendada;
- botão de testar conexão quando fizer sentido.

## Feedback por ação

### Copiar

- mudar ícone temporariamente;
- mostrar toast;
- manter texto claro.

### Salvar

- botão entra em loading;
- evitar clique duplicado;
- mostrar sucesso/erro.

### Excluir

- pedir confirmação quando for destrutivo;
- mostrar toast;
- atualizar UI.

### Upload

- mostrar progresso quando possível;
- mostrar sucesso;
- permitir remover/substituir;
- tratar erro de tamanho/formato.

### Testar conexão

- botão com loading;
- mostrar status;
- registrar último teste;
- mostrar erro claro.

## Estados vazios

Empty states devem orientar.

Exemplo ruim:

Nenhum dado.

Exemplo bom:

Nenhum pagamento registrado ainda. Quando um pagamento for adicionado, ele aparecerá aqui.

## Estados de erro

Erros devem explicar:

- o que aconteceu;
- o que o usuário pode fazer;
- se deve tentar novamente;
- se precisa configurar algo.

Não vazar detalhes sensíveis.

## Checklist

- [ ] Ação de salvar tem feedback?
- [ ] Ação de copiar tem feedback?
- [ ] Ação de excluir tem confirmação?
- [ ] Upload tem estado visual?
- [ ] Teste de API tem status?
- [ ] Erros são claros?
- [ ] Estados vazios ajudam?
- [ ] StatusPulse é usado quando faz sentido?
- [ ] Toasts não estão exagerados?
