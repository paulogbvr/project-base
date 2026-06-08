# Agent Reports

Esta pasta guarda relatórios dos agentes.

## Arquivo principal

- `latest.md`

Esse arquivo deve conter o relatório mais recente da tarefa ou sessão.

## Objetivo

Facilitar o fluxo:

1. Agente trabalha.
2. Agente escreve relatório.
3. Usuário envia relatório ao ChatGPT.
4. ChatGPT analisa e orienta próximo passo.

## Quando atualizar latest.md

Atualizar:

- ao finalizar tarefa;
- ao pausar tarefa;
- antes de atingir limite;
- após erro importante;
- antes de pedir revisão do ChatGPT.

## O que registrar

- pedido original;
- resumo;
- arquivos alterados;
- comandos rodados;
- testes realizados;
- decisões tomadas;
- problemas encontrados;
- parte incompleta;
- próximos passos;
- observações para ChatGPT.

## Histórico

Se quiser preservar relatórios antigos, copiar para:

- `archive/`

Sugestão de nome:

- `YYYY-MM-DD-nome-da-tarefa.md`

## Relação com agent-state

`CURRENT_SESSION.md` mostra o estado vivo.

`latest.md` mostra o relatório final/parcial mais organizado.

Ambos podem ser enviados ao ChatGPT.

## Regra para agentes

Ao final de tarefa relevante, atualizar este arquivo.

Se nada foi alterado, registrar que nada foi alterado e explicar o motivo.
