# Project Map

Este é o índice oficial da Project Base.

Sempre que arquivos forem criados, removidos ou reorganizados, este documento deve ser atualizado.

## Objetivo

A Project Base é uma base padrão para iniciar projetos com:

- planejamento;
- documentação;
- agentes de IA;
- segurança;
- design system;
- workflows;
- project memory;
- relatórios de agentes;
- estrutura reutilizável.

Ela deve servir como ponto de partida para projetos web, SaaS, dashboards, sistemas internos, landing pages, propostas, automações e ferramentas próprias.

## Fonte de verdade

Em caso de conflito entre documentos, seguir esta ordem:

1. `docs/project-memory/DECISIONS.md`
2. `docs/vision/VISION.md`
3. `docs/architecture/ARCHITECTURE.md`
4. `docs/vision/MVP_SCOPE.md`
5. `docs/planning/EXECUTION_PLAN.md`
6. `docs/project-memory/TASK_PLAN.md`
7. Demais documentos

## Raiz do projeto

- `README.md` — visão geral da base
- `START_HERE.md` — guia inicial para uso da base
- `AGENTS.md` — instruções universais para qualquer agente
- `CLAUDE.md` — instruções específicas para Claude/Claude Code
- `CODEX.md` — instruções específicas para Codex
- `.env.example` — variáveis de ambiente documentadas
- `.env.local.example` — base local segura para desenvolvimento
- `.gitignore` — arquivos e segredos ignorados pelo Git

## Vision

Pasta:

- `docs/vision/`

Arquivos:

- `docs/vision/VISION.md` — visão geral do projeto
- `docs/vision/PRODUCT_POSITIONING.md` — posicionamento do produto/projeto
- `docs/vision/MVP_SCOPE.md` — escopo mínimo da primeira versão
- `docs/vision/PROJECT_INTAKE_ANSWERS.md` — respostas da entrevista inicial

## Planning

Pasta:

- `docs/planning/`

Arquivos:

- `docs/planning/ROADMAP.md` — roadmap por fases
- `docs/planning/EXECUTION_PLAN.md` — plano de execução
- `docs/planning/LAUNCH_CHECKLIST.md` — checklist antes de apresentar/publicar

## Architecture

Pasta:

- `docs/architecture/`

Arquivos:

- `docs/architecture/ARCHITECTURE.md` — arquitetura geral
- `docs/architecture/STACK.md` — stack técnica
- `docs/architecture/FOLDER_STRUCTURE.md` — estrutura de pastas
- `docs/architecture/IDENTIFIERS.md` — UUIDs, slugs, tokens e números amigáveis
- `docs/architecture/REUSABLE_PATTERNS.md` — padrões reutilizáveis
- `docs/architecture/BR_UTILS.md` — utilitários brasileiros opcionais

## Database

Pasta:

- `docs/database/`

Arquivos:

- `docs/database/DATABASE.md` — planejamento do banco
- `docs/database/SUPABASE.md` — estratégia Supabase
- `docs/database/RLS_POLICIES.md` — políticas de acesso e segurança no banco

## Design

Pasta:

- `docs/design/`

Arquivos:

- `docs/design/DESIGN_SYSTEM.md` — direção visual e componentes base
- `docs/design/THEME_AND_PREHYDRATION.md` — dark/light mode e pré-hidratação
- `docs/design/SIDEBAR_PATTERN.md` — padrão de sidebar
- `docs/design/FEEDBACK_SYSTEM.md` — toasts, status e feedbacks
- `docs/design/LOADING_STATES.md` — skeletons e carregamento refinado

## Brand

Pasta:

- `docs/brand/`

Arquivos:

- `docs/brand/BRAND_IDENTITY.md` — identidade visual
- `docs/brand/LOGO_AND_FAVICON.md` — logo, favicon e ícones
- `docs/brand/LINK_PREVIEW.md` — metadata e preview de links
- `docs/brand/SHARE_MESSAGES.md` — mensagens de compartilhamento
- `docs/brand/WHATSAPP_MESSAGE_STYLE.md` — padrão de mensagem WhatsApp/texto final

## Business

Pasta:

- `docs/business/`

Arquivos:

- `docs/business/BUSINESS_RULES.md` — regras de negócio
- `docs/business/PRICING.md` — planos, preços e condições
- `docs/business/SALES_SCRIPT.md` — roteiro de venda
- `docs/business/OBJECTIONS.md` — objeções e respostas

## Security

Pasta:

- `docs/security/`

Arquivos:

- `docs/security/SECURITY_OVERVIEW.md` — visão geral de segurança
- `docs/security/SECURITY_CHECKLIST.md` — checklist de segurança
- `docs/security/ENVIRONMENT_VARIABLES.md` — variáveis de ambiente
- `docs/security/SECRETS_AND_API_KEYS.md` — chaves, tokens e segredos
- `docs/security/SHARED_LINK_SECURITY.md` — segurança de links compartilhados
- `docs/security/API_SECURITY.md` — segurança de APIs
- `docs/security/AUTH_SECURITY.md` — autenticação e autorização
- `docs/security/STORAGE_SECURITY.md` — segurança de arquivos/storage
- `docs/security/WEBHOOK_SECURITY.md` — segurança de webhooks
- `docs/security/PEN_TEST_PLAN.md` — plano de testes de segurança

