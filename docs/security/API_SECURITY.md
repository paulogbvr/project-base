# API Security

Este documento define o padrão de segurança para APIs.

## Regra principal

Toda API que altera, lê ou expõe dado sensível deve validar autenticação, autorização e payload.

Não confiar em dados enviados pelo frontend.

## Tipos de API

### Pública

Pode ser acessada sem login, mas ainda deve validar:

- token;
- escopo;
- parâmetros;
- rate limit quando necessário;
- dados retornados.

Exemplos:

- link compartilhado;
- cardápio público;
- página pública;
- webhook receiver, com assinatura.

### Privada

Exige usuário autenticado.

Exemplos:

- dashboard;
- admin;
- configurações;
- uploads;
- pagamentos;
- dados de cliente.

### Interna

Deve ser chamada apenas pelo backend, jobs ou webhooks verificados.

Exemplos:

- service role;
- sync;
- cron;
- integração sensível.

## Métodos HTTP

### GET

Mesmo leitura pode vazar dados.

Validar:

- usuário;
- permissão;
- escopo;
- token público quando houver.

### POST

Validar:

- autenticação;
- autorização;
- schema;
- regras de negócio;
- rate limit se necessário.

### PUT/PATCH

Validar:

- propriedade do recurso;
- permissão;
- campos permitidos;
- schema;
- alteração de IDs.

### DELETE

Validar com mais cuidado.

Considerar:

- soft delete;
- confirmação;
- audit log;
- remoção de arquivos do storage quando seguro.

## Validação de payload

Usar schema quando possível.

Padrão recomendado:

- Zod;
- validação de tipos;
- validação de formato;
- validação de limites;
- sanitização quando necessário.

## IDs e parâmetros

Nunca confiar em IDs recebidos do frontend.

Validar:

- recurso existe;
- pertence ao usuário/organização;
- usuário tem permissão;
- token público tem escopo.

## Erros

Erro deve ser claro, mas seguro.

Evitar vazar:

- stack trace;
- SQL;
- token;
- chave;
- payload sensível;
- informação interna.

## Rate limit

Considerar rate limit para:

- login;
- envio de formulário;
- webhooks públicos;
- links compartilhados;
- APIs de busca;
- testes de conexão;
- criação de pagamento.

## Headers e cookies

Cuidado com:

- Authorization;
- cookies de sessão;
- CSRF quando aplicável;
- CORS;
- cache.

## Cache

Não fazer cache público de dado privado.

Em rotas sensíveis, considerar:

- `no-store`;
- headers de cache seguros;
- evitar preview/cache com dados sensíveis.

## Service role

Service role nunca deve ser usado no frontend.

Usar apenas em:

- server;
- rotas internas;
- jobs;
- scripts seguros.

<!-- FRONTEND_BACKEND_ACCESS_RULES_START -->
## Segurança contra acesso indevido pelo frontend

APIs privadas nunca devem confiar apenas no frontend.

O frontend pode esconder botões, bloquear telas e redirecionar usuários, mas isso não é segurança suficiente.

A API deve validar:

- usuário autenticado;
- sessão válida;
- organização/workspace;
- papel do usuário;
- permissão específica;
- plano/assinatura;
- status de pagamento;
- propriedade do recurso;
- escopo do token;
- limite de uso, quando aplicável.

## SaaS pago

Em sistemas SaaS ou produtos pagos, nunca liberar acesso apenas com estado de frontend.

Evitar padrões inseguros como:

```txt
if (user.isPremium) {
  showPremiumFeature()
}
```

quando `isPremium` vem apenas do client, localStorage, cache local ou payload manipulável.

O correto é:

- frontend solicita a ação;
- backend valida plano e permissão;
- backend executa ou nega;
- banco/RLS reforça acesso quando aplicável;
- frontend apenas reflete a resposta autorizada.

## Dados em excesso

APIs não devem retornar dados que serão apenas escondidos na UI.

Errado:

```txt
retornar todos os clientes e esconder alguns no frontend
```

Correto:

```txt
retornar apenas os clientes que o usuário pode acessar
```

## DevTools e chamadas diretas

Qualquer usuário pode abrir DevTools, copiar uma requisição e tentar chamar a API diretamente.

Por isso, toda rota sensível deve se proteger sozinha.

Rotas sensíveis incluem:

- admin;
- billing;
- checkout;
- assinatura;
- área de cliente;
- arquivos;
- documentos;
- propostas;
- pedidos;
- dados internos;
- webhooks;
- ações com IA;
- geração de relatórios.

## CORS não é autorização

CORS ajuda a controlar chamadas feitas pelo navegador, mas não substitui autenticação e autorização.

Mesmo com CORS configurado, a API precisa validar usuário, permissão e escopo.

Documento relacionado:

- `docs/security/CORS_AND_CSP.md`
<!-- FRONTEND_BACKEND_ACCESS_RULES_END -->

## Checklist

- [ ] API exige auth quando necessário?
- [ ] API valida autorização?
- [ ] Payload é validado?
- [ ] IDs são conferidos?
- [ ] Usuário só acessa o próprio escopo?
- [ ] Erros não vazam segredo?
- [ ] Método DELETE é seguro?
- [ ] Service role não vai para client?
- [ ] Cache não expõe dado privado?
- [ ] Rate limit foi considerado?
