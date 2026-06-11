# Pen Test Plan

Plano de testes manuais de segurança para projetos derivados da Project Base.

Este documento não substitui auditoria profissional, mas ajuda a encontrar falhas comuns antes de publicar ou entregar.

## Regra principal

Testar como se fosse alguém tentando quebrar o sistema.

Não testar apenas o caminho feliz.

## Preparação

Antes de testar:

- rodar projeto local;
- ter usuário logado;
- ter usuário sem login;
- ter dados mockados ou reais de teste;
- ter pelo menos dois usuários/clientes quando possível;
- abrir DevTools;
- testar URLs manualmente;
- testar APIs quando possível.

## Testes de rota

- [ ] Acessar rota admin sem login
- [ ] Acessar dashboard sem login
- [ ] Acessar settings sem login
- [ ] Acessar página privada por URL direta
- [ ] Acessar rota inexistente
- [ ] Acessar rota com token inválido
- [ ] Acessar rota com token expirado
- [ ] Acessar rota com token revogado

## Testes de ID

- [ ] Alterar UUID na URL
- [ ] Alterar ID numérico na URL
- [ ] Alterar slug na URL
- [ ] Alterar token de link compartilhado
- [ ] Alterar projectId/customerId/orderId no payload
- [ ] Tentar acessar dados de outro usuário

## Testes de API

- [ ] Chamar GET privado sem login
- [ ] Chamar POST privado sem login
- [ ] Chamar PUT/PATCH privado sem login
- [ ] Chamar DELETE privado sem login
- [ ] Enviar payload vazio
- [ ] Enviar payload inválido
- [ ] Enviar campos extras
- [ ] Enviar ID de outro usuário
- [ ] Verificar resposta de erro

## Testes de frontend

- [ ] Botão escondido não é única proteção
- [ ] Estado de loading não vaza dado
- [ ] Erro não mostra stack trace
- [ ] Toast não mostra segredo
- [ ] Metadata não mostra dado sensível
- [ ] Preview de link é seguro

## Testes de variáveis e segredos

- [ ] Verificar bundle/frontend por segredos
- [ ] Verificar se service role não aparece
- [ ] Verificar se `.env.local` não está commitado
- [ ] Verificar logs
- [ ] Verificar mensagens de erro
- [ ] Verificar prints/documentação

## Testes de storage

- [ ] Upload de arquivo inválido
- [ ] Upload de arquivo grande
- [ ] Download sem permissão
- [ ] Preview sem permissão
- [ ] Acessar URL direta de arquivo privado
- [ ] Remover arquivo e verificar storage
- [ ] Verificar arquivo órfão

## Testes de links compartilhados

- [ ] Token inválido
- [ ] Token expirado
- [ ] Token revogado
- [ ] Token de outro recurso
- [ ] Abrir link em anônimo
- [ ] Ver metadata do link
- [ ] Ver preview no WhatsApp/cliente
- [ ] Conferir se dados sensíveis não aparecem

## Testes de integração

- [ ] API key ausente
- [ ] API key inválida
- [ ] Teste de conexão com erro
- [ ] Teste de conexão com sucesso
- [ ] StatusPulse muda corretamente
- [ ] Erro não vaza segredo

## Testes de webhook

- [ ] Webhook sem assinatura
- [ ] Webhook com assinatura inválida
- [ ] Webhook duplicado
- [ ] Webhook fora de ordem
- [ ] Payload inválido
- [ ] Evento desconhecido

## Resultado

Registrar achados em:

- `docs/project-memory/FINDINGS.md`

Registrar correções em:

- `docs/project-memory/PROGRESS.md`

Registrar decisões em:

- `docs/project-memory/DECISIONS.md`

<!-- FRONTEND_PENTEST_PLAN_START -->
## Testes de segurança de frontend

Durante revisão manual ou pentest básico, testar o que um usuário consegue descobrir pelo navegador.

## DevTools

Abrir DevTools e revisar:

- Network;
- Application;
- localStorage;
- sessionStorage;
- cookies visíveis;
- bundles JavaScript;
- payloads de API;
- headers;
- source maps;
- respostas com dados excessivos.

## Testes obrigatórios

- [ ] Verificar se há secrets no bundle
- [ ] Verificar se há secrets no Network
- [ ] Verificar se há dados sensíveis em localStorage
- [ ] Verificar se há dados sensíveis em sessionStorage
- [ ] Verificar se logout limpa estado sensível
- [ ] Verificar se endpoints privados falham sem login
- [ ] Verificar se endpoints privados falham com usuário sem permissão
- [ ] Verificar se usuário comum não acessa dados de admin
- [ ] Verificar se usuário de uma organização não acessa outra
- [ ] Verificar se plano gratuito não chama recurso pago diretamente
- [ ] Verificar se IDs previsíveis não liberam acesso
- [ ] Verificar se source maps públicos estão desativados
- [ ] Verificar CORS em rotas privadas
- [ ] Verificar CSP ou plano de CSP
- [ ] Verificar cache de páginas privadas

## Teste de plano pago

Tentar acessar recurso pago por:

- URL direta;
- chamada direta de API;
- alteração de payload;
- alteração de localStorage;
- alteração de estado no DevTools;
- usuário sem assinatura;
- assinatura vencida;
- usuário de outro workspace.

O acesso deve ser negado pelo backend, não apenas pela tela.

## Teste de dados em excesso

Verificar se APIs retornam apenas o necessário.

Se uma API retorna dados privados e o frontend apenas esconde visualmente, isso deve ser tratado como falha.

## Frequência recomendada

Rodar revisão de segurança:

- antes do primeiro deploy;
- após alteração em banco;
- após alteração em login/permissões;
- após criar rota de API;
- após criar integração externa;
- após criar link público;
- após criar funcionalidade paga;
- semanalmente em projetos ativos.
<!-- FRONTEND_PENTEST_PLAN_END -->

## Checklist final

- [ ] Testes críticos feitos
- [ ] Falhas registradas
- [ ] Correções planejadas
- [ ] Itens bloqueados marcados
- [ ] Projeto não expõe segredos
- [ ] Rotas sensíveis protegidas
- [ ] Links públicos seguros
