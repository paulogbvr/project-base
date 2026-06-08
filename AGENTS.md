# AGENTS.md

Este arquivo define as regras universais para qualquer agente de IA trabalhando neste projeto.

Vale para Claude, Codex, Cursor, agentes internos, assistentes de terminal ou qualquer outra IA usada para implementar, revisar, documentar ou auditar o projeto.

## Regra principal

O agente não deve apenas alterar código.

O agente deve manter o projeto organizado, documentado e rastreável.

Se o projeto muda, a documentação, o estado da sessão, o progresso, as decisões e os relatórios também devem mudar.

## Antes de alterar qualquer coisa

Sempre rode:

git status
git diff --stat

Depois leia, no mínimo:

- `README.md`
- `START_HERE.md`
- `docs/PROJECT_MAP.md`
- `docs/agent-state/CURRENT_SESSION.md`
- `docs/project-memory/TASK_PLAN.md`
- `docs/project-memory/PROGRESS.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/FINDINGS.md`

Se existir instrução específica para o agente, leia também:

- `CLAUDE.md` para Claude/Claude Code
- `CODEX.md` para Codex

## Estado vivo da sessão

O arquivo principal de estado é:

- `docs/agent-state/CURRENT_SESSION.md`

O agente deve atualizar esse arquivo:

- ao iniciar uma tarefa relevante;
- ao mudar de etapa;
- ao concluir uma tarefa;
- ao encontrar bloqueio;
- antes de encerrar;
- antes de atingir limite de tokens, contexto ou sessão.

Esse arquivo deve representar o estado mais recente da sessão.

Não transformar `CURRENT_SESSION.md` em histórico longo.

Se precisar preservar histórico, copiar o conteúdo anterior para:

- `docs/agent-state/SESSION_HISTORY/`

## Relatório final da tarefa

Ao finalizar ou pausar uma tarefa relevante, atualizar:

- `docs/agent-reports/latest.md`

O relatório deve conter:

- resumo do que foi feito;
- arquivos alterados;
- decisões tomadas;
- problemas encontrados;
- comandos rodados;
- testes realizados;
- parte incompleta;
- próximos passos recomendados.

## Memória do projeto

O agente deve atualizar os arquivos de memória conforme necessário.

### Decisão tomada

Atualizar:

- `docs/project-memory/DECISIONS.md`

Exemplos:

- escolha de stack;
- padrão de rota;
- decisão de segurança;
- escolha de design;
- alteração de escopo;
- regra de negócio.

### Progresso feito

Atualizar:

- `docs/project-memory/PROGRESS.md`

Exemplos:

- tela criada;
- fluxo implementado;
- documentação refinada;
- integração iniciada;
- bug corrigido.

### Tarefa alterada

Atualizar:

- `docs/project-memory/TASK_PLAN.md`

Exemplos:

- tarefa concluída;
- tarefa adicionada;
- tarefa bloqueada;
- tarefa descartada;
- prioridade alterada.

### Problema, aprendizado ou descoberta

Atualizar:

- `docs/project-memory/FINDINGS.md`

Exemplos:

- bug encontrado;
- comportamento estranho;
- limitação técnica;
- risco de segurança;
- melhoria futura;
- correção que deve ser lembrada.

## Status por etapa

Use este padrão quando registrar progresso:

- [ ] Não iniciado
- [~] Em andamento
- [x] Concluído
- [!] Bloqueado
- [-] Cancelado/descartado

## Limite de sessão, tokens ou contexto

Se estiver perto do limite, o agente deve parar antes de perder contexto.

Antes de encerrar, atualizar obrigatoriamente:

- `docs/agent-state/CURRENT_SESSION.md`
- `docs/agent-reports/latest.md`

O agente deve registrar:

- pedido original;
- tarefa atual;
- o que já foi feito;
- onde parou;
- parte incompleta;
- arquivos alterados;
- erros ou bloqueios;
- próximo passo recomendado;
- comandos importantes já rodados.

Para retomar, usar:

- `docs/agent-state/RESUME_PROMPT.md`

## Git

Não fazer commit automaticamente, a menos que o usuário peça.

Antes de qualquer commit, mostrar:

