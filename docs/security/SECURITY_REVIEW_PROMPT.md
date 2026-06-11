# Security Review Prompt

Este documento guarda um prompt reutilizável para revisar segurança em projetos derivados da Project Base.

Use este prompt com Claude, Codex, Cursor ou outro agente sempre que:

- criar uma funcionalidade nova;
- alterar banco de dados;
- alterar autenticação;
- alterar permissões;
- criar API;
- criar link compartilhado;
- conectar pagamento;
- conectar Supabase;
- alterar storage;
- publicar deploy;
- revisar antes de apresentar para cliente.

## Prompt principal

```txt
Revise a segurança do projeto com atenção.

Não implemente nada ainda sem antes analisar o estado atual.

Primeiro rode:

git status
git diff --stat
git diff --shortstat

Leia obrigatoriamente:

- AGENTS.md
- CLAUDE.md ou CODEX.md
- docs/PROJECT_MAP.md
- docs/security/SECURITY_OVERVIEW.md
- docs/security/SECURITY_CHECKLIST.md
- docs/security/FRONTEND_SECURITY.md
- docs/security/CORS_AND_CSP.md
- docs/security/ENVIRONMENT_VARIABLES.md
- docs/security/SECRETS_AND_API_KEYS.md
- docs/security/API_SECURITY.md
- docs/security/AUTH_SECURITY.md
- docs/security/SHARED_LINK_SECURITY.md
- docs/security/STORAGE_SECURITY.md
- docs/security/WEBHOOK_SECURITY.md
- docs/security/PEN_TEST_PLAN.md
- docs/database/RLS_POLICIES.md
- docs/project-memory/DECISIONS.md
- docs/project-memory/FINDINGS.md

Depois faça uma auditoria procurando:

1. Segredos expostos no frontend.
2. Variáveis secretas usando NEXT_PUBLIC_ ou VITE_.
3. Service role no client.
4. Uso inseguro de localStorage/sessionStorage.
5. Source maps públicos em produção.
6. Rotas privadas acessíveis sem autenticação.
7. APIs sem autorização no backend.
8. Dados retornados em excesso para o frontend.
9. Links públicos com IDs previsíveis.
10. Plano pago protegido apenas pela UI.
11. Supabase sem RLS em tabelas sensíveis.
12. Storage público indevido.
13. Upload sem validação de tipo/tamanho.
14. Download/preview sem permissão.
15. Webhooks sem validação de assinatura.
16. CORS permissivo demais.
17. CSP ausente ou permissiva demais.
18. Metadata/preview de link vazando dados sensíveis.
19. Logs expondo tokens, payloads ou dados sensíveis.
20. Cache indevido de dados privados.

Classifique os achados por severidade:

- crítica;
- alta;
- média;
- baixa;
- observação.

Para cada achado, informe:

- problema;
- impacto;
- arquivo/rota afetada;
- como corrigir;
- prioridade.

Não faça commit.

Antes de alterar arquivos, me mostre o plano de correção.

Se eu aprovar, implemente em partes pequenas.

Ao final, atualize:

- docs/project-memory/FINDINGS.md
- docs/project-memory/PROGRESS.md
- docs/agent-state/CURRENT_SESSION.md
- docs/agent-reports/latest.md
```

## Prompt curto semanal

```txt
Faça uma revisão rápida de segurança no projeto.

Verifique principalmente:

- secrets no frontend;
- NEXT_PUBLIC_ ou VITE_ usados incorretamente;
- .env commitado;
- localStorage com dados sensíveis;
- APIs sem autorização;
- RLS no Supabase;
- links públicos previsíveis;
- storage público indevido;
- webhooks sem validação;
- CORS/CSP;
- source maps em produção.

Não altere nada sem me mostrar o plano primeiro.
```

## Prompt após alteração no banco

```txt
Revise a segurança após alteração no banco de dados.

Foque em:

- tabelas novas;
- campos sensíveis;
- RLS;
- policies de SELECT/INSERT/UPDATE/DELETE;
- isolamento por usuário/organização;
- service role;
- APIs que acessam essas tabelas;
- dados que chegam ao frontend;
- links públicos relacionados.

Mostre os riscos antes de implementar correções.
```

## Checklist

- [ ] Prompt usado após mudança sensível?
- [ ] Achados classificados por severidade?
- [ ] Plano mostrado antes de alterar?
- [ ] Findings atualizados?
- [ ] Progresso atualizado?
- [ ] Nenhum commit feito sem autorização?
