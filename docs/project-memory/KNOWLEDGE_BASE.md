# Knowledge Base

Base de conhecimento da Project Base.

Este arquivo guarda conceitos, padrões e contexto geral que ajudam agentes e ChatGPT a entenderem a lógica da base.

## O que é a Project Base

A Project Base é uma base padrão para iniciar projetos com:

- planejamento;
- documentação;
- agentes de IA;
- segurança;
- design;
- workflows;
- memória;
- relatórios;
- estrutura reutilizável.

Ela não é apenas um template de código.

Ela é um sistema de trabalho.

## Workflow principal

1. O usuário conversa com ChatGPT.
2. ChatGPT faz entrevista e organiza a ideia.
3. ChatGPT gera comando/base/prompt.
4. Usuário executa no terminal.
5. Claude/Codex implementa.
6. Agente salva estado e relatório em Markdown.
7. Usuário envia esses arquivos ao ChatGPT.
8. ChatGPT analisa e orienta o próximo passo.

## Papel do ChatGPT

ChatGPT é usado para:

- pensar estrategicamente;
- fazer perguntas;
- organizar escopo;
- revisar respostas de agentes;
- gerar prompts;
- decidir próximo passo;
- ajudar a evitar erro de arquitetura;
- manter visão ampla.

## Papel do Claude/Codex

Claude/Codex são usados para:

- implementar;
- alterar arquivos;
- rodar comandos;
- refatorar;
- testar;
- atualizar documentação;
- gerar relatórios.

## Por que existe agent-state

Agentes podem atingir limite de sessão/contexto.

`docs/agent-state/CURRENT_SESSION.md` existe para preservar estado e permitir retomada.

## Por que existe agent-reports

`docs/agent-reports/latest.md` existe para facilitar o envio de um resumo ao ChatGPT.

Assim o usuário não precisa copiar respostas enormes.

## Padrões visuais do usuário

O usuário prefere projetos com:

- visual premium;
- organização forte;
- sidebar bem feita;
- logo/ícone próprios;
- dark/light mode;
- pré-hidratação;
- toasts;
- StatusPulse;
- skeleton loading refinado;
- componentização;
- monocromático com cor de acento.

## Padrões de segurança

A base deve sempre considerar:

- links compartilhados seguros;
- tokens públicos não previsíveis;
- UUID interno;
- variáveis de ambiente seguras;
- APIs protegidas;
- storage seguro;
- webhooks validados;
- RLS quando usar Supabase.

## Padrão de mensagem WhatsApp

Mensagens finais para WhatsApp usam:

- `*texto*`
- `_texto_`
- `_*texto*_`
- `>`
- `→`
- `↓`
- `•`

Não usar:

- `#`
- `##`
- emoji por padrão.

## Organização de skills

Recursos auxiliares ficam em:

- `resources/skills/`

Eles não fazem parte do sistema principal.

## Git

O fluxo correto é:

1. Criar repositório no GitHub.
2. Criar/copiar base local.
3. Commit local.
4. Conectar remote.
5. Push.

Ver:

- `docs/workflows/GITHUB_REPOSITORY_SETUP.md`
