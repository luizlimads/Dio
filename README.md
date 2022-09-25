# Dio

**Repositório de bootcamps**

Repositorio para agrupar o conhecimento junto com as atividades propostas dos bootcamps

Commits convencionados para facilitar o posterior entendimento

!<Ngreen>type</Ngreen>(?scope): !subject

<Tgreen>Type</Tgreen>

**_docs:_** alteração na documentação do repositorio

**_style:_** alguma mudança de estilo no codigo/projeto

**_feat:_** subir nova atividade handsOn do bootcamp

<style>
Ngreen { color: green}
Tgreen { color: green ;font-size:20px}
yellow { color: yellow }
</style>

Banco de dados Relacional (SQL):

Um Sistema Gerenciador de Banco de Dados Relacional (SGBDR) é um software que controla o armazenamento, recuperação, exclusão, segurança e integridade dos dados em um banco de dados. Um banco de dados relacional armazena dados em tabelas. Tabelas são organizadas em colunas, e cada coluna armazena um tipo de dados (inteiro, números reais, strings de caracteres, data, etc.). Os dados de uma simples “instância” de uma tabela são armazenados como uma linha.

Tabelas tipicamente possuem chaves, uma ou mais colunas que unicamente identificam uma linha na tabela. Para melhorar o tempo de acesso aos dados de uma tabela, são definidos índices. Um índice provê uma forma rápida para buscar dados em uma ou mais colunas em uma tabela, da mesma forma que o índice de um livro permite que nós encontremos uma informação específica rapidamente.

O uso mais comum de SGBDRs é para implementar funcionalidades simples do tipo CRUD (do inglês Create, Read, Update e Delete – que significa as operações de Inserção, Leitura, Atualização e Exclusão de dados). A forma mais fácil de manipular um banco de dados relacional é submeter declarações escritas na linguagem SQL a ele.

Funcionalidades:

Armazenamento de Objeto

Implementar comportamento no banco de dados

Controle de concorrência

Controle de Transação

Forçar integridade referencial

Banco de dados Não Relacional (NoSQL):

Um banco de dados não relacional é um banco de dados que não usa o esquema de tabela de linhas e colunas encontrado na maioria dos sistemas de banco de dados tradicionais. Em vez disso, os bancos de dados não relacionais usam um modelo de armazenamento otimizado para os requisitos específicos do tipo de dados que está sendo armazenado. Por exemplo, os dados podem ser armazenados como pares chave/valor simples, como documentos JSON ou como um gráfico que consiste em bordas e vértices.

O que esses armazenamentos de dados têm em comum é que eles não usam um modelo relacional. Além disso, eles tendem a ser mais específicos no tipo de dados ao qual dão suporte e no modo como os dados podem ser consultados. Por exemplo, os armazenamentos de dados de série temporal são otimizados para consultas em sequências de dados baseadas em tempo. No entanto, os armazenamentos de dados de grafo são otimizados para explorar as relações ponderadas entre entidades.

Principais categorias de banco de dados não relacional (NoSQL):

Armazenamentos de dados de documentos (Principal: MongoDB)

Armazenamentos de dados de colunas (Principal: Cassandra)

Armazenamentos de dados de chave/valor (Principal: Redis)

Armazenamentos de dados de grafos (Principal: Neo4j)

Principais benefícios:

Mais escalabilidade (horizontal)

Melhor performance em queries

Flexibilidade para manipular dados que podem apresentar mudanças em seu formato

SQL e NoSQL

Ambos podem ser usados juntos em um projeto, inclusive a definição mais utilizada para NoSQL atualmente é Not only SQL — não apenas SQL.

Quando juntos, as informações que exigem maior integridade como dados para transações financeiras, por exemplo, são manipuladas em bancos RGBDS.

Já as informações que são geradas como maior velocidade e que serão usadas para análises em Big Data — aplicações em internet das coisas, análises de tendências em redes sociais — são armazenadas em bancos NoSQL.

Bases de dados NoSQL trazem muitos benefícios para uma aplicação. Facilitam a escalabilidade, oferecem flexibilidade para alterações no formato dos dados e tornam análises e buscas de dados muito mais eficientes.
