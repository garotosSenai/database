 Destiny — Banco de Dados
📌 Sobre o projeto

O Destiny é um banco de dados desenvolvido para uma plataforma de relacionamentos, com o objetivo de armazenar e gerenciar informações dos usuários, seus perfis, preferências, interesses e interações.

O banco foi estruturado para oferecer suporte às principais funcionalidades de uma aplicação de relacionamentos, como criação de perfis, curtidas, matches, conversas, bloqueios e denúncias.

🛠️ Tecnologias utilizadas
MySQL — Sistema de gerenciamento de banco de dados.
SQL — Linguagem utilizada para criação e manipulação das tabelas.
UTF8MB4 — Codificação de caracteres que permite armazenar acentos, caracteres especiais e emojis.
🗄️ Estrutura do banco de dados

O banco de dados possui 10 tabelas principais:

Tabela	Descrição
usuario	Armazena os dados de cadastro dos usuários, como e-mail, senha, data de nascimento e status da conta.
perfil	Armazena as informações pessoais dos usuários, como nome, bio, localização, gênero, orientação sexual e características.
foto	Armazena as informações das fotos cadastradas na plataforma.
matches	Registra os matches realizados entre dois usuários.
hobby	Armazena os hobbies disponíveis na plataforma, incluindo nome, categoria e descrição.
preferencia_busca	Armazena os filtros de busca definidos pelos usuários, como idade, altura, distância e escolaridade.
bloqueio	Registra os bloqueios realizados entre usuários.
interacao	Registra as interações entre usuários, identificando origem, destino e tipo de interação.
mensagem	Armazena as mensagens trocadas entre usuários que possuem um match.
denuncia	Registra denúncias realizadas pelos usuários, incluindo motivo, descrição e status.
🔗 Relacionamentos

O banco utiliza chaves primárias (PRIMARY KEY) e chaves estrange
