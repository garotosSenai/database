 Destiny — Banco de Dados
 
📌 Sobre o projeto

O Destiny é um banco de dados relacional desenvolvido para uma plataforma de relacionamentos.

Seu objetivo é armazenar e organizar informações dos usuários, perfis, preferências, interações e conexões realizadas na plataforma.

A estrutura contempla funcionalidades como cadastro, personalização de perfis, busca por compatibilidade, matches, mensagens, bloqueios e denúncias.

🛠️ Tecnologias utilizadas

MySQL: gerenciamento do banco de dados.

SQL: criação e manipulação das tabelas.

InnoDB: mecanismo de armazenamento com suporte a chaves estrangeiras.

UTF8MB4: suporte a acentos, caracteres especiais e emojis.

🗄️ Estrutura do banco de dados

O banco destiny possui 10 tabelas, organizadas de acordo com suas responsabilidades.

1. usuario

Armazena os dados de cadastro e identificação dos usuários.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_usuario</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>ativo</code></td><td>BIT(1)</td><td>Status da conta.</td></tr>
<tr><td><code>criado_em</code></td><td>DATETIME(6)</td><td>Data de criação.</td></tr>
<tr><td><code>data_nascimento</code></td><td>DATE</td><td>Data de nascimento.</td></tr>
<tr><td><code>email</code></td><td>VARCHAR(255)</td><td>E-mail único do usuário.</td></tr>
<tr><td><code>senha</code></td><td>VARCHAR(255)</td><td>Senha cadastrada.</td></tr>
</tbody>
</table>

2. perfil

Armazena as informações pessoais e características exibidas no perfil.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_perfil</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>altura_cm</code></td><td>INT</td><td>Altura em centímetros.</td></tr>
<tr><td><code>bio</code></td><td>VARCHAR(255)</td><td>Biografia do usuário.</td></tr>
<tr><td><code>escolaridade</code></td><td>VARCHAR(255)</td><td>Nível de escolaridade.</td></tr>
<tr><td><code>estado_profissional</code></td><td>VARCHAR(255)</td><td>Situação profissional.</td></tr>
<tr><td><code>genero</code></td><td>VARCHAR(255)</td><td>Gênero informado.</td></tr>
<tr><td><code>id_usuario</code></td><td>BIGINT</td><td>Usuário associado (FK e UNIQUE).</td></tr>
<tr><td><code>identidade_genero</code></td><td>VARCHAR(255)</td><td>Identidade de gênero.</td></tr>
<tr><td><code>cidade</code></td><td>VARCHAR(255)</td><td>Cidade de residência.</td></tr>
<tr><td><code>estado</code></td><td>VARCHAR(255)</td><td>Estado de residência.</td></tr>
<tr><td><code>latitude</code></td><td>DOUBLE</td><td>Coordenada de latitude.</td></tr>
<tr><td><code>longitude</code></td><td>DOUBLE</td><td>Coordenada de longitude.</td></tr>
<tr><td><code>mostrar_identidade_genero</code></td><td>BIT(1)</td><td>Exibição da identidade de gênero.</td></tr>
<tr><td><code>mostrar_orientacao</code></td><td>BIT(1)</td><td>Exibição da orientação sexual.</td></tr>
<tr><td><code>nome</code></td><td>VARCHAR(255)</td><td>Nome do perfil.</td></tr>
<tr><td><code>orientacao_sexual</code></td><td>VARCHAR(255)</td><td>Orientação sexual.</td></tr>
<tr><td><code>signo</code></td><td>VARCHAR(255)</td><td>Signo do usuário.</td></tr>
<tr><td><code>tipo_relacionamento</code></td><td>VARCHAR(255)</td><td>Relacionamento desejado.</td></tr>
</tbody>
</table>

3. foto

Armazena os endereços e informações das fotografias.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_foto</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>criado_em</code></td><td>DATETIME(6)</td><td>Data de criação.</td></tr>
<tr><td><code>ordem</code></td><td>INT</td><td>Ordem de exibição.</td></tr>
<tr><td><code>url</code></td><td>VARCHAR(255)</td><td>Endereço da imagem.</td></tr>
</tbody>
</table>

4. matches

Registra as conexões estabelecidas entre dois usuários.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_match</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>ativo</code></td><td>BIT(1)</td><td>Status do match.</td></tr>
<tr><td><code>criado_em</code></td><td>DATETIME(6)</td><td>Data de criação.</td></tr>
<tr><td><code>id_usuario1</code></td><td>BIGINT</td><td>Primeiro usuário (FK).</td></tr>
<tr><td><code>id_usuario2</code></td><td>BIGINT</td><td>Segundo usuário (FK).</td></tr>
</tbody>
</table>

5. hobby

