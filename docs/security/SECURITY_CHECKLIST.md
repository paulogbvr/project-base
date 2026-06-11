# Security Checklist

Checklist de segurança para projetos derivados da Project Base.

Este checklist deve ser usado antes de publicar, apresentar para cliente, liberar acesso público ou conectar dados reais.

## Autenticação

- [ ] Rotas privadas exigem login
- [ ] Rotas admin exigem login
- [ ] Sessão é validada no servidor quando necessário
- [ ] Login com Google está documentado, se usado
- [ ] Logout funciona corretamente
- [ ] Usuário sem login não acessa dados privados
- [ ] Redirecionamentos de auth são seguros

## Autorização

- [ ] Usuário só acessa o que tem permissão
- [ ] Admin não acessa dados de outra organização sem permissão
- [ ] Cliente não acessa dados de outro cliente
- [ ] Permissões são validadas no backend
- [ ] Botões escondidos na UI não são a única proteção
- [ ] Papéis e permissões estão documentados

## APIs

- [ ] APIs privadas validam autenticação
- [ ] APIs privadas validam autorização
- [ ] POST/PUT/PATCH/DELETE são protegidos
- [ ] Payloads são validados com schema
- [ ] IDs enviados pelo frontend são conferidos
- [ ] Erros não vazam dados sensíveis
- [ ] Rate limit considerado quando necessário

## Banco de dados

- [ ] Tabelas sensíveis usam UUID
- [ ] IDs sequenciais não são usados como chave principal sensível
- [ ] RLS planejada se usar Supabase
- [ ] RLS testada com usuário sem permissão
- [ ] Dados isolados por organização/cliente/projeto quando necessário
- [ ] Campos sensíveis identificados
- [ ] Índices e constraints importantes criados

## Links compartilhados

- [ ] Links usam token curto, aleatório e não previsível
- [ ] Link não usa ID sequencial
- [ ] Link não expõe UUID técnico sem necessidade
- [ ] Link pode expirar quando necessário
- [ ] Link pode ser revogado quando necessário
- [ ] Metadata do link não expõe dado sensível
- [ ] Acesso ao link é validado no backend
- [ ] Aberturas são registradas quando fizer sentido

## Variáveis de ambiente

- [ ] `.env` está no `.gitignore`
- [ ] `.env.local` está no `.gitignore`
- [ ] `.env.example` está atualizado
- [ ] `.env.local.example` está atualizado
- [ ] Secrets não usam `NEXT_PUBLIC_`
- [ ] Service role não vai para frontend
- [ ] Chaves reais não aparecem em documentação
- [ ] Chaves reais não aparecem em prints/logs

## Integrações e API keys

- [ ] Chaves configuráveis pelo front ficam mascaradas
- [ ] Existe botão de testar conexão quando fizer sentido
- [ ] Existe status visual de integração
- [ ] Chaves são salvas no backend
- [ ] Chaves não são retornadas completas sem necessidade
- [ ] É possível substituir/remover chave
- [ ] Erros de integração não vazam segredo

## Webhooks

- [ ] Webhook valida assinatura quando disponível
- [ ] Webhook valida timestamp quando disponível
- [ ] Webhook usa idempotência
- [ ] Eventos duplicados não quebram o sistema
- [ ] Payload é validado
- [ ] Logs não expõem segredo

## Storage e arquivos

- [ ] Buckets públicos/privados definidos
- [ ] Upload valida tipo de arquivo
- [ ] Upload valida tamanho
- [ ] Download privado exige permissão
- [ ] Arquivo removido no front pode ser removido do storage quando seguro
- [ ] Arquivos órfãos são considerados
- [ ] Signed URLs usadas quando necessário
- [ ] Previews não expõem arquivo privado

## Metadata e preview

- [ ] Title sem dado sensível
- [ ] Description sem dado sensível
- [ ] Open Graph image sem dado sensível
- [ ] Link privado não gera preview com informação confidencial
- [ ] Fallback de preview existe

<!-- FRONTEND_SECURITY_CHECKLIST_START -->
## Frontend e navegador

- [ ] Nenhum segredo está no frontend
- [ ] Nenhum segredo usa `NEXT_PUBLIC_`
- [ ] Nenhum segredo usa `VITE_`
- [ ] Variáveis reais de produção estão configuradas na Vercel/provedor, não no código
- [ ] Source maps públicos estão desativados em produção, salvo decisão consciente
- [ ] `localStorage` não guarda dado sensível
- [ ] `sessionStorage` não guarda segredo
- [ ] Logout limpa estado local relevante
- [ ] Dados privados não ficam cacheados indevidamente
- [ ] Plano pago não é protegido apenas por botão/tela no frontend
- [ ] Backend valida plano, assinatura e permissão
- [ ] Frontend não recebe dados que o usuário não deveria ver
- [ ] DevTools não revela token, segredo ou payload sensível

## CORS, CSP e headers

- [ ] CORS não usa wildcard em API privada
- [ ] Origens permitidas estão explícitas
- [ ] Localhost só é permitido em desenvolvimento
- [ ] Métodos e headers permitidos são mínimos
- [ ] CSP foi considerada
- [ ] Scripts externos foram revisados
- [ ] Conexões externas foram revisadas
- [ ] Frames foram bloqueados ou limitados
- [ ] Headers de segurança foram considerados
<!-- FRONTEND_SECURITY_CHECKLIST_END -->

## Interface

- [ ] Erros são claros
- [ ] Erros não vazam informação técnica sensível
- [ ] Ações destrutivas pedem confirmação
- [ ] Toasts informam sucesso/erro
- [ ] StatusPulse mostra integrações importantes
- [ ] Skeletons não escondem estrutura da página inteira

## Testes manuais mínimos

- [ ] Acessar rota admin sem login
- [ ] Alterar ID na URL
- [ ] Alterar token público
- [ ] Chamar API pelo navegador/Postman sem permissão
- [ ] Tentar acessar dado de outro usuário
- [ ] Tentar abrir link expirado
- [ ] Tentar abrir link revogado
- [ ] Testar upload inválido
- [ ] Testar webhook falso, se houver

## Antes do deploy

- [ ] Rodar build
- [ ] Revisar variáveis no ambiente de produção
- [ ] Revisar permissões do banco
- [ ] Revisar buckets de storage
- [ ] Revisar links públicos
- [ ] Revisar logs
- [ ] Revisar domínio e metadata
