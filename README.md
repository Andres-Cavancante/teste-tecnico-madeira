#### Etapa 1. Criação de um banco e um tabela de acordo com excel em anexo localmente
O SGBD escolhido foi o MySQL com o server da Oracle. O arquivo 'banco-tabela.sql' contém o script sql que cria o banco 'vendas_2020', a tabela 'vendas_janeiro e carrega os dados do arquivo csv na tabela, convertendo valores '' para NULL.

#### Etapa 2. Leitura e tratamento dos dados do banco com python
Nessa etapa, a tabela 'vendas_janeiro' é atribuída a uma variável python no ambiente do Jupyter Notebook (arquivo 'leitura_e_tratamento.ipynb'). Os dados foram analizados, sofreram um processo de limpeza simples e seu comportamento foi explorado através de métodos da biblioteca pandas em função de alguns parâmetros listados. Daí foram extraídos insights e a tabela foi exportada em um arquivo excel (base_tratada.xlsx).

#### Etapa 3. Extrair da base 3 insights que considere relevante para o negócio
Através da análise prévia com o Pandas foi possível extrair os seguintes insights:

- Quanto ao tipo/canal de venda:
  - A receita total de pedidos aprovados foi de 1,79 milhões. Vendas do tipo 1P totalizaram aproximadamente 78% da receita total de pedidos aprovados;
  - A receita adquirida de vendas efetuadas através do canal MadeiraMadeira totaliza 54% da receita total, seguido de Magazine Luíza e B2W com 18% e 14%. Os demais canais constituem os 14% restantes. Já por número de vendas, o canal MadeiraMadeira contabiliza 55% delas;

- Quanto a Região:
  - Com cerca de R$1.200.000, São Paulo foi a região com maior receita (49% da receita total), seguido do Rio de Janeiro, Minas Gerais, Paraná e demais;
  - O Amazonas foi o estado com maior receita média de frete (receita de frete dividivo pelo número de vendas), seguido de Rondônia, Pará e demais;

- Quanto a Categoria:
  - As categorias de produto mais vendidas foram Guarda-Roupas, Escrivaninhas e Painel para TV. Quanto as categorias que apresentaram mais receita média, se destacaram Expositores Refrigerados, Cervejeiras e Freezer.

#### Etapa 4. Utilizar uma ferramenta de visualização a sua escolha para ilustrar seus insights
A ferramenta de visualização de dados escolhida foi o Power BI. No arquivo 'visualizacao_vendas_2020.pbix', as ilustrações estão dividias em duas páginas. Na primeira estão os insights em função do tipo e canal de venda e na segunda estão os insights em função da região e categoria.