Armazena os hobbies disponíveis na plataforma.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_hobby</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>categoria</code></td><td>VARCHAR(255)</td><td>Categoria do hobby.</td></tr>
<tr><td><code>descricao</code></td><td>VARCHAR(255)</td><td>Descrição do hobby.</td></tr>
<tr><td><code>nome</code></td><td>VARCHAR(255)</td><td>Nome do hobby.</td></tr>
</tbody>
</table>

6. preferencia_busca

Armazena os critérios utilizados pelos usuários para encontrar possíveis conexões.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_preferencia</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>altura_maxima_cm</code></td><td>INT</td><td>Altura máxima desejada.</td></tr>
<tr><td><code>altura_minima_cm</code></td><td>INT</td><td>Altura mínima desejada.</td></tr>
<tr><td><code>distancia_maxima_km</code></td><td>DOUBLE</td><td>Distância máxima desejada.</td></tr>
<tr><td><code>escolaridade</code></td><td>VARCHAR(255)</td><td>Escolaridade desejada.</td></tr>
<tr><td><code>estado_profissional</code></td><td>VARCHAR(255)</td><td>Situação profissional desejada.</td></tr>
<tr><td><code>id_usuario</code></td><td>BIGINT</td><td>Usuário associado (FK).</td></tr>
<tr><td><code>idade_maxima</code></td><td>INT</td><td>Idade máxima desejada.</td></tr>
<tr><td><code>idade_minima</code></td><td>INT</td><td>Idade mínima desejada.</td></tr>
<tr><td><code>signo</code></td><td>VARCHAR(255)</td><td>Signo desejado.</td></tr>
<tr><td><code>tipo_relacionamento</code></td><td>VARCHAR(255)</td><td>Tipo de relacionamento desejado.</td></tr>
</tbody>
</table>

7. bloqueio

Registra os bloqueios realizados entre os usuários.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_bloqueio</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>criado_em</code></td><td>DATETIME(6)</td><td>Data do bloqueio.</td></tr>
<tr><td><code>id_bloqueado</code></td><td>BIGINT</td><td>Usuário bloqueado (FK).</td></tr>
<tr><td><code>id_bloqueador</code></td><td>BIGINT</td><td>Usuário que realizou o bloqueio (FK).</td></tr>
</tbody>
</table>

8. interacao

Registra as interações realizadas entre os usuários.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_interacao</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>criado_em</code></td><td>DATETIME(6)</td><td>Data da interação.</td></tr>
<tr><td><code>id_destino</code></td><td>BIGINT</td><td>Usuário que recebeu a interação (FK).</td></tr>
<tr><td><code>id_origem</code></td><td>BIGINT</td><td>Usuário que realizou a interação (FK).</td></tr>
<tr><td><code>tipo</code></td><td>VARCHAR(50)</td><td>Tipo de interação.</td></tr>
</tbody>
</table>

9. mensagem

Armazena as mensagens trocadas entre usuários associados a um match.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_mensagem</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>conteudo</code></td><td>VARCHAR(255)</td><td>Conteúdo da mensagem.</td></tr>
<tr><td><code>enviada_em</code></td><td>DATETIME(6)</td><td>Data de envio.</td></tr>
<tr><td><code>id_match</code></td><td>BIGINT</td><td>Match associado (FK).</td></tr>
<tr><td><code>id_remetente</code></td><td>BIGINT</td><td>Usuário remetente (FK).</td></tr>
<tr><td><code>visualizada_em</code></td><td>DATETIME(6)</td><td>Data de visualização.</td></tr>
</tbody>
</table>

10. denuncia

Registra as denúncias realizadas pelos usuários.

<table>
<thead>
<tr><th>Campo</th><th>Tipo</th><th>Descrição</th></tr>
</thead>
<tbody>
<tr><td><code>id_denuncia</code></td><td>BIGINT</td><td>Identificador único (PK).</td></tr>
<tr><td><code>criado_em</code></td><td>DATETIME(6)</td><td>Data da denúncia.</td></tr>
<tr><td><code>descricao</code></td><td>VARCHAR(255)</td><td>Descrição da ocorrência.</td></tr>
<tr><td><code>id_denunciado</code></td><td>BIGINT</td><td>Usuário denunciado (FK).</td></tr>
<tr><td><code>id_denunciante</code></td><td>BIGINT</td><td>Usuário que realizou a denúncia (FK).</td></tr>
<tr><td><code>motivo</code></td><td>VARCHAR(50)</td><td>Motivo da denúncia.</td></tr>
<tr><td><code>status</code></td><td>VARCHAR(50)</td><td>Situação da denúncia.</td></tr>
</tbody>
</table>

<h2>🔗 Relacionamentos</h2>

<p>As tabelas utilizam chaves estrangeiras (<code>FOREIGN KEY</code>) para estabelecer suas conexões e manter a integridade dos dados.</p>

