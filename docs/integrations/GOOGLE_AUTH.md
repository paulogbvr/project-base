# Google Auth

Este documento define o roadmap e padrão para autenticação com Google.

## Quando usar

Google Auth é recomendado para:

- admins;
- equipe interna;
- dashboards;
- sistemas SaaS;
- painéis de cliente;
- áreas com dados privados.

Pode não ser ideal para:

- checkout rápido;
- cliente final casual;
- cardápio público;
- formulário simples;
- acesso por link compartilhado.

## Regra principal

Google Auth deve facilitar login, mas não substitui autorização.

Depois do login, o sistema ainda precisa validar:

- organização;
- papel;
- permissão;
- escopo;
- status do usuário.

## Variáveis comuns

Possíveis variáveis:

- `GOOGLE_CLIENT_ID`
- `GOOGLE_CLIENT_SECRET`
- callback URL
- redirect URL

Secrets nunca devem ir para o frontend.

## Fluxo básico

1. Usuário clica em entrar com Google.
2. Google autentica.
3. Sistema recebe callback.
4. Sistema cria/atualiza usuário.
5. Sistema verifica permissões.
6. Sistema redireciona para área correta.

## Primeira entrada

Definir o que acontece quando um e-mail entra pela primeira vez:

- criar usuário automaticamente?
- exigir convite?
- bloquear até aprovação?
- associar a organização?
- criar workspace?

A decisão depende do projeto.

## Convites

Projetos SaaS podem precisar de convite.

Fluxo possível:

1. Admin convida e-mail.
2. Usuário entra com Google.
3. Sistema valida convite.
4. Usuário é associado à organização.
5. Permissão é aplicada.

## Domínio permitido

Em projetos internos, pode restringir por domínio.

Exemplo:

- apenas e-mails `@empresa.com`.

## Segurança

Verificar:

- callback correto;
- redirect seguro;
- sessão segura;
- usuário ativo;
- permissão;
- logout;
- troca de conta;
- erro de login.

## UX

Estados necessários:

- carregando sessão;
- login pendente;
- login falhou;
- usuário sem permissão;
- convite expirado;
- conta bloqueada.

## Checklist

- [ ] Google Auth é necessário neste projeto?
- [ ] Variáveis estão documentadas?
- [ ] Client secret está seguro?
- [ ] Callback configurado?
- [ ] Primeiro acesso está definido?
- [ ] Convite é necessário?
- [ ] Permissões são validadas depois do login?
- [ ] Logout funciona?
- [ ] Estados de erro existem?
