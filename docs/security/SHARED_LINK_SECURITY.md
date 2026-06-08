# Shared Link Security

Este documento define o padrão de segurança para links compartilhados.

Links compartilhados são comuns em projetos do tipo:

- acompanhamento de projeto;
- pedido;
- pagamento;
- comprovante;
- proposta;
- relatório;
- página de cliente;
- cardápio;
- mesa;
- sessão pública;
- documento.

## Regra principal

Link compartilhado não deve depender de ID previsível.

Usar token curto, aleatório e não previsível.

## Evitar

Não usar:

- `/share/1`
- `/pedido/2`
- `/cliente/129`
- `/mesa/4`
- `/project/0001`
- tokens como `teste`, `demo`, `cliente1`

## Preferir

Usar padrões como:

- `/share/lk_9Kf72aPq`
- `/pedido/ord_Kp82Lm9x`
- `/mesa/tbl_8fK29xA`
- `/proposta/sh_7Lm29QpA`

## Token público

O token deve ser:

- aleatório;
- não sequencial;
- difícil de adivinhar;
- com prefixo identificável;
- curto o suficiente para uso;
- revogável quando necessário;
- expirável quando necessário.

Prefixos sugeridos:

- `lk_` para link genérico
- `sh_` para share
- `tbl_` para mesa
- `ord_` para pedido
- `prop_` para proposta
- `pay_` para pagamento
- `doc_` para documento
- `sess_` para sessão

## UUID vs token

UUID é identidade técnica interna.

Token é acesso público.

Não usar UUID como único mecanismo de segurança em link público se o token dedicado resolver melhor.

## Escopo

O token deve dar acesso apenas ao necessário.

Exemplo:

Um link de projeto compartilhado pode mostrar:

- status;
- atualizações públicas;
- arquivos permitidos;
- dados básicos.

Mas não deve mostrar:

- dados internos;
- chaves;
- custos internos;
- dados de outros clientes;
- endpoints privados;
- IDs sensíveis desnecessários.

## Expiração

Links podem ter:

- `expires_at`
- `revoked_at`
- `created_at`
- `last_accessed_at`
- `access_count`

Usar expiração quando:

- o link for sensível;
- o acesso for temporário;
- houver documento privado;
- houver proposta com validade;
- houver pagamento;
- houver dados de cliente.

## Revogação

Todo link sensível deve poder ser revogado.

Revogar significa:

- token continua existindo no banco;
- acesso é bloqueado;
- histórico é preservado;
- UI mostra status revogado.

## Metadata segura

Não colocar dados sensíveis em:

- title;
- description;
- Open Graph image;
- Twitter image;
- URL;
- slug público.

Exemplo ruim:

`Pedido de João Silva no valor de R$ 3.500`

Exemplo melhor:

`Acompanhamento de pedido`

## Preview de link

Preview deve ser seguro por padrão.

Para links privados ou sensíveis, usar:

- título genérico;
- descrição genérica;
- imagem genérica;
- sem dados pessoais.

## Registro de acesso

Quando fizer sentido, registrar:

- data/hora de abertura;
- user agent;
- IP aproximado se permitido e necessário;
- token acessado;
- status do acesso;
- se foi bloqueado/expirado/revogado.

Evitar registrar dado além do necessário.

## Proteção backend

A rota pública deve validar:

- token existe;
- token está ativo;
- token não expirou;
- token não foi revogado;
- token tem escopo correto;
- recurso associado existe;
- recurso pode ser exibido publicamente.

## Não confiar no frontend

Mesmo que a UI esconda informações, o backend/API deve filtrar o que é permitido.

## Checklist

- [ ] Token é aleatório?
- [ ] Token não é sequencial?
- [ ] URL não usa ID previsível?
- [ ] Link tem escopo limitado?
- [ ] Link pode expirar quando necessário?
- [ ] Link pode ser revogado?
- [ ] Metadata é segura?
- [ ] Preview não expõe dado sensível?
- [ ] Backend valida token?
- [ ] API filtra dados permitidos?
- [ ] Acesso é registrado quando faz sentido?
