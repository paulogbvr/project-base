# File Lifecycle

Este documento define o ciclo de vida de arquivos.

## Ciclo principal

1. Seleção
2. Validação
3. Upload
4. Registro no banco
5. Associação ao recurso
6. Visualização
7. Download
8. Substituição
9. Remoção lógica
10. Remoção física quando seguro
11. Limpeza de órfãos

## 1. Seleção

Usuário escolhe arquivo.

A UI deve informar:

- formatos aceitos;
- tamanho máximo;
- finalidade do arquivo.

## 2. Validação

Validar:

- extensão;
- MIME type;
- tamanho;
- permissões;
- quantidade;
- contexto.

## 3. Upload

Durante upload:

- mostrar loading/progresso;
- evitar clique duplicado;
- tratar cancelamento;
- tratar erro.

## 4. Registro no banco

Após upload, registrar:

- bucket;
- path;
- nome original;
- tipo;
- tamanho;
- recurso relacionado;
- autor;
- visibilidade.

## 5. Associação

Associar arquivo ao recurso correto:

- projeto;
- cliente;
- pedido;
- pagamento;
- nota fiscal;
- proposta;
- atualização.

## 6. Visualização

Preview deve respeitar permissão.

Se não houver preview:

- mostrar ícone;
- nome;
- tamanho;
- botão download.

## 7. Download

Download deve:

- validar permissão;
- gerar signed URL quando necessário;
- registrar evento quando fizer sentido;
- mostrar feedback visual.

## 8. Substituição

Ao substituir:

- subir novo arquivo;
- atualizar referência;
- decidir destino do antigo;
- manter histórico se necessário.

## 9. Remoção lógica

Soft delete pode marcar:

- `deleted_at`
- `deleted_by`
- `delete_reason`

## 10. Remoção física

Apagar do storage somente quando seguro.

Verificar:

- não usado por outro registro;
- não necessário para auditoria;
- permissão válida;
- regra de retenção.

## 11. Limpeza de órfãos

Rotina futura pode:

- listar arquivos sem referência;
- marcar suspeitos;
- apagar após período seguro;
- registrar relatório.

## Feedbacks esperados

- upload iniciado;
- upload concluído;
- upload falhou;
- arquivo removido;
- download iniciado;
- sem permissão;
- arquivo não encontrado.

## Checklist

- [ ] UI informa formato/tamanho?
- [ ] Validação existe?
- [ ] Registro no banco existe?
- [ ] Preview respeita permissão?
- [ ] Download respeita permissão?
- [ ] Substituição trata arquivo antigo?
- [ ] Remoção lógica/física está clara?
- [ ] Órfãos foram considerados?