<ul>
<li><strong>Usuario → Perfil (1:1):</strong> cada usuário possui um único perfil.</li>
<li><strong>Usuario → Matches (1:N):</strong> um usuário pode participar de vários matches.</li>
<li><strong>Usuario → Preferência (1:N):</strong> um usuário pode possuir registros de preferências.</li>
<li><strong>Usuario → Bloqueio (1:N):</strong> um usuário pode bloquear ou ser bloqueado.</li>
<li><strong>Usuario → Interação (1:N):</strong> um usuário pode realizar ou receber interações.</li>
<li><strong>Matches → Mensagem (1:N):</strong> um match pode possuir várias mensagens.</li>
<li><strong>Usuario → Mensagem (1:N):</strong> um usuário pode enviar várias mensagens.</li>
<li><strong>Usuario → Denúncia (1:N):</strong> um usuário pode denunciar ou ser denunciado.</li>
</ul>

<hr/>

<h2>🔐 Integridade dos dados</h2>

<p>A estrutura utiliza diferentes restrições para garantir a consistência das informações.</p>

<ul>
<li><strong>PRIMARY KEY:</strong> identifica exclusivamente cada registro.</li>
<li><strong>FOREIGN KEY:</strong> estabelece relacionamentos entre as tabelas.</li>
<li><strong>UNIQUE:</strong> impede e-mails duplicados e mais de um perfil por usuário.</li>
<li><strong>NOT NULL:</strong> determina os campos obrigatórios.</li>
<li><strong>DEFAULT:</strong> define valores iniciais automaticamente.</li>
<li><strong>AUTO_INCREMENT:</strong> gera identificadores automaticamente.</li>
<li><strong>ON DELETE CASCADE:</strong> remove registros dependentes quando uma entidade relacionada é excluída.</li>
</ul>

<hr/>

<h2>⚙️ Regras e características</h2>

<ul>
<li>Usuários são cadastrados com status ativo por padrão.</li>
<li>Matches também são criados como ativos por padrão.</li>
<li>As datas de criação são preenchidas automaticamente.</li>
<li>A identidade de gênero e a orientação sexual possuem controles individuais de exibição.</li>
<li>As preferências de busca permitem definir limites de idade, altura e distância.</li>
<li>As mensagens estão vinculadas a um match e possuem identificação do remetente.</li>
<li>As denúncias armazenam o motivo e o status da ocorrência.</li>
<li>Os relacionamentos possuem exclusão em cascata conforme as regras definidas nas chaves estrangeiras.</li>
</ul>

<hr/>

<h2>📍 Localização e preferências</h2>

<p>O banco possui campos específicos para armazenar informações geográficas e critérios de busca.</p>

<p><strong>Localização (<code>perfil</code>):</strong></p>

<ul>
<li>Cidade e estado.</li>
<li>Latitude e longitude.</li>
</ul>

<p><strong>Preferências (<code>preferencia_busca</code>):</strong></p>

<ul>
<li>Idade mínima e máxima.</li>
<li>Altura mínima e máxima.</li>
<li>Distância máxima em quilômetros.</li>
<li>Escolaridade.</li>
<li>Estado profissional.</li>
<li>Signo.</li>
<li>Tipo de relacionamento.</li>
</ul>

<p>Essas informações permitem que a aplicação utilize critérios de localização e compatibilidade na busca por outros usuários.</p>

<hr/>

<h2>📊 Informações gerais</h2>

<ul>
<li><strong>Banco de dados:</strong> <code>destiny</code></li>
<li><strong>SGBD:</strong> MySQL</li>
<li><strong>Modelo:</strong> Relacional</li>
<li><strong>Total de tabelas:</strong> 10</li>
<li><strong>Codificação:</strong> UTF8MB4</li>
<li><strong>Collation:</strong> <code>utf8mb4_unicode_ci</code></li>
<li><strong>Identificadores:</strong> BIGINT AUTO_INCREMENT</li>
<li><strong>Relacionamentos:</strong> chaves estrangeiras</li>
<li><strong>Integridade referencial:</strong> ON DELETE CASCADE</li>
</ul>

<hr/>

<h2>🎯 Considerações finais</h2>

<p>O banco de dados <strong>Destiny</strong> foi desenvolvido para fornecer uma estrutura organizada e consistente para uma plataforma de relacionamentos.</p>

<p>Sua modelagem contempla o gerenciamento de usuários, perfis, preferências, interações, matches, mensagens e mecanismos de segurança, como bloqueios e denúncias.</p>

<p>A separação das informações em tabelas específicas facilita a manutenção dos dados, enquanto as restrições e os relacionamentos contribuem para a integridade e a confiabilidade do banco.</p>

<p>A estrutura também permite futuras evoluções, acompanhando a implementação de novas funcionalidades na plataforma.</p>

<hr/>

<p align="center"><strong>Destiny</strong> — Banco de dados de uma plataforma de relacionamentos.</p>
