# Frontend Security

Este documento define o padrão de segurança de frontend para projetos derivados da Project Base.

O objetivo é evitar vazamento de dados, exposição de código sensível, uso incorreto de variáveis públicas, cache indevido e proteção falsa baseada apenas na interface.

## Regra principal

O frontend nunca deve ser tratado como lugar seguro para segredo, permissão ou regra crítica.

Tudo que roda no navegador pode ser inspecionado, manipulado, copiado ou chamado diretamente.

## O que nunca deve ficar no frontend

Nunca colocar no frontend:

- API key privada;
- service role;
- token secreto;
- webhook secret;
- client secret OAuth;
- chave de pagamento;
- token de WhatsApp;
- credencial de banco;
- regras de permissão críticas;
- lógica que libera plano pago sem validação no backend;
- dados sensíveis que o usuário não deveria acessar.

## Variáveis públicas

Em Next.js, variáveis com `NEXT_PUBLIC_` podem ir para o navegador.

Em Vite, variáveis com `VITE_` podem ir para o navegador.

Regra:

- `NEXT_PUBLIC_` e `VITE_` são apenas para dados realmente públicos;
- nunca usar esses prefixos em segredo;
- se uma variável controla acesso, pagamento, permissão ou integração privada, ela deve ficar apenas no servidor.

Exemplos permitidos:

- URL pública do app;
- URL pública do Supabase;
- anon key pública, quando RLS estiver correta;
- flag visual não sensível.

Exemplos proibidos:

- service role;
- API key privada;
- webhook secret;
- token de pagamento;
- client secret;
- token de WhatsApp.

## Vercel e variáveis de produção

Variáveis reais de produção devem ser configuradas no painel da Vercel ou no provedor de deploy.

Não colocar chaves reais no código.

Não colocar chaves reais no README.

Não colocar chaves reais em `.env.example`.

Não colocar chaves reais em prints.

Arquivos versionados devem conter apenas placeholders e instruções.

## Source maps

Source maps podem ajudar debug, mas também podem expor estrutura e nomes do código em produção.

Regra padrão:

- não expor source maps públicos em produção sem decisão consciente;
- em Next.js, manter `productionBrowserSourceMaps` desativado por padrão;
- em Vite, manter `build.sourcemap = false` em produção por padrão;
- se usar Sentry ou ferramenta de monitoramento, preferir upload privado dos source maps para a ferramenta, sem deixá-los públicos.

## LocalStorage

Não salvar dados sensíveis em `localStorage`.

`localStorage` persiste mesmo após fechar o navegador e pode ser lido por scripts no frontend.

Pode usar `localStorage` para:

- tema;
- sidebar aberta/fechada;
- preferências visuais;
- filtros não sensíveis;
- estado leve não crítico.

Não usar `localStorage` para:

- token sensível;
- refresh token;
- API key;
- dados financeiros;
- dados pessoais sensíveis;
- permissões;
- plano pago;
- dados internos;
- payload privado.

## SessionStorage

`sessionStorage` limpa ao fechar a aba, mas também não deve ser tratado como cofre.

Pode ser usado para estado temporário e não sensível.

Para autenticação real, preferir mecanismos seguros como sessão no servidor, cookies httpOnly quando aplicável e validação no backend.

## Cache do navegador

Não assumir que dado carregado no frontend desaparece sozinho.

Evitar cachear dados sensíveis.

Em rotas privadas, considerar:

- `no-store`;
- validação no servidor;
- limpar estado ao logout;
- invalidar sessão;
- evitar persistência local indevida.

## SaaS pago e acesso indevido

Nunca proteger funcionalidade paga apenas escondendo botão no frontend.

Nunca confiar apenas em rota protegida no client.

O backend precisa validar:

- usuário;
- sessão;
- plano;
- assinatura;
- permissão;
- status de pagamento;
- organização/workspace;
- escopo do recurso.

Exemplos de proteção falsa:

- esconder botão de recurso premium;
- bloquear tela só com estado React;
- confiar em valor vindo do localStorage;
- confiar em `isPremium` calculado só no frontend;
- carregar todos os dados e esconder parte na UI.

Proteção correta:

- API valida permissão;
- banco/RLS valida acesso;
- backend valida plano;
- frontend mostra apenas o que foi autorizado.

## DevTools

O usuário pode abrir DevTools, ver requisições, payloads, código carregado, localStorage, sessionStorage, cookies não httpOnly e chamadas de API.

Por isso:

- não enviar dado que o usuário não pode ver;
- não depender de esconder no frontend;
- não deixar endpoints retornarem dados excessivos;
- não guardar segredo no navegador.

## Logout

Ao fazer logout:

- limpar estados sensíveis em memória;
- limpar storage não sensível relacionado à sessão, se usado;
- invalidar sessão no backend;
- redirecionar para tela segura;
- evitar mostrar dados antigos depois do logout.

## Checklist

- [ ] Nenhum segredo usa `NEXT_PUBLIC_`?
- [ ] Nenhum segredo usa `VITE_`?
- [ ] Variáveis reais estão na Vercel/provedor, não no código?
- [ ] `.env` e `.env.local` estão no `.gitignore`?
- [ ] Source maps públicos estão desativados em produção?
- [ ] `localStorage` não guarda dado sensível?
- [ ] `sessionStorage` não guarda segredo?
- [ ] Logout limpa estado local relevante?
- [ ] APIs validam permissão no backend?
- [ ] Plano pago é validado no backend?
- [ ] O frontend não recebe dados que o usuário não pode ver?
- [ ] Dados privados usam `no-store` ou estratégia segura de cache quando necessário?
