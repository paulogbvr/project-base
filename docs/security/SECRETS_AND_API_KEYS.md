# Secrets and API Keys

Este documento define o padrão para lidar com chaves de API, tokens, segredos, credenciais e integrações externas.

## Regra principal

Segredo nunca deve ser exposto no frontend.

Segredo nunca deve ser commitado.

Segredo nunca deve aparecer em print, log público, mensagem de erro pública ou metadata.

## Tipos de credenciais

### Pública controlada

Pode ser usada no frontend, desde que o sistema esteja protegido corretamente.

Exemplos:

- Supabase anon key
- URL pública do app
- URL pública do Supabase

### Secreta

Nunca pode ir para o frontend.

Exemplos:

- Service role key
- API key privada
- Webhook secret
- Token de WhatsApp
- Client secret OAuth
- Chave de pagamento
- Secret de assinatura

### Configurável pelo usuário

Chave fornecida por um cliente/usuário dentro de um painel.

Exemplos:

- API key de ferramenta externa
- token de integração
- credenciais de serviço de terceiros

## Projeto próprio/admin

Quando o sistema é usado apenas pelo próprio dono/admin, pode ser aceitável configurar integrações via `.env.local` durante o desenvolvimento.

Mesmo assim:

- não commitar;
- não expor no frontend;
- não logar;
- não colar em chat sem necessidade;
- documentar no `.env.example`.

## Sistema para terceiros

Quando o sistema será usado por outras pessoas, clientes ou empresas, deve existir opção segura de configuração pelo painel quando fizer sentido.

Fluxo recomendado:

1. Usuário abre painel seguro de integrações.
2. Campo de chave aparece mascarado.
3. Usuário cola a chave.
4. Sistema valida formato básico.
5. Sistema salva no backend.
6. Sistema testa conexão.
7. Interface mostra status com pulse.
8. Depois de salva, a chave não deve ser exibida completa sem necessidade.

## Interface recomendada

Campos e ações:

- campo mascarado;
- botão visualizar;
- botão copiar quando permitido;
- botão testar conexão;
- botão substituir chave;
- botão remover/desconectar;
- status visual;
- data do último teste;
- mensagem clara de erro.

Exemplo visual:

API Key  
••••••••••••••••••••1234

Ações:

- Visualizar
- Testar conexão
- Substituir
- Remover

## Sobre visualizar/copiar chave

Por segurança, nem todo sistema deve permitir ver ou copiar a chave completa depois de salva.

Opções aceitáveis:

### Mais seguro

Mostrar apenas últimos 4 caracteres e permitir substituir.

### Intermediário

Permitir visualizar/copiar apenas para usuários autorizados, com confirmação.

### Menos recomendado

Retornar chave completa para o frontend sempre que abrir a página.

## Armazenamento

Quando houver backend e banco:

- preferir criptografia em repouso quando possível;
- limitar acesso por permissão;
- registrar alterações em audit log;
- não retornar segredo completo em listagens;
- separar credenciais por usuário/organização/projeto;
- permitir rotação de chave.

## Logs e erros

Nunca logar:

- token completo;
- API key completa;
- webhook secret;
- authorization header;
- cookies de sessão;
- dados sensíveis desnecessários.

Mensagens de erro devem ser claras, mas sem vazar segredo.

Exemplo bom:

A conexão falhou. Verifique se a chave está correta e se possui permissão para acessar este recurso.

Exemplo ruim:

A chave sk_live_123456... falhou no endpoint X com token Y.

## Webhooks

Webhooks devem validar assinatura quando a integração oferecer esse recurso.

Regras:

- validar assinatura;
- validar timestamp quando existir;
- usar idempotência;
- evitar processamento duplicado;
- registrar evento recebido;
- não confiar cegamente no payload.

## Checklist

- [ ] Segredos estão fora do frontend?
- [ ] `.env.local` está ignorado?
- [ ] `.env.example` explica as variáveis?
- [ ] Chaves configuráveis pelo painel ficam mascaradas?
- [ ] Existe botão de testar conexão?
- [ ] Existe status visual?
- [ ] A chave não é exibida completa sem necessidade?
- [ ] Erros não vazam segredo?
- [ ] Logs não armazenam tokens completos?
- [ ] Webhooks validam assinatura?
- [ ] Existe forma de substituir/remover credenciais?
