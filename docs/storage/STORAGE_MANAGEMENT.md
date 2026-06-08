
# Storage Management

## Regra

Quando um arquivo for removido pelo front/admin, avaliar se ele também deve ser removido do storage.

## Cuidados

- Não apagar arquivo usado por outro registro.
- Verificar referências no banco.
- Usar audit log quando necessário.
- Considerar soft delete em dados críticos.
- Criar rotina para limpar arquivos órfãos.
