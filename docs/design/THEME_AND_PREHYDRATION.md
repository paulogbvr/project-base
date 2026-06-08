# Theme and Pre-hydration

Este documento define o padrão de tema e pré-hidratação da Project Base.

## Problema que queremos evitar

Muitos projetos carregam primeiro em um tema e depois mudam para outro após a hidratação do React.

Isso causa:

- flash de tela clara em dark mode;
- mudança brusca de cor;
- sidebar piscando;
- ícone errado aparecendo por um instante;
- sensação de sistema mal acabado.

## Regra principal

O tema deve ser aplicado antes da hidratação sempre que possível.

O estado visual crítico deve ser conhecido antes da interface aparecer.

## Temas suportados

- `light`
- `dark`
- `system`

## Persistência

Salvar preferência em localStorage.

Exemplos:

- `project-base:theme`
- `project-base:sidebar-collapsed`

Em projetos derivados, trocar `project-base` pelo slug do projeto.

Exemplos:

- `worklog:theme`
- `core:theme`
- `food-orders:theme`

## Aplicação no HTML

O projeto pode usar:

- classe no `html`, como `class="dark"`;
- atributo, como `data-theme="dark"`;
- script inline antes da hidratação;
- provider de tema no client.

O importante é evitar flash visual.

## Script de pré-hidratação

O script deve:

1. Ler localStorage.
2. Verificar preferência do sistema, se necessário.
3. Aplicar tema no HTML.
4. Aplicar estado inicial de sidebar, quando possível.
5. Falhar silenciosamente se localStorage não estiver disponível.

## Estado da sidebar

O estado de sidebar também pode causar glitch.

Persistir:

- aberta;
- recolhida.

Evitar:

- carregar aberta e recolher depois;
- carregar recolhida e abrir depois;
- mostrar ícone contrário por um instante.

## Regras para agentes

Quando implementar tema, o agente deve:

- criar estratégia de pré-hidratação;
- documentar localStorage keys;
- evitar acessar `window` diretamente no server;
- tratar estado montado/não montado;
- evitar layout shift;
- testar light e dark;
- testar refresh;
- testar primeira visita;
- testar troca de tema.

## Valores padrão

Se o projeto não tiver preferência definida:

- usar monocromático premium;
- dark mode preparado;
- light mode preparado;
- perguntar cor de acento ao usuário.

## Checklist

- [ ] Tema claro funciona?
- [ ] Tema escuro funciona?
- [ ] System mode funciona, se existir?
- [ ] Refresh mantém tema?
- [ ] Não há flash visual?
- [ ] Sidebar mantém estado?
- [ ] Ícone de sidebar não pisca errado?
- [ ] localStorage key está documentada?
- [ ] O tema não quebra SSR/hidratação?
