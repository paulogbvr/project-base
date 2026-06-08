# Reusable Patterns

Este documento lista padrões reutilizáveis que a Project Base deve prever para projetos futuros.

Nem todo projeto usará todos os padrões, mas eles devem estar documentados para o agente decidir o que aplicar e o que descartar.

## Regra principal

Padrões recorrentes devem ser pensados antes da implementação.

Quando um padrão não for usado, o agente pode registrar em documentação que ele foi descartado e por quê.

## App Shell

Estrutura base de interface para sistemas com painel.

Inclui:

- sidebar;
- topbar;
- área principal;
- área de perfil;
- tema;
- responsividade;
- estados de loading;
- feedback visual.

## Sidebar

Padrão esperado:

- logo no topo;
- nome do projeto;
- hover na logo ou área superior;
- botão de expandir/recolher;
- ícone visual adequado;
- estado ativo;
- itens com ícones;
- footer com perfil mockado ou real;
- persistência do estado;
- sem glitch de hidratação.

## Theme Toggle

Projetos devem prever:

- light mode;
- dark mode;
- system mode quando fizer sentido;
- persistência no localStorage;
- pré-hidratação para evitar flash visual.

## Pre-hydration

Antes da hidratação do React, aplicar:

- tema escolhido;
- estado da sidebar;
- classes/atributos necessários no HTML.

Objetivo:

- evitar piscar tema errado;
- evitar sidebar abrir/recolher visualmente depois;
- reduzir sensação de layout quebrando.

## Toasts

Toda ação relevante deve ter feedback visual.

Exemplos:

- salvar;
- excluir;
- copiar;
- baixar;
- enviar;
- testar conexão;
- alterar status;
- criar link;
- revogar link;
- upload concluído;
- erro de validação.

## StatusPulse

Indicador visual para estados.

Estados:

- `success` ou `ok` → verde pulsando;
- `warning` ou `pending` → amarelo pulsando;
- `error` → vermelho pulsando;
- `neutral` → cinza, sem chamar tanta atenção.

Usos:

- status de API;
- status de ambiente;
- status de integração;
- status de pedido/projeto;
- status de conexão;
- status de publicação.

## EnvironmentStatusPanel

Painel para mostrar status de variáveis e integrações.

Deve mostrar:

- integração;
- status;
- última checagem;
- erro, se houver;
- ação recomendada;
- botão de testar conexão quando fizer sentido.

## ApiKeyField

Campo para chaves de API.

Deve prever:

- input mascarado;
- botão visualizar;
- botão copiar quando permitido;
- botão substituir;
- botão remover/desconectar;
- botão testar conexão;
- alerta de segurança.

## Skeleton Loading Refinado

Não usar skeleton genérico na tela inteira sem necessidade.

Padrão:

- título da página carrega rápido;
- descrição carrega rápido;
- filtros principais carregam rápido;
- cards/tabelas carregam com skeleton por seção;
- evitar layout shift.

## CopyButton

Botão reutilizável para copiar:

- link;
- token;
- chave NF;
- código Pix;
- mensagem;
- endereço;
- identificador.

Deve gerar toast.

## ShareButton

Botão para compartilhamento.

Pode abrir:

- copiar link;
- mensagem pronta;
- WhatsApp;
- e-mail;
- social share quando fizer sentido.

Deve respeitar segurança de links.

## DownloadButton

Botão para download de:

- PDF;
- comprovante;
- imagem;
- relatório;
- proposta;
- arquivo anexado.

Deve gerar toast ou feedback.

## FilePreview / ProofViewer / PdfViewer

Padrões para visualização de arquivos.

Usos:

- comprovantes;
- PDFs;
- notas;
- imagens;
- contratos;
- anexos.

Regras:

- loading claro;
- erro claro;
- botão baixar;
- botão abrir em nova aba, se fizer sentido;
- respeitar permissão;
- não expor arquivo privado sem controle.

## InvoiceKeyField

Campo para chave de NF ou documento fiscal.

Deve prever:

- exibir chave;
- copiar chave;
- validar formato quando possível;
- mostrar status;
- associar arquivo/PDF quando existir.

## SharedLink

Padrão para links compartilhados.

Deve prever:

- token seguro;
- copiar link;
- revogar;
- expirar;
- registrar abertura;
- preview seguro;
- metadata sem dados sensíveis;
- timeline de atualizações quando aplicável.

## ClientUpdatesTimeline

Timeline para cliente acompanhar atualizações.

Deve prever:

- data/hora;
- tipo de atualização;
- status;
- descrição curta;
- filtros;
- link compartilhado;
- estados vazio/loading/erro.

## ActivityLog / AuditLog

Projetos com dados sensíveis devem prever logs.

Activity log:

- eventos visíveis para usuário/admin.

Audit log:

- eventos técnicos e sensíveis.

Exemplos:

- usuário criou item;
- usuário removeu arquivo;
- API key foi substituída;
- link foi revogado;
- pagamento foi registrado.

## Tracking Events

Projetos podem usar eventos definidos em:

- `docs/analytics/TRACKING_EVENTS_LIBRARY.md`

O agente deve escolher eventos úteis e registrar em:

- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Storage Cleanup

Quando arquivo for removido no front/admin, avaliar remoção no storage.

Regras:

- verificar se arquivo não é usado por outro registro;
- considerar soft delete;
- registrar audit log;
- limpar arquivos órfãos quando possível.

## Brazilian Utilities

Quando projeto usar dados brasileiros, considerar:

- CPF;
- CNPJ;
- telefone;
- CEP;
- moeda BRL;
- data brasileira;
- cálculo de idade por nascimento.

## Mensagens WhatsApp

Quando gerar mensagens finais para cliente, seguir:

- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

## Checklist para agentes

Antes de implementar, perguntar:

- [ ] Este projeto precisa de AppShell?
- [ ] Precisa de sidebar?
- [ ] Precisa de dark/light mode?
- [ ] Precisa de pré-hidratação?
- [ ] Precisa de toasts?
- [ ] Precisa de StatusPulse?
- [ ] Precisa de links compartilhados?
- [ ] Precisa de upload/download?
- [ ] Precisa de preview de PDF/imagem?
- [ ] Precisa de chave NF ou copiar código?
- [ ] Precisa de timeline para cliente?
- [ ] Precisa de API configurável pelo front?
- [ ] Precisa de painel de status de ambiente?
- [ ] Precisa de tracking events?
- [ ] Precisa de storage cleanup?