## Storage

Pasta:

- `docs/storage/`

Arquivos:

- `docs/storage/STORAGE_MANAGEMENT.md` — gestão de arquivos
- `docs/storage/FILE_LIFECYCLE.md` — ciclo de vida de arquivos

## Analytics

Pasta:

- `docs/analytics/`

Arquivos:

- `docs/analytics/TRACKING_EVENTS_LIBRARY.md` — biblioteca de eventos possíveis
- `docs/analytics/TRACKING_EVENTS_SELECTED.md` — eventos escolhidos/descartados no projeto

## Integrations

Pasta:

- `docs/integrations/`

Arquivos:

- `docs/integrations/API_CONNECTION_SETTINGS.md` — configuração de APIs pelo painel
- `docs/integrations/GOOGLE_AUTH.md` — roadmap de Google Auth
- `docs/integrations/SUPABASE.md` — integração Supabase
- `docs/integrations/ABACATEPAY.md` — integração AbacatePay
- `docs/integrations/WHATSAPP.md` — integração WhatsApp

## Implementation

Pasta:

- `docs/implementation/`

Arquivos:

- `docs/implementation/PROMPTS.md` — prompts reutilizáveis
- `docs/implementation/IMPLEMENTATION_GUIDE.md` — guia de execução
- `docs/implementation/COMPONENT_STRATEGY.md` — estratégia de componentes

## Project Memory

Pasta:

- `docs/project-memory/`

Arquivos:

- `docs/project-memory/DECISIONS.md` — decisões tomadas
- `docs/project-memory/FINDINGS.md` — problemas, aprendizados e descobertas
- `docs/project-memory/PROGRESS.md` — progresso do projeto
- `docs/project-memory/TASK_PLAN.md` — plano de tarefas
- `docs/project-memory/KNOWLEDGE_BASE.md` — base de conhecimento

## Agent State

Pasta:

- `docs/agent-state/`

Arquivos:

- `docs/agent-state/README.md` — explicação da pasta
- `docs/agent-state/CURRENT_SESSION.md` — estado vivo da sessão atual
- `docs/agent-state/RESUME_PROMPT.md` — prompt de retomada
- `docs/agent-state/SESSION_HISTORY/` — histórico opcional de sessões

## Agent Reports

Pasta:

- `docs/agent-reports/`

Arquivos:

- `docs/agent-reports/README.md` — explicação da pasta
- `docs/agent-reports/latest.md` — relatório mais recente do agente
- `docs/agent-reports/archive/` — arquivo morto de relatórios antigos

## References

Pasta:

- `docs/references/`

Arquivos:

- `docs/references/LINKS.md` — links úteis
- `docs/references/INSPIRATIONS.md` — inspirações e referências
- `docs/references/ASSETS.md` — assets, logos, imagens e materiais

## Research

Pasta:

- `docs/research/`

Arquivos:

- `docs/research/COMPETITOR_REFERENCES.md` — concorrentes e referências
- `docs/research/CURRENT_SYSTEM_AUDIT.md` — auditoria do sistema atual

## Workflows

Pasta:

- `docs/workflows/`

Arquivos:

- `docs/workflows/PROJECT_INTAKE_WORKFLOW.md` — entrevista inicial
- `docs/workflows/GITHUB_REPOSITORY_SETUP.md` — criação do repositório GitHub, remote e primeiro push
- `docs/workflows/SHARED_LINK_FLOW.md` — fluxo de link compartilhado
- `docs/workflows/DOCUMENTS_AND_ATTACHMENTS_FLOW.md` — comprovantes, PDFs e anexos
- `docs/workflows/CLIENT_UPDATES_FLOW.md` — atualizações visíveis para cliente
- `docs/workflows/CONTENT_REVIEW_FLOW.md` — revisão de conteúdo/copy/carrossel

## Resources / Skills

Pasta:

- `resources/skills/`

Função:

Recursos auxiliares que não fazem parte do sistema principal, mas ajudam a executar trabalhos recorrentes.

Skills previstas:

- `resources/skills/carousel/`
- `resources/skills/google-ads/`
- `resources/skills/proposals/`
- `resources/skills/security-audit/`
- `resources/skills/image-workflow/`
- `resources/skills/landing-page/`
- `resources/skills/copywriting/`
- `resources/skills/link-preview/`
- `resources/skills/project-scaffold/`

## Scripts

Pasta:

- `scripts/`

Arquivos:

- `scripts/create-project-from-base.sh` — script futuro para criar projetos a partir da base

## Templates

Pasta:

- `templates/`

Templates previstos:

- `templates/next-saas/`
- `templates/docs-only/`

## Regra para agentes

Antes de agir, agentes devem ler:

- `AGENTS.md`
- arquivo específico do agente (`CLAUDE.md` ou `CODEX.md`)
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`

## Quando atualizar este arquivo

Atualizar `docs/PROJECT_MAP.md` quando:

- criar pasta nova;
- renomear arquivo;
- remover arquivo;
- mudar fonte de verdade;
- adicionar workflow importante;
- adicionar skill;
- reorganizar arquitetura.
