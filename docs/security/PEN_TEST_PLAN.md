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

## Checklist final

- [ ] Testes críticos feitos
- [ ] Falhas registradas
- [ ] Correções planejadas
- [ ] Itens bloqueados marcados
- [ ] Projeto não expõe segredos
- [ ] Rotas sensíveis protegidas
- [ ] Links públicos seguros
