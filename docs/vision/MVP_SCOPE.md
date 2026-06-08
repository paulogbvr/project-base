# MVP Scope

Este documento define o escopo mínimo da primeira versão.

## Objetivo

Separar o que será feito agora do que ficará para depois.

O MVP deve ser forte o suficiente para validar a ideia, apresentar ao cliente ou iniciar operação, mas sem tentar resolver tudo de uma vez.

## Regra principal

MVP não é versão ruim.

MVP é a menor versão útil, clara e apresentável.

## Objetivo do MVP

Preencher:

- O que precisa existir?
- Quem precisa usar?
- Qual fluxo precisa funcionar?
- Qual sensação a primeira versão precisa causar?
- O que precisa ser demonstrável?
- O que pode ser simulado?
- O que precisa ser real?

## Deve ter

Listar funcionalidades obrigatórias.

Exemplo:

- página inicial;
- login;
- dashboard;
- cadastro principal;
- fluxo principal;
- link compartilhado;
- painel admin;
- feedback visual;
- dados mockados;
- deploy de demonstração.

## Pode ter

Listar itens desejáveis, mas não obrigatórios.

Exemplo:

- filtros avançados;
- analytics;
- exportação;
- integração real;
- automação;
- pagamento;
- WhatsApp;
- relatórios.

## Fica para depois

Listar itens que não entram na primeira versão.

Exemplo:

- multiusuário completo;
- cobrança automática;
- app mobile;
- integrações complexas;
- permissões avançadas;
- painel financeiro completo;
- automações externas.

## Não fazer agora

Lista de proteção contra escopo infinito.

Exemplo:

- não criar ERP completo;
- não integrar todas as APIs no MVP;
- não criar design system perfeito antes da primeira tela;
- não refatorar tudo sem necessidade;
- não implementar pagamento real antes do fluxo principal;
- não adicionar complexidade sem validação.

## Critérios de sucesso

O MVP estará bom quando:

- fluxo principal funcionar;
- visual estiver apresentável;
- usuário entender o valor;
- principais riscos estiverem mapeados;
- segurança básica estiver considerada;
- próxima fase estiver clara.

## Dados

Definir se o MVP usará:

- dados mockados;
- seed local;
- banco real;
- API real;
- dados importados;
- dados manuais.

## Login

Definir:

- sem login;
- login mockado;
- login real;
- Google Auth;
- magic link;
- telefone;
- link público.

## Segurança no MVP

Mesmo em MVP, considerar:

- links não previsíveis;
- secrets fora do frontend;
- rotas sensíveis protegidas;
- dados mockados sem informação real sensível;
- metadata segura.

## Design no MVP

O MVP deve seguir o padrão visual mínimo:

- visual limpo;
- componentização;
- dark/light quando aplicável;
- toasts;
- loading states;
- StatusPulse quando houver status;
- sidebar quando houver painel;
- responsividade básica.

## Checklist

- [ ] Objetivo do MVP definido?
- [ ] Deve ter listado?
- [ ] Pode ter listado?
- [ ] Fica para depois listado?
- [ ] Não fazer agora listado?
- [ ] Critérios de sucesso definidos?
- [ ] Dados definidos?
- [ ] Login definido?
- [ ] Segurança mínima considerada?
- [ ] Design mínimo considerado?
