# Documents and Attachments Flow

Este documento define o fluxo padrão para documentos, anexos, comprovantes, PDFs e arquivos.

## Objetivo

Padronizar como projetos lidam com:

- upload;
- visualização;
- download;
- substituição;
- remoção;
- storage;
- segurança;
- status.

## Tipos de arquivo comuns

- comprovante de pagamento;
- PDF;
- contrato;
- proposta;
- nota fiscal;
- imagem;
- documento;
- relatório;
- anexo de cliente;
- arquivo interno.

## Fluxo básico

1. Usuário seleciona arquivo.
2. Sistema valida tipo e tamanho.
3. Sistema faz upload.
4. Sistema cria registro no banco.
5. Sistema associa arquivo ao recurso.
6. Interface mostra preview/status.
7. Usuário pode visualizar/baixar.
8. Usuário pode remover/substituir se tiver permissão.
9. Sistema limpa storage quando seguro.

## Componentes possíveis

- FileUpload
- FilePreview
- PdfViewer
- ProofViewer
- DownloadButton
- CopyButton
- FileStatusBadge
- AttachmentList

## Comprovante

Para comprovante, prever:

- upload;
- visualização;
- download;
- status;
- data de envio;
- quem enviou;
- relação com pagamento/projeto/pedido;
- remoção segura.

## PDF

Para PDF, prever:

- preview;
- download;
- abrir em nova aba;
- fallback se navegador não suportar preview;
- permissão de acesso.

## Nota fiscal / chave NF

Quando houver NF:

- campo para chave;
- botão copiar chave;
- validação quando possível;
- arquivo PDF/XML quando necessário;
- status de emissão;
- data de emissão.

## Remoção

Ao remover arquivo no front/admin:

- remover relação no banco;
- verificar se arquivo é usado em outro lugar;
- remover do storage quando seguro;
- registrar audit log quando necessário;
- mostrar toast.

## Segurança

Seguir:

- `docs/security/STORAGE_SECURITY.md`
- `docs/storage/STORAGE_MANAGEMENT.md`
- `docs/storage/FILE_LIFECYCLE.md`

## Feedback visual

Ações devem gerar feedback:

- upload iniciado;
- upload concluído;
- upload falhou;
- arquivo removido;
- download iniciado;
- chave copiada.

## Tracking events possíveis

- file_uploaded
- file_viewed
- file_downloaded
- file_deleted

Registrar em:

- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Checklist

- [ ] Tipo de arquivo validado?
- [ ] Tamanho validado?
- [ ] Upload tem loading?
- [ ] Erro de upload é claro?
- [ ] Preview respeita permissão?
- [ ] Download respeita permissão?
- [ ] Remoção limpa banco/storage quando seguro?
- [ ] Toasts implementados?
- [ ] Arquivos órfãos considerados?
- [ ] Eventos escolhidos registrados?
