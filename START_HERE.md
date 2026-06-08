
# Start Here

Leia este arquivo antes de usar a Project Base.

## Para que serve

A Project Base é uma base de organização para iniciar projetos com IA, documentação, segurança, design e workflows.

Ela não é apenas um template de site. Ela é um fluxo de trabalho.

## Recomendado antes de começar

- VS Code instalado
- Git instalado
- Node.js LTS instalado
- Terminal funcionando
- Pasta padrão para projetos, como `~/vscode`
- Acesso a uma IA forte para programação, como Claude Code, Codex ou equivalente
- ChatGPT para planejamento, revisão e direção estratégica

## Como usar

1. Clone ou copie esta base.
2. Converse com o ChatGPT para planejar o projeto.
3. Preencha os documentos principais.
4. Peça para Claude/Codex ler `AGENTS.md`, `CLAUDE.md` ou `CODEX.md`.
5. O agente deve atualizar os arquivos de estado e relatórios.
6. Envie os arquivos de estado/relatório ao ChatGPT quando precisar continuar.

## Arquivos para enviar ao ChatGPT

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`

## Boas práticas

- Não comece codando sem planejar.
- Não deixe decisões importantes apenas no chat.
- Não exponha segredos, tokens, chaves de API ou `.env`.
- Peça para o agente atualizar os arquivos antes de encerrar a sessão.

## Ordem recomendada com GitHub

Antes de iniciar um projeto real baseado na Project Base, siga esta ordem:

1. Criar um repositório privado no GitHub.
2. Não marcar README, .gitignore ou licença se a base já tiver esses arquivos.
3. Criar/copiar a base localmente.
4. Fazer o primeiro commit.
5. Conectar o remote origin.
6. Fazer o primeiro push.
7. Conferir se origin/main aparece corretamente.

Guia completo:

- `docs/workflows/GITHUB_REPOSITORY_SETUP.md`
