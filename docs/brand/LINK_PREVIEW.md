# Link Preview

Este documento define o padrão para metadata, descrição e imagem de preview de links compartilhados.

## Objetivo

Quando um link for enviado por WhatsApp, redes sociais ou chat, ele deve parecer profissional, claro e seguro.

## Regra principal

Preview de link nunca deve expor dados sensíveis.

Isso inclui:

- nome completo de cliente quando não for público;
- valores;
- documentos;
- tokens;
- dados internos;
- status sensível;
- endereço privado;
- informação financeira;
- prints com dados privados.

## Metadata básica

Toda página relevante deve considerar:

- title;
- description;
- Open Graph image;
- Twitter image;
- favicon;
- canonical URL quando necessário.

## Tipos de preview

### Preview geral do projeto

Usado para home, landing page ou sistema público.

Pode conter:

- nome do projeto;
- descrição curta;
- logo;
- visual da marca.

### Preview de página específica

Usado quando a página é pública e segura.

Pode conter:

- nome da página;
- descrição específica;
- imagem personalizada.

### Preview de link privado

Usado para link compartilhado sensível.

Deve ser genérico.

Exemplo:

Title: Acompanhamento do projeto  
Description: Acesse o link para visualizar as informações disponíveis.  
Image: preview genérico do sistema

## Imagem personalizada

Quando o projeto permitir preview personalizado:

- gerar imagem segura;
- evitar dados sensíveis;
- usar template visual consistente;
- definir fallback;
- atualizar quando necessário.

## Fallback

Sempre ter fallback para:

- imagem ausente;
- página sem metadata específica;
- link privado;
- erro ao gerar imagem.

## WhatsApp

WhatsApp pode cachear preview.

Ao testar:

- conferir título;
- conferir descrição;
- conferir imagem;
- conferir se não vazou dado sensível.

## Storage

Se imagem personalizada for removida pelo front/admin, considerar limpeza no storage.

Ver:

- `docs/storage/STORAGE_MANAGEMENT.md`

## Checklist

- [ ] Title definido?
- [ ] Description definida?
- [ ] Open Graph image definida?
- [ ] Favicon definido?
- [ ] Preview é seguro?
- [ ] Link privado usa preview genérico?
- [ ] Imagem personalizada tem fallback?
- [ ] Storage cleanup considerado?
- [ ] WhatsApp preview testado?
