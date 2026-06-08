# Image Workflow Skill

Skill auxiliar para fluxos de imagem.

Pode ser usada para organização, prompts, tratamento, revisão visual, imagens de produto, previews, banners e assets.

## Objetivo

Criar e revisar imagens com consistência, qualidade e segurança.

## Quando usar

Usar para:

- imagem de produto;
- banner;
- preview de link;
- favicon;
- logo;
- imagem Open Graph;
- carrossel;
- landing page;
- proposta;
- catálogo;
- imagem gerada por IA;
- edição de imagem.

## Informações necessárias

Antes de gerar ou editar imagem, levantar:

- objetivo;
- formato;
- tamanho;
- proporção;
- canal;
- estilo visual;
- referência;
- restrições;
- texto na imagem;
- público;
- identidade da marca.

## Qualidade

Revisar:

- nitidez;
- iluminação;
- composição;
- proporção;
- leitura;
- contraste;
- consistência de marca;
- aparência profissional;
- ausência de artefatos;
- textos corretos.

## Imagens para preview de link

Seguir:

- `docs/brand/LINK_PREVIEW.md`

Regras:

- não expor dado sensível;
- usar fallback;
- manter consistência com logo;
- testar em WhatsApp quando possível.

## Imagens com texto

Revisar:

- ortografia;
- acentos;
- espaçamento;
- alinhamento;
- tamanho;
- contraste;
- legibilidade no mobile.

## Organização

Assets devem ser organizados.

Possíveis pastas:

- `public/brand/`
- `public/og/`
- `public/images/`
- `public/uploads/`, quando aplicável
- storage externo, se houver backend

## Remoção

Se imagem for removida pelo front/admin, considerar limpeza no storage.

Ver:

- `docs/storage/STORAGE_MANAGEMENT.md`

## Prompt de imagem

Um bom prompt deve conter:

- objeto principal;
- estilo;
- iluminação;
- câmera/enquadramento;
- fundo;
- proporção;
- restrições;
- o que não alterar;
- nível de realismo;
- uso final.

## Checklist

- [ ] Objetivo definido?
- [ ] Proporção definida?
- [ ] Canal definido?
- [ ] Referência definida?
- [ ] Estilo consistente?
- [ ] Texto revisado?
- [ ] Preview seguro?
- [ ] Arquivo organizado?
- [ ] Storage cleanup considerado?
