# Storage Security

Este documento define o padrão de segurança para storage, uploads, downloads e arquivos.

## Regra principal

Arquivos podem conter dados sensíveis.

Não tratar storage como pasta pública sem controle.

## Tipos de arquivo comuns

- imagens;
- comprovantes;
- PDFs;
- notas fiscais;
- contratos;
- propostas;
- anexos;
- avatares;
- previews;
- arquivos temporários.

## Buckets públicos e privados

### Público

Usar apenas para arquivos realmente públicos.

Exemplos:

- logo pública;
- imagem de produto pública;
- imagem de preview pública;
- assets de landing page.

### Privado

Usar para arquivos sensíveis.

Exemplos:

- comprovante;
- contrato;
- nota fiscal;
- documento de cliente;
- relatório privado;
- arquivo interno.

## Upload

Validar:

- tipo de arquivo;
- extensão;
- MIME type;
- tamanho;
- usuário/permissão;
- escopo do recurso;
- quantidade de uploads;
- nome do arquivo.

## Nome de arquivo

Evitar nomes que exponham dados sensíveis.

Evitar:

- `cpf-12345678900.pdf`
- `contrato-joao-silva-valor-5000.pdf`
- `cliente-129-comprovante.png`

Preferir:

- UUID interno;
- token de arquivo;
- path por escopo;
- metadata no banco.

## Download

Downloads privados devem validar permissão.

Opções:

- rota backend que valida e entrega;
- signed URL temporária;
- proxy seguro;
- política de storage.

## Preview

Preview de arquivo privado também precisa validar permissão.

Não gerar preview público de comprovante ou documento sensível.

## Remoção

Quando usuário remove arquivo pelo front/admin:

- remover associação no banco;
- avaliar se arquivo deve ser removido do storage;
- verificar se arquivo é usado por outro registro;
- considerar soft delete;
- registrar audit log quando necessário.

## Arquivos órfãos

Arquivos órfãos podem gerar custo e risco.

Considerar rotina para:

- encontrar arquivos sem referência;
- marcar para exclusão;
- excluir após período seguro.

## Signed URLs

Quando usar signed URL:

- expiração curta;
- escopo correto;
- não registrar URL em lugar público;
- não expor em metadata.

## Checklist

- [ ] Bucket público/privado definido?
- [ ] Upload valida tipo?
- [ ] Upload valida tamanho?
- [ ] Nome do arquivo evita dado sensível?
- [ ] Download privado valida permissão?
- [ ] Preview privado valida permissão?
- [ ] Remoção do front trata storage?
- [ ] Arquivos órfãos foram considerados?
- [ ] Signed URLs expiram?
- [ ] Logs não expõem URLs sensíveis?
