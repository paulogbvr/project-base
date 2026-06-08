# Project Intake Workflow

Este documento define o fluxo de entrevista inicial para qualquer projeto novo.

## Objetivo

Antes de criar arquivos, código ou prompts para agentes, o ChatGPT deve entrevistar o usuário e organizar a ideia.

O objetivo é fazer o usuário falar bastante para formar uma base forte.

## Regra principal

Não começar pelo código.

Começar entendendo:

- problema;
- público;
- contexto;
- objetivo;
- páginas;
- dados;
- integrações;
- segurança;
- estilo visual;
- prazo;
- entrega mínima;
- estratégia comercial.

## Fluxo recomendado

1. Usuário diz que quer começar um projeto.
2. ChatGPT pede contexto.
3. ChatGPT faz entrevista guiada.
4. Usuário envia referências, arquivos, APIs, prints ou exemplos.
5. ChatGPT organiza visão, escopo e arquitetura.
6. ChatGPT gera comando para criar a base.
7. Usuário roda no terminal.
8. ChatGPT gera prompts para Claude/Codex.
9. Agente implementa e salva relatórios.
10. Usuário envia relatórios ao ChatGPT.
11. ChatGPT analisa e orienta próximo passo.

## Perguntas essenciais

### Contexto

1. Qual é o tipo de projeto?
2. Quem é o cliente ou dono do projeto?
3. Qual problema esse projeto resolve?
4. Por que esse projeto precisa existir agora?
5. Existe algum sistema atual?
6. O que está ruim no sistema atual?

### Público

7. Quem vai usar?
8. Quem vai administrar?
9. Quem só vai visualizar?
10. Existe cliente final?
11. Existe equipe interna?

### Objetivo

12. Qual é a entrega mínima?
13. Qual resultado precisa causar?
14. É para vender, operar, apresentar, organizar ou automatizar?
15. Tem prazo?

### Funcionalidades

16. Quais páginas precisa?
17. Quais ações o usuário precisa fazer?
18. Quais dados precisa guardar?
19. Precisa de dashboard?
20. Precisa de admin?
21. Precisa de link compartilhado?
22. Precisa de upload/download?
23. Precisa de PDF/comprovante/NF?
24. Precisa de timeline/atualizações?

### Login e segurança

25. Precisa de login?
26. Quem pode acessar o quê?
27. Tem dados sensíveis?
28. Precisa de Google Auth?
29. Precisa de link público seguro?
30. Precisa de permissões por papel?

### Integrações

31. Tem API externa?
32. Tem documentação da API?
33. Precisa de pagamento?
34. Precisa de WhatsApp?
35. Precisa de Supabase?
36. Precisa de storage?
37. Precisa de webhooks?

### Design

38. Tem logo?
39. Tem identidade visual?
40. Qual cor de acento?
41. Tem referências visuais?
42. Deve ser dark mode, light mode ou ambos?
43. Deve seguir padrão monocromático premium?

### Comercial

44. Isso será vendido?
45. Terá mensalidade?
46. Terá planos?
47. Quem decide a compra?
48. Qual objeção provável?

### Material de apoio

49. Tem prints?
50. Tem arquivos?
51. Tem repositório?
52. Tem README?
53. Tem documentação?
54. Tem exemplo concorrente?
55. Tem conteúdo/copy já pronto?

## Saídas esperadas da entrevista

Ao final, gerar:

- visão geral;
- escopo MVP;
- roadmap;
- arquitetura inicial;
- riscos;
- perguntas pendentes;
- comando de criação da base;
- prompt inicial para agente.

## Arquivos a preencher depois da entrevista

- `docs/vision/VISION.md`
- `docs/vision/MVP_SCOPE.md`
- `docs/vision/PROJECT_INTAKE_ANSWERS.md`
- `docs/planning/ROADMAP.md`
- `docs/planning/EXECUTION_PLAN.md`
- `docs/project-memory/DECISIONS.md`
- `docs/project-memory/TASK_PLAN.md`

## Regra para perguntas pendentes

Se algo não for respondido, registrar como:

A definir.

Não inventar decisão importante sem sinalizar.

## Checklist

- [ ] Problema entendido?
- [ ] Público definido?
- [ ] MVP definido?
- [ ] Páginas principais listadas?
- [ ] Dados principais listados?
- [ ] Segurança considerada?
- [ ] Integrações consideradas?
- [ ] Design direcionado?
- [ ] Prazo entendido?
- [ ] Próximo passo definido?
