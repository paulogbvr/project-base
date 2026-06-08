# Logo and Favicon

Este documento define o processo para logo, favicon, ícone de app e consistência visual.

## Regra principal

Logo, favicon e preview de link devem parecer parte do mesmo sistema.

Evitar favicon com fundo ou estilo completamente diferente da logo exibida na sidebar/topbar.

## Quando fazer

Não precisa ser a primeira etapa do projeto.

Roadmap recomendado:

1. Criar base visual do projeto.
2. Criar primeira tela real.
3. Validar direção visual.
4. Pensar logo/favicons.
5. Criar metadata e preview.
6. Revisar consistência.
7. Ajustar arquivos finais.

## Arquivos comuns

Possíveis arquivos:

- `favicon.ico`
- `icon.png`
- `apple-icon.png`
- `opengraph-image.png`
- `twitter-image.png`
- `logo.svg`
- `logo-mark.svg`
- `logo-horizontal.svg`

A estrutura pode variar conforme o framework.

## Consistência

A logo deve funcionar em:

- sidebar expandida;
- sidebar recolhida;
- favicon;
- tela de login;
- tela pública;
- preview de link;
- metadata;
- loading/empty states quando fizer sentido.

## Logo na sidebar

Prever:

- versão completa;
- versão reduzida;
- ícone isolado;
- hover;
- modo claro;
- modo escuro.

## Favicon

O favicon deve ser:

- simples;
- legível pequeno;
- consistente com a logo;
- sem excesso de detalhes;
- testado em fundo claro/escuro quando possível.

## Preview de link

A imagem de preview pode usar:

- logo;
- nome do projeto;
- frase curta;
- visual premium;
- cor de acento;
- fundo limpo.

Ver:

- `docs/brand/LINK_PREVIEW.md`

## Segurança

Preview e metadata não devem expor dados sensíveis.

Em links privados, usar preview genérico.

## Checklist

- [ ] Existe logo ou direção para logo?
- [ ] Existe versão reduzida?
- [ ] Favicon foi pensado?
- [ ] Preview de link foi pensado?
- [ ] Logo combina com sidebar?
- [ ] Favicon combina com logo?
- [ ] Funciona em dark mode?
- [ ] Funciona em light mode?
- [ ] Não expõe dados sensíveis?
