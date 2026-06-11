# Environment Variables

Este documento define o padrão de variáveis de ambiente da Project Base.

O objetivo é evitar vazamento de segredos, facilitar configuração local e permitir que agentes e desenvolvedores entendam rapidamente o que está configurado, pendente ou com erro.

## Regra principal

Nunca commitar variáveis reais.

Nunca expor segredos no frontend.

Nunca usar `NEXT_PUBLIC_` em variável secreta.

## Arquivos esperados

### `.env.example`

Arquivo versionado com nomes das variáveis e comentários explicativos.

Deve conter apenas exemplos, placeholders e instruções.

### `.env.local.example`

Arquivo versionado com base para desenvolvimento local.

O usuário pode copiar para `.env.local`.

### `.env.local`

Arquivo real local.

Não deve ser versionado.

Deve estar bloqueado no `.gitignore`.

### `.env`

Arquivo real de ambiente.

Não deve ser versionado.

Deve estar bloqueado no `.gitignore`.

## Comando recomendado para criar ambiente local

cp .env.local.example .env.local

Depois preencher `.env.local` com os valores reais.

## Prefixo `NEXT_PUBLIC_`

Variáveis com `NEXT_PUBLIC_` podem ser expostas ao navegador.

Usar apenas para dados públicos.

Exemplos permitidos:

- `NEXT_PUBLIC_APP_URL`
- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`

Mesmo quando a chave é pública, a segurança deve depender de RLS, backend e permissões corretas.

## Variáveis secretas

Variáveis secretas nunca devem ter `NEXT_PUBLIC_`.

Exemplos:

- `SUPABASE_SERVICE_ROLE_KEY`
- `ABACATEPAY_API_KEY`
- `ABACATEPAY_WEBHOOK_SECRET`
- `WHATSAPP_API_TOKEN`
- `GOOGLE_CLIENT_SECRET`

## `.gitignore` obrigatório

O `.gitignore` deve bloquear:

- `.env`
- `.env.local`
- `.env.*.local`
- arquivos `.pem`
- arquivos `.key`
- arquivos de certificado ou credenciais

## Organização recomendada do `.env.example`

Agrupar por seção:

- App
- Supabase
- Auth
- Storage
- Payments
- WhatsApp
- Analytics
- External APIs
- Feature flags

Cada variável deve ter comentário curto dizendo:

- para que serve;
- se é pública ou secreta;
- se pode ir para frontend;
- onde encontrar/preencher.

## Painel de status de ambiente

Projetos com integrações devem ter uma área visual de status.

Exemplos de componentes:

- `EnvironmentStatusPanel`
- `IntegrationStatusCard`
- `StatusPulse`

Estados oficiais:

- verde / `success` / `ok` → configurado e funcionando;
- amarelo / `warning` / `pending` → pendente, incompleto ou não testado;
- vermelho / `error` → erro, inválido ou falha de conexão;
- cinza / `neutral` → não usado ou desativado.

## O que validar no status

Para cada integração crítica, validar:

- variável obrigatória preenchida;
- formato básico correto;
- conexão testável quando possível;
- último teste realizado;
- mensagem clara em caso de erro;
- orientação do que falta preencher.

## Configuração via front

Em sistemas SaaS ou sistemas que serão usados por terceiros, pode ser necessário permitir configurar APIs pelo painel.

Quando isso existir:

- campos devem ser mascarados;
- deve existir botão para visualizar quando permitido;
- deve existir botão para copiar quando permitido;
- deve existir botão para testar conexão;
- deve existir status visual;
- segredo deve ser salvo de forma segura no backend;
- frontend não deve receber segredo completo sem necessidade.

## Regra para ChatGPT, Claude, Codex e outros agentes

Agentes nunca devem pedir para o usuário colar chaves reais em locais inseguros.

Se o usuário precisar de ajuda com variáveis, pedir para enviar apenas nomes das variáveis, prints sem valores ou placeholders.

<!-- PUBLIC_ENV_PREFIXES_START -->
## Variáveis públicas no Next.js e Vite

Em projetos frontend, alguns prefixos tornam variáveis acessíveis no navegador.

No Next.js:

```txt
NEXT_PUBLIC_
```

No Vite:

```txt
VITE_
```

Esses prefixos não significam segurança. Eles significam o oposto: a variável pode ser enviada para o frontend.

## Regra obrigatória

Nunca usar `NEXT_PUBLIC_` ou `VITE_` em segredo.

Não usar esses prefixos para:

- API key privada;
- service role;
- token de WhatsApp;
- token de pagamento;
- webhook secret;
- client secret;
- credencial de banco;
- segredo de autenticação;
- qualquer chave que gere custo, acesso ou permissão.

## Variáveis reais de produção

Variáveis reais devem ser configuradas no provedor de deploy, como Vercel, Render, Railway, Fly, Netlify ou outro.

No repositório, manter apenas:

- `.env.example`;
- `.env.local.example`;
- placeholders;
- instruções sem chaves reais.

Exemplo correto:

```txt
SUPABASE_SERVICE_ROLE_KEY=replace-with-your-service-role-key
```

Exemplo proibido:

```txt
SUPABASE_SERVICE_ROLE_KEY=chave-real-aqui
```

## Vercel

Ao usar Vercel:

- configurar variáveis no painel do projeto;
- separar Production, Preview e Development quando necessário;
- não colar chaves reais em arquivos versionados;
- revisar se alguma chave foi marcada como pública por engano;
- redeployar após alterar variáveis importantes.

## Checklist

- [ ] Nenhum segredo usa `NEXT_PUBLIC_`
- [ ] Nenhum segredo usa `VITE_`
- [ ] Variáveis reais estão no provedor de deploy
- [ ] `.env.example` usa placeholders
- [ ] `.env.local.example` usa placeholders
- [ ] `.env` está no `.gitignore`
- [ ] `.env.local` está no `.gitignore`
- [ ] Variáveis de Preview/Production foram revisadas
<!-- PUBLIC_ENV_PREFIXES_END -->

## Checklist

- [ ] `.env.example` existe?
- [ ] `.env.local.example` existe?
- [ ] `.env.local` está no `.gitignore`?
- [ ] Variáveis secretas não usam `NEXT_PUBLIC_`?
- [ ] O README ou START_HERE explica como configurar?
- [ ] Existe status visual para integrações importantes?
- [ ] APIs configuráveis pelo front são salvas com segurança?
- [ ] O frontend não expõe segredos?