git status --short
git diff --stat

Commits devem ser claros e pequenos.

Não fazer push sem autorização do usuário.

## Segurança

Segurança deve ser considerada desde o início.

O agente deve respeitar:

- `docs/security/ENVIRONMENT_VARIABLES.md`
- `docs/security/SECRETS_AND_API_KEYS.md`
- `docs/security/SHARED_LINK_SECURITY.md`
- `docs/security/API_SECURITY.md`
- `docs/security/AUTH_SECURITY.md`
- `docs/security/SECURITY_CHECKLIST.md`

Regras obrigatórias:

- não expor segredos no frontend;
- não usar `NEXT_PUBLIC_` em variável secreta;
- não commitar `.env` ou `.env.local`;
- não usar IDs previsíveis em links públicos;
- não confiar apenas na UI para proteger dados;
- validar permissões no backend;
- considerar RLS quando usar Supabase;
- validar webhooks quando existirem;
- evitar dados sensíveis em metadata, title, description ou preview de link.

## Identificadores

Seguir:

- `docs/architecture/IDENTIFIERS.md`

Regra resumida:

- UUID para identidade técnica interna;
- slug para URLs amigáveis;
- token curto, aleatório e não previsível para links públicos;
- número amigável para exibição humana.

## Variáveis de ambiente e APIs

Seguir:

- `docs/security/ENVIRONMENT_VARIABLES.md`
- `docs/security/SECRETS_AND_API_KEYS.md`
- `docs/integrations/API_CONNECTION_SETTINGS.md`

Quando houver integrações:

- documentar variáveis;
- prever painel de status;
- usar StatusPulse;
- permitir testar conexão quando fizer sentido;
- esconder chaves por padrão;
- salvar segredos apenas no backend;
- não mostrar chave completa sem necessidade.

## Design e experiência

Seguir:

- `docs/design/DESIGN_SYSTEM.md`
- `docs/design/THEME_AND_PREHYDRATION.md`
- `docs/design/SIDEBAR_PATTERN.md`
- `docs/design/FEEDBACK_SYSTEM.md`
- `docs/design/LOADING_STATES.md`

Padrões obrigatórios quando aplicável:

- dark mode e light mode;
- pré-hidratação para evitar flash visual;
- sidebar com logo, hover e recolher/expandir;
- estado da sidebar persistido;
- toasts para ações importantes;
- status/pulse para estados de integração;
- skeleton loading por seção;
- títulos e filtros carregando rapidamente;
- evitar layout shift;
- interface componentizada.

## Mensagens de WhatsApp/texto final

Seguir:

- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

Regras principais:

- usar `*texto*` para negrito;
- usar `_texto_` para itálico;
- usar `_*texto*_` para negrito + itálico;
- usar `>` para citação/destaque;
- usar `→` para campo/direção;
- usar `↓` antes de links ou ações abaixo;
- usar `•` para bullets simples;
- não usar `#` ou `##` como título;
- não usar emojis por padrão.

## Componentização

O agente deve buscar:

- arquivos pequenos;
- componentes reutilizáveis;
- separação entre UI e regra de negócio;
- features por domínio;
- utilitários em `lib`;
- integrações isoladas;
- evitar arquivos gigantes;
- evitar duplicação.

## Recursos auxiliares

Skills e recursos que não fazem parte do sistema principal devem ficar em:

- `resources/skills/`

Exemplos:

- carrossel;
- Google Ads;
- propostas;
- auditoria de segurança;
- imagem;
- landing page;
- copywriting;
- preview de link;
- scaffold de projeto.

## Ao terminar uma resposta para o usuário

O agente deve informar:

- o que foi feito;
- arquivos alterados;
- se houve erro;
- se algo ficou pendente;
- próximo passo recomendado.

Se o usuário pedir apenas código/comando, entregar direto, sem explicação excessiva.

## Proibições

Não fazer sem autorização:

- apagar arquivos importantes;
- reiniciar projeto do zero;
- trocar stack principal;
- remover documentação;
- fazer commit;
- fazer push;
- expor segredos;
- colocar chaves reais em arquivos versionados;
- ignorar `CURRENT_SESSION.md`.
