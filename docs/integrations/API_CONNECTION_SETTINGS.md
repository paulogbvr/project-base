# API Connection Settings

Este documento define o padrão para telas de configuração de APIs e integrações.

## Quando usar

Usar quando o sistema permitir que um usuário/admin conecte serviços externos pelo front.

Exemplos:

- WhatsApp API;
- pagamentos;
- Supabase/configuração externa;
- Google;
- CRM;
- ERP;
- frete;
- emissão fiscal;
- automações;
- ferramentas de IA.

## Regra principal

Facilitar configuração sem expor segredos.

O usuário pode configurar pelo painel, mas a chave deve ser salva de forma segura no backend.

## Diferença entre projeto próprio e SaaS

### Projeto próprio/admin

Pode configurar via `.env.local` ou variáveis de produção.

Exemplo:

- WorkLog próprio;
- sistema interno;
- dashboard privado.

### SaaS ou sistema para terceiros

Precisa de tela segura para o usuário conectar sua própria API.

Exemplo:

- cliente conecta WhatsApp;
- restaurante conecta pagamento;
- lojista conecta ERP;
- empresa conecta token externo.

## Interface recomendada

Cada integração deve mostrar:

- nome da integração;
- descrição curta;
- status visual;
- campos necessários;
- botão salvar;
- botão testar conexão;
- botão desconectar;
- data do último teste;
- mensagem clara de erro.

## Campo de API Key

Padrão:

- input mascarado;
- últimos 4 caracteres visíveis quando salvo;
- botão visualizar quando permitido;
- botão copiar quando permitido;
- botão substituir;
- botão remover;
- alerta de segurança.

## Status visual

Usar:

- `StatusPulse`
- `IntegrationStatusCard`
- `EnvironmentStatusPanel`

Estados:

- `success` / verde → conectado;
- `warning` / amarelo → pendente ou não testado;
- `error` / vermelho → erro;
- `neutral` / cinza → não usado.

## Testar conexão

O botão de teste deve:

1. Validar campos obrigatórios.
2. Chamar backend.
3. Backend testa com serviço externo.
4. Backend retorna status seguro.
5. UI mostra resultado.
6. Erro não expõe segredo.

## Armazenamento

Segredos devem ser salvos:

- no backend;
- em tabela segura;
- criptografados quando possível;
- com acesso restrito;
- sem retornar valor completo por padrão.

## Audit log

Registrar quando:

- integração foi conectada;
- chave foi substituída;
- chave foi removida;
- teste falhou várias vezes;
- permissão foi alterada.

Não registrar chave completa.

## Validação

Validar:

- formato;
- campos obrigatórios;
- permissões;
- escopo do usuário;
- conexão real quando possível.

## Checklist

- [ ] Integração tem status visual?
- [ ] Campos são mascarados?
- [ ] Existe botão testar conexão?
- [ ] Chave não é exposta completa sem necessidade?
- [ ] Segredo é salvo no backend?
- [ ] Erros são seguros?
- [ ] Existe opção desconectar/remover?
- [ ] Audit log foi considerado?
- [ ] `.env.example` foi atualizado se necessário?
