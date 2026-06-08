# Security Audit Skill

Skill auxiliar para auditoria de segurança.

Esta skill ajuda a revisar um projeto antes de deploy, apresentação com dados reais ou entrega para cliente.

## Objetivo

Encontrar riscos antes que virem problemas.

## Quando usar

Usar antes de:

- publicar;
- conectar dados reais;
- liberar login;
- liberar link compartilhado;
- ativar pagamento;
- ativar WhatsApp;
- entregar para cliente;
- fazer deploy público.

## Documentos principais

Ler:

- `docs/security/SECURITY_OVERVIEW.md`
- `docs/security/SECURITY_CHECKLIST.md`
- `docs/security/ENVIRONMENT_VARIABLES.md`
- `docs/security/SECRETS_AND_API_KEYS.md`
- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/security/API_SECURITY.md`
- `docs/security/AUTH_SECURITY.md`
- `docs/security/STORAGE_SECURITY.md`
- `docs/security/WEBHOOK_SECURITY.md`
- `docs/security/PEN_TEST_PLAN.md`
- `docs/database/RLS_POLICIES.md`

## Áreas para revisar

- auth;
- permissões;
- APIs;
- RLS;
- links públicos;
- tokens;
- variáveis;
- API keys;
- storage;
- uploads;
- downloads;
- webhooks;
- logs;
- metadata;
- preview de link.

## Testes manuais

Executar testes como:

- acessar admin sem login;
- alterar ID na URL;
- alterar token;
- chamar API sem permissão;
- tentar acessar dados de outro usuário;
- usar link revogado;
- usar link expirado;
- subir arquivo inválido;
- verificar se segredo aparece no frontend.

## Saída esperada

Gerar relatório com:

- riscos encontrados;
- severidade;
- impacto;
- arquivo/rota afetada;
- recomendação;
- status.

## Severidade

Usar:

- crítica;
- alta;
- média;
- baixa;
- observação.

## Registro

Registrar achados em:

- `docs/project-memory/FINDINGS.md`

Registrar correções em:

- `docs/project-memory/PROGRESS.md`

Registrar decisões em:

- `docs/project-memory/DECISIONS.md`

## Checklist

- [ ] Variáveis protegidas?
- [ ] APIs protegidas?
- [ ] Rotas privadas protegidas?
- [ ] Links públicos seguros?
- [ ] Storage seguro?
- [ ] Webhooks validados?
- [ ] Metadata segura?
- [ ] RLS considerada?
- [ ] Logs sem segredo?
- [ ] Relatório gerado?
