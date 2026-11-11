# 💜 Destiny — Banco de Dados

## 1. Sobre o projeto

O **Destiny** é um aplicativo de relacionamento que permite aos usuários criar perfis, adicionar interesses, definir preferências e conhecer outras pessoas.

O banco de dados foi desenvolvido em MySQL com o objetivo de armazenar e organizar as informações necessárias para o funcionamento do aplicativo.

## 2. Contextualização

Aplicativos de relacionamento precisam armazenar diversas informações, como dados dos usuários, perfis, fotografias, interesses, preferências e mensagens.

Sem um banco de dados relacional, essas informações poderiam ficar desorganizadas, duplicadas e difíceis de consultar, prejudicando o funcionamento do sistema.

Por isso, o Destiny utiliza um banco de dados relacional para manter as informações organizadas e estabelecer relações entre os dados.

## 3. Objetivos do banco de dados

- Armazenar os dados dos usuários.
- Permitir a criação e personalização de perfis.
- Registrar interesses e preferências.
- Armazenar fotografias dos perfis.
- Registrar curtidas e outras interações.
- Gerenciar matches entre usuários.
- Armazenar mensagens das conversas.
- Registrar bloqueios e denúncias.

## 4. Tecnologias utilizadas

- **MySQL:** Sistema de gerenciamento do banco de dados.
- **MySQL Workbench:** Ferramenta utilizada para criação e gerenciamento das tabelas.
- **SQL:** Linguagem utilizada para criar e manipular os dados.

## 5. Estrutura do banco de dados

O banco de dados possui 16 tabelas, cada uma responsável por armazenar um conjunto específico de informações.

| Tabela | Funcionalidade |
|---|---|
| `usuarios` | Armazena os dados de cadastro e acesso. |
| `perfil` | Armazena as informações pessoais dos usuários. |
| `interesses` | Mantém a lista de interesses disponíveis. |
| `perfilinteresse` | Relaciona os perfis aos seus interesses. |
| `perfilorientacaosexual` | Armazena as orientações sexuais dos perfis. |
| `preferencia` | Armazena os critérios de busca dos usuários. |
| `preferenciagenero` | Armazena os gêneros selecionados nas preferências. |
| `preferenciasigno` | Armazena os signos selecionados. |
| `preferenciaescolaridade` | Armazena as escolaridades desejadas. |
| `preferenciaestadoprofissional` | Armazena as situações profissionais desejadas. |
| `fotos` | Armazena os endereços das fotografias dos perfis. |
| `bloqueios` | Registra os bloqueios entre usuários. |
| `interacoes` | Registra curtidas e outras interações. |
| `matches` | Registra as conexões entre dois perfis. |
| `mensagens` | Armazena as mensagens das conversas. |
| `denuncias` | Registra denúncias realizadas pelos usuários. |

## 6. Relacionamentos

O banco utiliza chaves primárias (PK) e chaves estrangeiras (FK) para relacionar as tabelas.

Principais relacionamentos:

- **Usuarios e Perfil:** cada usuário possui um perfil.
- **Perfil e Fotos:** um perfil pode possuir várias fotos.
- **Perfil e Interesses:** um perfil pode ter vários interesses, e um interesse pode pertencer a vários perfis.
- **Perfil e Preferência:** cada perfil possui uma configuração de preferências.
- **Preferência e suas tabelas auxiliares:** permitem armazenar várias opções de gênero, signo, escolaridade e situação profissional.
- **Perfil e Bloqueios:** registra quem bloqueou e quem foi bloqueado.
- **Perfil e Interações:** registra as ações realizadas entre perfis.
- **Perfil e Matches:** registra as conexões entre dois perfis.
- **Matches e Mensagens:** um match pode possuir várias mensagens.
- **Perfil e Denúncias:** identifica quem realizou e quem recebeu uma denúncia.

## 7. Organização e normalização

O banco foi dividido em tabelas para evitar a repetição desnecessária de informações e facilitar a organização dos dados.

Foram utilizados conceitos de normalização:

- **1FN (Primeira Forma Normal):** cada campo armazena um único valor, sem listas de informações na mesma coluna.
- **2FN (Segunda Forma Normal):** os atributos devem depender da chave primária completa.
- **3FN (Terceira Forma Normal):** os atributos não devem depender de outros atributos que não sejam chave.

As tabelas auxiliares, como `perfilinteresse` e `preferenciagenero`, ajudam a organizar os relacionamentos de muitos para muitos.

## 8. Criação do banco de dados

Para criar o banco no MySQL Workbench, execute:

```sql
CREATE DATABASE IF NOT EXISTS destiny;

USE destiny;
```

Em seguida, execute o script SQL contendo a criação das 16 tabelas e seus relacionamentos.

Para verificar se as tabelas foram criadas corretamente:

```sql
SHOW TABLES;
```

Para consultar a estrutura de uma tabela:

```sql
DESCRIBE usuarios;
```

## 9. Considerações finais

O desenvolvimento do banco de dados Destiny permite aplicar na prática os conceitos de banco de dados relacionais, criação de tabelas, tipos de dados, chaves primárias, chaves estrangeiras e normalização.

A estrutura foi organizada para facilitar o armazenamento, a consulta e o gerenciamento das informações necessárias para o funcionamento do aplicativo.

---

**Projeto Destiny — Banco de Dados**

Desenvolvido como projeto de estudo de Banco de Dados.
