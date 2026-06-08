# WhatsApp Message Style

Este documento define o padrão oficial para mensagens finais enviadas por WhatsApp, texto copiado, mensagens de atualização, avisos de pagamento, notificações de projeto e compartilhamento de links.

O objetivo é manter uma comunicação clara, bonita, direta e compatível com WhatsApp, sem parecer um documento Markdown técnico.

## Regra principal

Mensagens finais para WhatsApp devem ser escritas no estilo de texto formatado do WhatsApp.

Elas podem usar negrito, itálico, citação, setas e bullets, mas não devem usar título Markdown com `#` ou `##`.

## Formatações permitidas

Use:

- `*texto*` para negrito
- `_texto_` para itálico
- `_*texto*_` para negrito + itálico
- `>` para citação, bloco de destaque ou linha de contexto
- `→` para campo, direção, etapa ou item principal
- `↓` para indicar continuação, ação ou link abaixo
- `•` para bullet simples quando fizer mais sentido do que seta

## Formatações que devem ser evitadas

Não usar em mensagem final de WhatsApp:

- `# Título`
- `## Subtítulo`
- tabelas Markdown
- blocos longos de código
- emojis por padrão
- texto com cara de documentação técnica
- links escondidos em Markdown

## Emojis

Não usar emojis por padrão.

Só usar emojis se o usuário pedir explicitamente ou se o projeto exigir uma linguagem mais informal.

Mesmo quando usar emoji, não exagerar.

## Estrutura recomendada

Uma boa mensagem geralmente segue esta ordem:

1. Título curto em negrito
2. Bloco de contexto com `>`
3. Data/horário quando fizer sentido
4. Campos principais com `*Campo: →* valor`
5. Chamada para ação
6. Link abaixo com `↓`

## Exemplo oficial aprovado

*→ Pagamento Registrado!*

> *Projeto: →* core
> _*06/06/2026 - 13:50*_

*Valor: →* *R$* 200,00
*Forma de pagamento: →* Pix

*Você pode acompanhar todas as atualizações do projeto pelo link abaixo:* ↓
https://worklog-projects.vercel.app/share/core-c1bfaa2224

## Exemplo de atualização de projeto

*→ Atualização Registrada!*

> *Projeto: →* core
> _*08/06/2026 - 21:40*_

*Status: →* Em andamento
*Etapa: →* Ajuste visual da dashboard

*Resumo: →*
• Layout principal ajustado
• Sidebar refinada
• Estados de loading revisados

*Você pode acompanhar as próximas atualizações pelo link abaixo:* ↓
https://exemplo.com/share/projeto-token

## Exemplo de link compartilhado

*→ Link de Acompanhamento!*

> *Projeto: →* Nome do Projeto
> _*Atualizado em 08/06/2026 - 21:40*_

*Use o link abaixo para acompanhar as atualizações:* ↓
https://exemplo.com/share/token-seguro

## Exemplo de aviso de ação necessária

*→ Ação Necessária!*

> *Projeto: →* Nome do Projeto
> _*08/06/2026 - 21:40*_

*Precisamos confirmar uma informação para continuar:* ↓

• Cor principal do projeto
• Nome final que aparecerá no sistema
• Domínio ou link que será usado

*Assim que essas informações forem confirmadas, seguimos para a próxima etapa.*

## Regras para agentes

Quando um agente criar mensagens finais para WhatsApp, ele deve:

- seguir este padrão;
- não usar `#` ou `##`;
- não transformar a mensagem em documento técnico;
- não usar emoji por padrão;
- manter o texto fácil de copiar e colar;
- preservar setas, negritos, itálicos e citações;
- usar `↓` antes de links ou ações abaixo;
- preferir mensagens curtas, claras e com boa hierarquia visual.

## Checklist antes de entregar uma mensagem

Antes de entregar uma mensagem final para WhatsApp, revisar:

- [ ] Tem título curto e forte?
- [ ] Não usa `#` ou `##`?
- [ ] Usa `*texto*` para negrito quando necessário?
- [ ] Usa `_texto_` ou `_*texto*_` para datas/horários quando fizer sentido?
- [ ] Usa `→` para campos importantes?
- [ ] Usa `↓` antes de link ou próxima ação?
- [ ] Está sem emoji por padrão?
- [ ] Está pronta para copiar e colar?
