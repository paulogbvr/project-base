# Shared Link Flow

Este documento define o fluxo padrão para links compartilhados.

## Objetivo

Permitir que alguém acesse uma página específica por link, com segurança e escopo controlado.

Exemplos:

- acompanhamento de projeto;
- pedido;
- proposta;
- pagamento;
- comprovante;
- cardápio;
- mesa;
- atualização para cliente;
- relatório.

## Regra principal

Link compartilhado deve ser fácil de usar, mas difícil de adivinhar.

Usar token seguro.

## Fluxo básico

1. Admin cria recurso.
2. Sistema gera token seguro.
3. Sistema cria link compartilhável.
4. Usuário copia link.
5. Cliente abre link.
6. Backend valida token.
7. Sistema mostra apenas dados permitidos.
8. Acesso pode ser registrado.
9. Link pode ser revogado ou expirado.

## Ações esperadas

- gerar link;
- copiar link;
- abrir link;
- revogar link;
- expirar link;
- recriar token quando necessário;
- registrar abertura;
- mostrar status do link.

## Interface

A UI pode ter:

- botão copiar link;
- botão abrir link;
- botão revogar;
- status ativo/expirado/revogado;
- data de criação;
- último acesso;
- quantidade de acessos;
- mensagem pronta para WhatsApp.

## Mensagem de compartilhamento

Seguir:

- `docs/brand/WHATSAPP_MESSAGE_STYLE.md`

Exemplo:

*→ Link de Acompanhamento!*

> *Projeto: →* Nome do Projeto
> _*Atualizado em 08/06/2026 - 21:40*_

*Você pode acompanhar as atualizações pelo link abaixo:* ↓
https://exemplo.com/share/lk_token

## Segurança

Seguir:

- `docs/security/SHARED_LINK_SECURITY.md`

## Metadata

Seguir:

- `docs/brand/LINK_PREVIEW.md`

Não colocar dados sensíveis em:

- title;
- description;
- preview;
- URL.

## Dados permitidos

Cada projeto deve definir o que o link pode mostrar.

Exemplo de dados permitidos:

- status;
- resumo;
- timeline pública;
- arquivos autorizados;
- próxima etapa;
- informações de contato público.

Exemplo de dados proibidos:

- dados internos;
- segredo;
- custo interno;
- dados de outro cliente;
- chaves;
- observações privadas.

## Estados do link

- ativo;
- expirado;
- revogado;
- inválido;
- bloqueado;
- não encontrado.

## Empty/Error states

Se token for inválido:

Mostrar página amigável.

Se expirou:

Informar que o link não está mais disponível.

Se revogado:

Informar que o acesso foi removido.

Não vazar se o recurso interno existe ou não, quando isso for sensível.

## Tracking events possíveis

- shared_link_created
- shared_link_copied
- shared_link_opened
- shared_link_expired
- shared_link_revoked
- shared_link_blocked

Registrar em:

- `docs/analytics/TRACKING_EVENTS_SELECTED.md`

## Checklist

- [ ] Token seguro gerado?
- [ ] Link copia corretamente?
- [ ] Mensagem de compartilhamento existe?
- [ ] Backend valida token?
- [ ] Dados filtrados por escopo?
- [ ] Link pode expirar?
- [ ] Link pode revogar?
- [ ] Metadata segura?
- [ ] Estados inválido/expirado/revogado tratados?
- [ ] Eventos escolhidos registrados?
