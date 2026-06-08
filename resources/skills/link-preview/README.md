# Link Preview Skill

Skill auxiliar para metadata, favicon, imagem de preview e mensagens de compartilhamento.

## Objetivo

Garantir que links compartilhados pareçam profissionais e seguros.

## Quando usar

Usar quando o projeto tiver:

- landing page;
- link compartilhado;
- proposta;
- página pública;
- página de cliente;
- página de pedido;
- página de pagamento;
- dashboard público;
- preview para WhatsApp;
- preview para LinkedIn;
- preview para redes sociais.

## Elementos

Revisar:

- title;
- description;
- favicon;
- Open Graph image;
- Twitter image;
- canonical;
- mensagem de compartilhamento;
- imagem fallback;
- segurança de metadata.

## Segurança

Nunca colocar dados sensíveis em:

- title;
- description;
- URL;
- preview image;
- metadata;
- alt público.

Seguir:

- `docs/brand/LINK_PREVIEW.md`
- `docs/security/SHARED_LINK_SECURITY.md`

## Preview geral

Para página pública geral, pode usar:

- nome do projeto;
- descrição curta;
- logo;
- imagem de marca.

## Preview privado

Para link privado/sensível, usar:

- título genérico;
- descrição genérica;
- imagem genérica;
- sem dados de cliente;
- sem valores;
- sem status sensível.

## Mensagem de compartilhamento

Seguir:

- `docs/brand/SHARE_MESSAGES.md`
- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

## Favicon

Verificar:

- legibilidade pequeno;
- consistência com logo;
- dark/light;
- fundo;
- ícone.

## Testes

Testar:

- WhatsApp;
- navegador;
- inspect metadata;
- refresh de cache quando possível;
- fallback.

## Checklist

- [ ] Title definido?
- [ ] Description definida?
- [ ] OG image definida?
- [ ] Favicon definido?
- [ ] Preview seguro?
- [ ] Mensagem pronta?
- [ ] WhatsApp testado?
- [ ] Não há dado sensível?
- [ ] Fallback existe?
