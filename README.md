# Desafio - Cientista de Dados

##  Objetivo
Neste desafio tive que analisar, estruturar e transformar dados em formato raw fornecidos no arquivo `dados_ficha_a_desafio.csv`. As primeiras 1000 linhas dos dados já tratados estão no arquivo `dados_tratados.csv`, eles foram retirados diretamente da BigQuery.

## Descrição
### Exploração e apontamento de problemas 
1. Explorar e analisar cada um dos campos disponíveis entendendo o tipo de preenchimento que possuem.
2. Dado o contexto de ingestão e criação da informação, trazer características que chamam atenção e apontar problemas contidos no dataset.
### Tratamento de dados com DBT
3. Criar um modelo DBT que, a partir da tabela dada e os dos apontamentos de problemas feitos, padronizar os dados criando uma tabela tratada.

### Tecnologias Relacionadas
* Python
* SQL
* DBT

### Configuração da autenticação
1. Obtenha o arquivo de credenciais do Google Cloud `dbt-project-451513-7a4e50eb1790.json`.
2. Copie o arquivo `./profiles.yml` para o diretório que você preferir.
3. Na cópia do arquivo `profiles.yml` altere o path da chave `keyfile` no profile `dev` para onde está armazenada suas credenciais do Google Cloud.
4. Crie uma variável de ambiente `DBT_PROFILES_DIR` apontando para o diretório onde está a cópia do `profiles.yml` 

    **ex.** DBT_PROFILES_DIR='/Users/foo/.credentials/'

## Executando com `DBT`:
1. Entre na pasta `dbt_project`;
2. Execute o comando `dbt run` para a construção dos modelos;
3. Execute o comando `dbt test` para testar os modelos;
   - É possível também no `run` ou no `test`, utilize `--select` para filtrar modelos

      **ex.** `dbt run --select <NOME_MODELO>`