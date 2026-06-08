# Launch Checklist

Checklist para apresentação, publicação ou entrega de um projeto.

## Regra principal

Não publicar ou apresentar projeto com dados reais sem revisar segurança, envs, links e metadata.

## Antes da apresentação

- [ ] Fluxo principal funcionando
- [ ] Visual revisado
- [ ] Responsivo testado
- [ ] Dados mockados seguros
- [ ] Links funcionando
- [ ] Estados de loading/empty/error revisados
- [ ] Toasts funcionando
- [ ] StatusPulse funcionando quando aplicável
- [ ] Roteiro de apresentação pronto
- [ ] Próximos passos claros

## Antes do deploy

- [ ] Build funcionando
- [ ] Lint/typecheck revisado quando aplicável
- [ ] Variáveis de produção configuradas
- [ ] `.env.local` não commitado
- [ ] Secrets fora do frontend
- [ ] Domínio configurado, se houver
- [ ] Vercel ou hospedagem configurada
- [ ] Logs revisados

## Segurança

- [ ] Rotas privadas protegidas
- [ ] APIs protegidas
- [ ] Links compartilhados seguros
- [ ] Tokens não previsíveis
- [ ] Storage revisado
- [ ] Webhooks validados, se houver
- [ ] RLS revisada, se houver Supabase
- [ ] Metadata sem dados sensíveis
- [ ] Preview de link seguro

Ver:

- `docs/security/SECURITY_CHECKLIST.md`

## Metadata e marca

- [ ] Title configurado
- [ ] Description configurada
- [ ] Favicon configurado
- [ ] Open Graph image configurada
- [ ] Preview de WhatsApp testado
- [ ] Logo consistente
- [ ] Imagem fallback definida

Ver:

- `docs/brand/LINK_PREVIEW.md`
- `docs/brand/LOGO_AND_FAVICON.md`

## Conteúdo

- [ ] Textos revisados
- [ ] Ortografia revisada
- [ ] Acentos revisados
- [ ] Mensagens WhatsApp seguem padrão
- [ ] CTAs claros
- [ ] Nenhum texto placeholder visível

## Dados

- [ ] Dados reais revisados
- [ ] Dados sensíveis protegidos
- [ ] Dados mockados removidos quando necessário
- [ ] Seeds seguros
- [ ] IDs públicos não previsíveis

## Arquivos e storage

- [ ] Upload funcionando
- [ ] Download funcionando
- [ ] Preview funcionando
- [ ] Remoção de arquivos considerada
- [ ] Arquivos privados protegidos
- [ ] Arquivos órfãos considerados

## Git

Antes de commit:

- [ ] `git status --short`
- [ ] `git diff --stat`
- [ ] `git diff --shortstat`

Antes de push:

- [ ] remote correto
- [ ] branch correta
- [ ] commit claro
- [ ] sem arquivos sensíveis

## Apresentação para cliente

- [ ] Roteiro pronto
- [ ] Demo aberta
- [ ] Internet reserva
- [ ] Link funcionando
- [ ] Proposta pronta
- [ ] Objeções previstas
- [ ] Próximo passo definido

## Checklist final

- [ ] Posso mostrar isso sem explicar demais?
- [ ] O cliente entende o valor?
- [ ] O fluxo principal funciona?
- [ ] O visual passa confiança?
- [ ] Segurança básica foi revisada?
- [ ] Próximo passo está claro?
