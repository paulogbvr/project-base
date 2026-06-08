# Sidebar Pattern

Este documento define o padrão de sidebar da Project Base.

A sidebar é um elemento importante da identidade visual dos projetos.

## Quando usar

Usar sidebar em projetos com:

- dashboard;
- admin;
- área interna;
- gestão de dados;
- múltiplas seções;
- navegação recorrente.

Não usar sidebar quando o projeto for:

- landing page simples;
- página pública única;
- fluxo mobile-first curto;
- checkout/cardápio sem área admin.

## Padrão visual

A sidebar deve ter:

- logo no topo;
- nome do projeto;
- navegação principal;
- ícones consistentes;
- estado ativo;
- hover refinado;
- botão de expandir/recolher;
- footer com perfil/usuário;
- suporte a modo claro/escuro;
- transição suave;
- persistência de estado.

## Logo e hover

O topo da sidebar deve valorizar a marca.

Padrão desejado:

- exibir logo;
- ao passar o mouse, mostrar ação de expandir/recolher quando fizer sentido;
- não trocar bruscamente;
- não causar layout shift;
- manter alinhamento.

## Ícone de sidebar

Ícones sugeridos com Lucide:

- `PanelLeft`
- `PanelLeftClose`
- `PanelRight`
- `ChevronLeft`
- `ChevronRight`
- `Menu`

O ícone deve indicar corretamente a ação.

Evitar ícone piscando errado antes da hidratação.

## Estados

A sidebar deve prever:

- expandida;
- recolhida;
- mobile fechada;
- mobile aberta;
- item ativo;
- hover;
- focus;
- disabled;
- loading quando necessário.

## Persistência

Salvar estado em localStorage.

Exemplo:

- `project-base:sidebar-collapsed`

Projetos derivados devem trocar o prefixo:

- `worklog:sidebar-collapsed`
- `core:sidebar-collapsed`
- `food-orders:sidebar-collapsed`

## Mobile

No mobile, considerar:

- drawer;
- bottom nav;
- menu compacto;
- ocultar sidebar desktop.

A decisão depende do tipo de projeto.

## Footer

O footer pode ter:

- usuário mockado;
- avatar;
- e-mail;
- cargo;
- configurações;
- logout;
- status do sistema.

Em MVPs, usar dados mockados quando necessário, mas deixar claro.

## Acessibilidade

A sidebar deve ter:

- navegação por teclado;
- labels nos botões;
- aria-label no botão de recolher;
- foco visível;
- contraste adequado.

## Checklist

- [ ] Logo aparece bem?
- [ ] Hover está refinado?
- [ ] Botão de recolher funciona?
- [ ] Estado é persistido?
- [ ] Não há glitch de hidratação?
- [ ] Item ativo aparece corretamente?
- [ ] Funciona em dark mode?
- [ ] Funciona em light mode?
- [ ] Mobile foi considerado?
- [ ] Footer/perfil foi considerado?
