create database if not exists destiny;
use destiny;

create table if not exists usuarios(
    id_usuario varchar(36) primary key,
    email_usuario varchar(255) not null unique,
    senha_usuario varchar(255) not null,
    dt_nasc date not null,
    dt_cadastro datetime default current_timestamp
);

create table if not exists interesses(
    id_interesse varchar(36) primary key,
    nome_interesse varchar(100) not null,
    categoria_interesse varchar(100) not null,
    descricao_interesse text
);

create table if not exists perfil(
    id_perfil varchar(36) primary key,
    usuario_id varchar(36) not null unique,
    nome_pessoa varchar(255) not null,
    genero varchar(50),
    biografia text,
    cidade varchar(150),
    estado varchar(50),
    longitude double,
    latitude double,
    altura_cm int,
    signo varchar(50),
    escolaridade varchar(100),
    estado_profissional varchar(150),
    mostrar_sexualidade boolean default false,
    foreign key (usuario_id) references usuarios(id_usuario) on delete cascade
);

create table if not exists perfilorientacaosexual(
    perfil_id varchar(36) not null,
    orientacao_sexual varchar(50) not null,
    primary key (perfil_id, orientacao_sexual),
    foreign key (perfil_id) references perfil(id_perfil) on delete cascade
);

create table if not exists perfilinteresse(
    perfil_id varchar(36) not null,
    interesse_id varchar(36) not null,
    primary key (perfil_id, interesse_id),
    foreign key (perfil_id) references perfil(id_perfil) on delete cascade,
    foreign key (interesse_id) references interesses(id_interesse) on delete cascade
);

create table if not exists preferencia(
    id_preferencia bigint auto_increment primary key,
    usuario_id varchar(36) not null unique,
    idade_maxima int,
    idade_minima int,
    distancia_maxima_km double,
    distancia_minima_km double,
    altura_minima_cm int,
    altura_maxima_cm int,
    foreign key (usuario_id) references usuarios(id_usuario) on delete cascade
);

create table if not exists preferenciagenero(
    preferencia_id bigint not null,
    genero varchar(50) not null,
    primary key (preferencia_id, genero),
    foreign key (preferencia_id) references preferencia(id_preferencia) on delete cascade
);

create table if not exists preferenciasigno(
    preferencia_id bigint not null,
    signo varchar(50) not null,
    primary key (preferencia_id, signo),
    foreign key (preferencia_id) references preferencia(id_preferencia) on delete cascade
);

create table if not exists preferenciaescolaridade(
    preferencia_id bigint not null,
    escolaridade varchar(100) not null,
    primary key (preferencia_id, escolaridade),
    foreign key (preferencia_id) references preferencia(id_preferencia) on delete cascade
);

create table if not exists preferenciaestadoprofissional(
    preferencia_id bigint not null,
    estado_profissional varchar(150) not null,
    primary key (preferencia_id, estado_profissional),
    foreign key (preferencia_id) references preferencia(id_preferencia) on delete cascade
);

create table if not exists fotos(
    id_foto varchar(36) primary key,
    perfil_id varchar(36) not null,
    url varchar(255) not null,
    ordem_fotos int,
    criado_em datetime default current_timestamp,
    foreign key (perfil_id) references perfil(id_perfil) on delete cascade
);

create table if not exists bloqueios(
    id_bloqueio varchar(36) primary key,
    bloqueador varchar(36) not null,
    bloqueado varchar(36) not null,
    criado_em datetime default current_timestamp,
    foreign key (bloqueador) references usuarios(id_usuario) on delete cascade,
    foreign key (bloqueado) references usuarios(id_usuario) on delete cascade
);

create table if not exists interacoes(
    id_interacao varchar(36) primary key,
    origem_interacao varchar(36) not null,
    destino_interacao varchar(36) not null,
    tipo_interacao varchar(50) not null,
    criado_em datetime default current_timestamp,
    foreign key (origem_interacao) references usuarios(id_usuario) on delete cascade,
    foreign key (destino_interacao) references usuarios(id_usuario) on delete cascade
);

create table if not exists matches(
    id_match varchar(36) primary key,
    usuario1 varchar(36) not null,
    usuario2 varchar(36) not null,
    criado_em datetime default current_timestamp,
    ativo boolean default true,
    foreign key (usuario1) references usuarios(id_usuario) on delete cascade,
    foreign key (usuario2) references usuarios(id_usuario) on delete cascade
);

create table if not exists mensagens(
    id_mensagem varchar(36) primary key,
    match_id varchar(36) not null,
    remetente varchar(36) not null,
    conteudo text not null,
    enviada_em datetime default current_timestamp,
    visualizada_em datetime,
    foreign key (match_id) references matches(id_match) on delete cascade,
    foreign key (remetente) references usuarios(id_usuario) on delete cascade
);

create table if not exists denuncias(
    id_denuncia varchar(36) primary key,
    denunciante varchar(36) not null,
    denunciado varchar(36) not null,
    motivo_denuncia varchar(100) not null,
    descricao text,
    criada_em datetime default current_timestamp,
    status_denuncia varchar(50),
    foreign key (denunciante) references usuarios(id_usuario) on delete cascade,
    foreign key (denunciado) references usuarios(id_usuario) on delete cascade
);