
# Secrets and API Keys

## Cenários

### Projeto próprio/admin

Pode usar `.env.local` para configurar integrações durante o desenvolvimento.

### Sistema para terceiros

Deve permitir configurar APIs pelo painel, de forma segura.

## Padrão de interface

- Campo mascarado
- Botão visualizar
- Botão copiar quando permitido
- Botão testar conexão
- Status visual
- Salvar no backend

## Segurança

- Nunca expor segredo completo no frontend sem necessidade.
- Preferir permitir substituir a chave em vez de revelar chave antiga.
- Guardar segredos no backend.
- Validar permissões antes de testar/conectar.
