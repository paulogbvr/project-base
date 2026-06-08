# Brazilian Utilities

Este documento define utilitários brasileiros opcionais para projetos derivados da Project Base.

Usar quando o projeto envolver dados do Brasil.

## Quando usar

Considerar estes utilitários se o projeto usar:

- CPF;
- CNPJ;
- telefone;
- CEP;
- moeda BRL;
- endereço brasileiro;
- data de nascimento;
- idade;
- nota fiscal;
- chave de NF;
- PIX;
- documentos de cliente.

## Regra principal

Não validar CPF/CNPJ apenas por regex.

CPF e CNPJ precisam de algoritmo correto de dígitos verificadores.

Regex pode ajudar a formatar ou limpar, mas não substitui validação real.

## CPF

Utilitários recomendados:

- limpar máscara;
- formatar CPF;
- validar CPF;
- bloquear sequências inválidas;
- validar dígitos verificadores.

Exemplos de inválidos:

- `000.000.000-00`
- `111.111.111-11`
- `123.456.789-00`

## CNPJ

Utilitários recomendados:

- limpar máscara;
- formatar CNPJ;
- validar CNPJ;
- bloquear sequências inválidas;
- validar dígitos verificadores.

## CPF/CNPJ em um campo único

Alguns projetos podem usar documento único.

Utilitários possíveis:

- detectar se é CPF ou CNPJ pelo tamanho;
- formatar conforme tipo;
- validar conforme tipo;
- retornar tipo do documento.

## Telefone brasileiro

Utilitários possíveis:

- limpar máscara;
- formatar celular;
- formatar telefone fixo;
- validar tamanho;
- considerar DDD;
- preparar para WhatsApp quando necessário.

## CEP

Utilitários possíveis:

- limpar máscara;
- formatar CEP;
- validar tamanho;
- buscar endereço por API quando necessário;
- tratar erro de CEP não encontrado.

## Moeda BRL

Utilitários possíveis:

- formatar centavos para Real;
- converter Real para centavos;
- input de moeda;
- evitar float para valores financeiros;
- usar integer/decimal adequado no banco.

## Data de nascimento e idade

Quando houver data de nascimento, calcular idade corretamente.

Regras:

- considerar mês e dia;
- não apenas subtrair ano;
- tratar data futura como inválida;
- mostrar idade quando fizer sentido.

Exemplo:

Data de nascimento: 12/03/1998  
Idade: 28 anos

## Datas brasileiras

Utilitários possíveis:

- formatar `dd/MM/yyyy`;
- formatar `dd/MM/yyyy - HH:mm`;
- formatar horário;
- timezone;
- data relativa quando fizer sentido.

## PIX

Se projeto usar Pix, considerar:

- copiar código;
- QR Code;
- status;
- expiração;
- valor em centavos;
- comprovante;
- tracking de pagamento.

## Nota fiscal

Quando usar NF:

- campo para chave;
- botão copiar chave;
- validação básica de tamanho/formato quando possível;
- arquivo PDF/XML;
- status de emissão.

## Onde implementar

Sugestão de estrutura:

src/lib/validators/br-documents.ts
src/lib/formatters/br-documents.ts
src/lib/formatters/currency.ts
src/lib/formatters/phone.ts
src/lib/formatters/cep.ts
src/lib/dates/age.ts

## Checklist

- [ ] Projeto usa CPF?
- [ ] Projeto usa CNPJ?
- [ ] Projeto usa telefone?
- [ ] Projeto usa CEP?
- [ ] Projeto usa BRL?
- [ ] Projeto usa data de nascimento?
- [ ] Projeto precisa calcular idade?
- [ ] Projeto usa NF/chave fiscal?
- [ ] Projeto usa Pix?
- [ ] Validações usam algoritmo correto?
