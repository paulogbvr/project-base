# Auth Security

Este documento define o padrão de autenticação e autorização.

## Regra principal

Login identifica o usuário.

Autorização define o que ele pode fazer.

Não basta estar logado. É preciso ter permissão.

## Tipos de usuário

Projetos podem ter:

- owner;
- admin;
- manager;
- staff;
- customer;
- viewer;
- guest;
- public link user.

Nem todo projeto precisa de todos.

## Login

Opções possíveis:

- Google Auth para admin/equipe;
- e-mail e senha;
- magic link;
- telefone/WhatsApp;
- código OTP;
- login interno simples para MVP.

A escolha depende do projeto.

## Google Auth

Recomendado para:

- admins;
- equipe interna;
- sistemas SaaS;
- dashboards;
- ferramentas privadas.

Documentar em:

- `docs/integrations/GOOGLE_AUTH.md`

## Cliente final

Para cliente final, muitas vezes login completo é pesado.

Alternativas:

- telefone;
- token de pedido;
- link compartilhado;
- OTP;
- sessão temporária.

## Rotas privadas

Rotas privadas devem validar sessão.

Exemplos:

- `/admin`
- `/dashboard`
- `/settings`
- `/api/private/*`

## Rotas públicas com token

Mesmo sem login, validar:

- token existe;
- token não expirou;
- token não foi revogado;
- escopo permitido;
- recurso associado.

## Autorização por escopo

Em sistemas multiusuário/multicliente:

- usuário pertence a uma organização;
- recurso pertence a uma organização;
- permissão deve cruzar ambos.

Exemplo:

Um admin da empresa A não pode acessar dados da empresa B alterando um UUID na URL.

## Papéis e permissões

Papéis sugeridos:

- `owner` → acesso total;
- `admin` → gestão geral;
- `manager` → operação;
- `staff` → tarefas específicas;
- `viewer` → leitura;
- `customer` → área de cliente;
- `guest` → acesso limitado.

## Sessão

Considerar:

- expiração;
- refresh;
- logout;
- invalidação;
- troca de usuário;
- estado de loading de auth.

## UI

A UI pode esconder ações sem permissão, mas isso não substitui validação no backend.

## Checklist

- [ ] Rotas privadas protegem acesso?
- [ ] APIs privadas validam sessão?
- [ ] APIs validam permissão?
- [ ] Usuário sem permissão recebe bloqueio?
- [ ] Troca manual de ID não dá acesso?
- [ ] Login escolhido faz sentido para o público?
- [ ] Logout funciona?
- [ ] Estado de loading de auth é claro?
- [ ] Papéis estão documentados?
- [ ] Links públicos são tratados separadamente de login?
