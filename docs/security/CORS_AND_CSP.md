# CORS and CSP

Este documento define padrões para CORS e CSP em projetos derivados da Project Base.

CORS e CSP ajudam a reduzir riscos de acesso indevido, execução de scripts não autorizados e vazamento por origens inesperadas.

## Regra principal

CORS e CSP não substituem autenticação, autorização, RLS ou validação no backend.

Eles são camadas adicionais de proteção.

## CORS

CORS significa Cross-Origin Resource Sharing.

Ele controla quais origens podem chamar recursos do backend pelo navegador.

## Regra de CORS

Não usar `*` em APIs privadas.

Evitar:

```txt
Access-Control-Allow-Origin: *
```

em rotas privadas, rotas admin, rotas de pagamento, rotas com dados de usuário ou rotas com dados sensíveis.

## Origens permitidas

Definir explicitamente as origens permitidas.

Exemplos:

- domínio de produção;
- domínio de preview, se necessário;
- localhost em desenvolvimento.

Exemplo conceitual:

```txt
https://meuapp.com
https://admin.meuapp.com
http://localhost:3000
```

## CORS e credentials

Se usar cookies, sessão ou headers de autorização, revisar:

- `Access-Control-Allow-Credentials`;
- origem explícita;
- headers permitidos;
- métodos permitidos;
- preflight.

Não combinar credentials com wildcard de forma insegura.

## Métodos permitidos

Permitir apenas o necessário.

Exemplo:

- GET;
- POST;
- PATCH;
- DELETE, quando necessário.

Não liberar todos os métodos sem motivo.

## Headers permitidos

Permitir apenas os headers necessários.

Exemplos:

- Authorization;
- Content-Type;
- X-Webhook-Signature, quando aplicável.

## CSP

CSP significa Content Security Policy.

Ela ajuda a controlar quais scripts, estilos, imagens, frames e conexões podem ser carregados.

## Objetivo da CSP

Reduzir risco de:

- XSS;
- scripts de origem não autorizada;
- frames indevidos;
- conexões inesperadas;
- carregamento de assets externos não planejados.

## CSP mínima a considerar

Uma CSP depende do projeto, mas pode considerar:

- `default-src 'self'`;
- `script-src 'self'`;
- `style-src 'self' 'unsafe-inline'`, quando necessário;
- `img-src 'self' data: https:`;
- `connect-src 'self'` + APIs necessárias;
- `frame-ancestors 'none'` ou domínios permitidos;
- `base-uri 'self'`;
- `form-action 'self'`.

A política final deve ser testada, porque CSP rígida demais pode quebrar integrações.

## Integrações externas

Ao usar serviços externos, revisar CSP para:

- Supabase;
- Vercel Analytics;
- Stripe/AbacatePay/checkout;
- WhatsApp;
- Google OAuth;
- mapas;
- fontes;
- imagens externas;
- Sentry/logs.

Não liberar domínios desnecessários.

## CSP Report-Only

Em projetos maiores, pode começar com CSP em modo report-only para identificar quebras antes de bloquear.

Depois de testar, migrar para modo bloqueante.

## Headers adicionais

Considerar headers de segurança:

- `X-Content-Type-Options: nosniff`;
- `Referrer-Policy`;
- `Permissions-Policy`;
- `X-Frame-Options` ou `frame-ancestors` via CSP;
- `Strict-Transport-Security` em HTTPS/produção.

## Checklist CORS

- [ ] APIs privadas não usam `Access-Control-Allow-Origin: *`?
- [ ] Origens permitidas estão explícitas?
- [ ] Localhost só é permitido em desenvolvimento?
- [ ] Credentials foram revisadas?
- [ ] Métodos permitidos são mínimos?
- [ ] Headers permitidos são mínimos?
- [ ] Webhooks não dependem apenas de CORS?

## Checklist CSP

- [ ] Existe CSP planejada?
- [ ] Scripts externos foram revisados?
- [ ] Conexões externas foram revisadas?
- [ ] Imagens externas foram revisadas?
- [ ] Frames foram bloqueados ou limitados?
- [ ] Integrações necessárias foram permitidas?
- [ ] CSP foi testada?
- [ ] Headers adicionais foram considerados?
