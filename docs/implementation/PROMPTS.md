# Prompts

Este documento guarda prompts reutilizáveis para trabalhar com agentes como Claude, Codex, Cursor ou outras IAs.

## Regra principal

Prompts devem fazer o agente:

1. entender o estado real do projeto;
2. ler os arquivos certos;
3. não reiniciar do zero;
4. preservar o que funciona;
5. atualizar documentação/memória;
6. registrar relatório ao final.

## Prompt base para iniciar tarefa

Use este prompt quando for pedir uma tarefa nova para um agente.

Retome o projeto a partir do estado atual do repositório.

Antes de alterar qualquer coisa, rode:

git status
git diff --stat

Leia obrigatoriamente:

- AGENTS.md
- CLAUDE.md ou CODEX.md, conforme o agente usado
- docs/PROJECT_MAP.md
- docs/agent-state/CURRENT_SESSION.md
- docs/project-memory/TASK_PLAN.md
- docs/project-memory/PROGRESS.md
- docs/project-memory/DECISIONS.md
- docs/project-memory/FINDINGS.md

Depois atualize docs/agent-state/CURRENT_SESSION.md informando:

- pedido original;
- tarefa atual;
- status em andamento;
- arquivos que pretende alterar;
- próximo passo.

Não reinicie do zero.

Preserve o que já funciona.

Implemente em partes pequenas, mantendo arquitetura componentizada, documentação viva, segurança e padrões visuais do projeto.

Ao finalizar ou pausar, atualize:

- docs/agent-state/CURRENT_SESSION.md
- docs/agent-reports/latest.md
- docs/project-memory/PROGRESS.md
- docs/project-memory/TASK_PLAN.md

Se tomar decisão relevante, atualize:

- docs/project-memory/DECISIONS.md

Se encontrar problema, aprendizado ou risco, atualize:

- docs/project-memory/FINDINGS.md

## Prompt de retomada após limite

Use o prompt oficial:

- docs/agent-state/RESUME_PROMPT.md

Versão curta:

Você atingiu o limite da sessão anterior enquanto estava trabalhando.

Retome de onde parou. Não reinicie do zero.

Primeiro rode:

git status
git diff --stat

Leia:

- docs/agent-state/CURRENT_SESSION.md
- docs/agent-reports/latest.md
- docs/project-memory/PROGRESS.md
- docs/project-memory/TASK_PLAN.md

Revise o que já foi alterado/incompleto e continue com base no estado real do projeto.

Preserve o que funciona e me avise o que mudou, arquivos mexidos e próximo passo.

## Prompt para implementar UI

Use quando for criar ou refinar interface.

Trabalhe na interface seguindo os padrões visuais do projeto.

Leia:

- docs/design/DESIGN_SYSTEM.md
- docs/design/THEME_AND_PREHYDRATION.md
- docs/design/SIDEBAR_PATTERN.md
- docs/design/FEEDBACK_SYSTEM.md
- docs/design/LOADING_STATES.md
- docs/architecture/REUSABLE_PATTERNS.md
- docs/architecture/FOLDER_STRUCTURE.md

Prioridades:

- visual premium;
- componentização;
- dark mode e light mode;
- pré-hidratação sem glitch;
- sidebar com logo, hover e colapso, se houver;
- toasts para ações importantes;
- StatusPulse quando houver status;
- skeleton loading refinado;
- títulos e filtros carregando rápido;
- estados vazio, erro e loading;
- responsividade;
- sem layout shift desnecessário.

Ao final, atualize os relatórios e memória do projeto.

## Prompt para implementar segurança

Use quando for revisar ou implementar rotas, APIs, auth, links compartilhados, storage, webhooks ou variáveis de ambiente.

Leia:

- docs/security/SECURITY_OVERVIEW.md
- docs/security/SECURITY_CHECKLIST.md
- docs/security/ENVIRONMENT_VARIABLES.md
- docs/security/SECRETS_AND_API_KEYS.md
- docs/security/SHARED_LINK_SECURITY.md
- docs/security/API_SECURITY.md
- docs/security/AUTH_SECURITY.md
- docs/security/STORAGE_SECURITY.md
- docs/security/WEBHOOK_SECURITY.md
- docs/security/PEN_TEST_PLAN.md
- docs/architecture/IDENTIFIERS.md

Não exponha segredos.

Não use IDs previsíveis em links públicos.

Não confie apenas na UI para proteger dados.

Ao final, registre riscos, decisões e testes realizados.

## Prompt para trabalhar com Supabase

Leia:

- docs/database/DATABASE.md
- docs/database/SUPABASE.md
- docs/database/RLS_POLICIES.md
- docs/integrations/SUPABASE.md
- docs/security/ENVIRONMENT_VARIABLES.md
- docs/security/SECRETS_AND_API_KEYS.md

Regras:

- service role só no backend;
- RLS planejada antes de dados reais;
- variáveis documentadas;
- storage protegido;
- auth documentado;
- IDs técnicos com UUID.

## Prompt para revisar conteúdo/copy

Leia:

- docs/workflows/CONTENT_REVIEW_FLOW.md
- docs/brand/WHATSAPP_MESSAGE_STYLE.md
- docs/brand/SHARE_MESSAGES.md

Revise:

- ortografia;
- acentos;
- espaçamentos;
- clareza;
- tom;
- formato correto do canal;
- ausência de emoji quando padrão proíbe;
- ausência de #/## em mensagem WhatsApp.

Registre erros recorrentes em:

- docs/project-memory/FINDINGS.md

## Prompt para criar projeto novo a partir da Project Base

Use depois da entrevista inicial.

Antes de gerar comando ou scaffold, leia:

- START_HERE.md
- docs/workflows/PROJECT_INTAKE_WORKFLOW.md
- docs/vision/PROJECT_INTAKE_ANSWERS.md
- docs/architecture/FOLDER_STRUCTURE.md
- docs/architecture/REUSABLE_PATTERNS.md
- docs/security/SECURITY_OVERVIEW.md
- docs/design/DESIGN_SYSTEM.md

O comando deve:

- criar pasta do projeto;
- criar docs;
- criar arquivos de agentes;
- preparar .env.example;
- preparar .env.local.example;
- preparar .gitignore;
- criar estrutura adequada;
- inicializar Git se solicitado;
- orientar criação do GitHub antes do push.

## Prompt para pedir relatório ao agente

Ao final da tarefa, atualize:

- docs/agent-state/CURRENT_SESSION.md
- docs/agent-reports/latest.md
- docs/project-memory/PROGRESS.md
- docs/project-memory/TASK_PLAN.md

O relatório deve conter:

- o que foi feito;
- arquivos alterados;
- comandos rodados;
- testes realizados;
- erros/problemas;
- decisões tomadas;
- parte incompleta;
- próximo passo recomendado.

## Checklist de prompt bom

- [ ] Pede git status?
- [ ] Pede git diff --stat?
- [ ] Pede leitura dos docs certos?
- [ ] Proíbe reiniciar do zero?
- [ ] Pede preservar o que funciona?
- [ ] Define arquivos de memória a atualizar?
- [ ] Define relatório final?
- [ ] Considera segurança?
- [ ] Considera design?
- [ ] Considera handoff se acabar limite?
