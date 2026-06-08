# Storage Management

Este documento define o padrão de gestão de arquivos no storage.

## Regra principal

Arquivo removido no front/admin deve ser avaliado para remoção no storage.

Não deixar storage virar depósito de arquivos órfãos.

## O que é arquivo órfão

Arquivo órfão é um arquivo que existe no storage, mas não está mais associado a nenhum registro válido no banco.

Exemplos:

- upload interrompido;
- arquivo removido do front mas não do storage;
- registro deletado sem limpar arquivo;
- substituição de arquivo sem apagar antigo;
- falha depois do upload antes de salvar no banco.

## Estratégias

### Remoção imediata

Usar quando:

- arquivo não é crítico;
- arquivo não é compartilhado;
- arquivo não é usado por outro recurso;
- remoção é segura.

### Soft delete

Usar quando:

- arquivo é sensível;
- arquivo tem valor legal;
- arquivo pode precisar de auditoria;
- remoção definitiva deve ser atrasada.

### Limpeza periódica

Usar para:

- arquivos temporários;
- uploads incompletos;
- arquivos órfãos;
- previews antigos.

## Verificação antes de apagar

Antes de apagar arquivo do storage:

- verificar se existe no banco;
- verificar se é usado por mais de um registro;
- verificar permissão do usuário;
- registrar audit log quando necessário;
- confirmar se não há processo pendente.

## Paths

Organizar paths por escopo.

Exemplos:

- `organizations/{organizationId}/projects/{projectId}/files/{fileId}`
- `customers/{customerId}/proofs/{fileId}`
- `public/assets/{fileName}`
- `previews/{resourceType}/{resourceId}`

Evitar path com dado sensível.

## Metadata

Banco deve guardar:

- id;
- bucket;
- path;
- filename original;
- mime type;
- size;
- owner;
- resource type;
- resource id;
- created at;
- deleted at;
- visibility;
- checksum quando necessário.

## Segurança

Seguir:

- `docs/security/STORAGE_SECURITY.md`

## Eventos possíveis

- file_uploaded
- file_viewed
- file_downloaded
- file_deleted
- file_orphan_detected
- file_cleanup_completed

## Checklist

- [ ] Upload cria registro no banco?
- [ ] Path não expõe dado sensível?
- [ ] Remoção no front considera storage?
- [ ] Arquivo usado por outro registro é preservado?
- [ ] Existe estratégia para órfãos?
- [ ] Existe audit log quando necessário?
- [ ] Buckets públicos/privados estão claros?
- [ ] Downloads privados exigem permissão?
