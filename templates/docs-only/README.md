# Docs Only Template

Template futuro para projetos que começam apenas com documentação, planejamento e prompts, sem implementação de código imediata.

Este template é útil quando o usuário ainda está planejando a ideia, preparando proposta, estruturando requisitos ou criando uma base antes de decidir a stack final.

## Objetivo

Criar uma base documental completa para:

- planejar projeto;
- entrevistar cliente;
- organizar requisitos;
- registrar decisões;
- estruturar proposta;
- criar prompts para agentes;
- preparar roadmap;
- avaliar segurança;
- decidir stack;
- iniciar implementação depois.

## Quando usar

Usar este template quando:

- o projeto ainda não tem stack definida;
- o usuário quer planejar antes de codar;
- o projeto é grande e precisa de clareza;
- será necessário apresentar proposta;
- há muitas dúvidas;
- depende de decisão de cliente;
- depende de APIs/documentações;
- o usuário quer conversar primeiro com ChatGPT;
- o código só será criado em uma fase futura.

## Estrutura esperada

```txt
README.md
START_HERE.md
AGENTS.md
CLAUDE.md
CODEX.md

docs/
  PROJECT_MAP.md

  vision/
  planning/
  architecture/
  database/
  design/
  brand/
  business/
  security/
  storage/
  analytics/
  integrations/
  implementation/
  project-memory/
  agent-state/
  agent-reports/
  references/
  research/
  workflows/

resources/
  skills/
```

## O que esse template deve conter

### Planejamento

- visão;
- escopo MVP;
- roadmap;
- plano de execução;
- perguntas pendentes;
- intake answers.

### Arquitetura

- stack possível;
- estrutura de pastas futura;
- identificadores;
- padrões reutilizáveis;
- decisões técnicas.

### Segurança

- env vars;
- API keys;
- links compartilhados;
- auth;
- storage;
- webhooks;
- checklist.

### Design

- identidade visual;
- cor de acento;
- dark/light mode;
- sidebar futura;
- feedback system;
- loading states.

### Comercial

- preço;
- proposta;
- roteiro de venda;
- objeções;
- posicionamento.

### Agentes

- instruções para Claude;
- instruções para Codex;
- estado da sessão;
- relatório mais recente;
- prompt de retomada.

## Fluxo recomendado

1. Usuário conversa com ChatGPT.
2. ChatGPT faz entrevista inicial.
3. Respostas são registradas em `docs/vision/PROJECT_INTAKE_ANSWERS.md`.
4. Visão é escrita em `docs/vision/VISION.md`.
5. MVP é definido em `docs/vision/MVP_SCOPE.md`.
6. Roadmap é montado.
7. Segurança é avaliada.
8. Design direction é definido.
9. Proposta é preparada, se houver venda.
10. Só depois é criado o projeto de código.

## Diferença para o Next SaaS Template

### Docs Only

Usado para planejar.

Não precisa ter `src/`, Next.js, package.json ou deploy.

### Next SaaS

Usado quando já vai começar a implementação web.

Tem estrutura de código, dependências, app shell e projeto executável.

## Quando migrar para código

Migrar para template de código quando:

- MVP estiver claro;
- stack estiver definida;
- fluxo principal estiver definido;
- segurança mínima estiver planejada;
- design direction estiver definida;
- perguntas críticas estiverem respondidas.

## Prompt recomendado para agente

Use quando quiser transformar docs em implementação:

```txt
Leia toda a documentação principal do projeto antes de criar código.

Comece por:

- README.md
- START_HERE.md
- AGENTS.md
- docs/PROJECT_MAP.md
- docs/vision/VISION.md
- docs/vision/MVP_SCOPE.md
- docs/planning/ROADMAP.md
- docs/planning/EXECUTION_PLAN.md
- docs/architecture/STACK.md
- docs/security/SECURITY_OVERVIEW.md
- docs/design/DESIGN_SYSTEM.md
- docs/project-memory/DECISIONS.md
- docs/project-memory/TASK_PLAN.md

Depois proponha a estrutura inicial de código sem implementar tudo de uma vez.
```

## O que não fazer

- Não criar código sem visão.
- Não pular entrevista inicial.
- Não inventar stack sem registrar decisão.
- Não ignorar segurança.
- Não deixar perguntas críticas sem “A definir”.
- Não transformar documentação em texto genérico sem uso.
- Não permitir que o agente implemente sem ler os docs.

## Checklist

- [ ] Visão preenchida?
- [ ] MVP definido?
- [ ] Roadmap definido?
- [ ] Perguntas pendentes registradas?
- [ ] Segurança considerada?
- [ ] Design direction definida?
- [ ] Stack decidida ou marcada como A definir?
- [ ] Proposta comercial considerada?
- [ ] Agent-state preparado?
- [ ] latest.md preparado?
- [ ] Pronto para virar código?
