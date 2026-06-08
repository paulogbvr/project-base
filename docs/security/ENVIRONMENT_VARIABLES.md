
# Environment Variables

## Regras

- Nunca commitar `.env` ou `.env.local`.
- Nunca expor segredo com prefixo `NEXT_PUBLIC_`.
- Documentar variáveis em `.env.example`.
- Usar `.env.local.example` para facilitar configuração local.
- Nunca enviar chaves reais em prints, commits ou chats públicos.

## Status visual

Projetos com integrações devem ter painel de status:

- Verde: configurado
- Amarelo: pendente
- Vermelho: erro
- Cinza: não usado
