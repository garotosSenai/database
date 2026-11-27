create database if not exists destiny
character set utf8mb4
collate utf8mb4_unicode_ci;
use destiny;

create table if not exists usuario (
    id_usuario bigint auto_increment primary key,
    ativo bit(1) default b'1',
    criado_em datetime(6) default current_timestamp(6),
    data_nascimento date not null,
    email varchar(255) not null unique,
    senha varchar(255) not null
);

create table if not exists perfil (
    id_perfil bigint auto_increment primary key,
    altura_cm int,
    bio varchar(255),
    escolaridade varchar(255),
    estado_profissional varchar(255),
    genero varchar(255),
    id_usuario bigint not null unique,
    identidade_genero varchar(255),
    cidade varchar(255),
    estado varchar(255),
    latitude double,
    longitude double,
    mostrar_identidade_genero bit(1) default b'0',
    mostrar_orientacao bit(1) default b'0',
    nome varchar(255),
    orientacao_sexual varchar(255),
    signo varchar(255),
    tipo_relacionamento varchar(255),

    constraint fk_perfil_usuario
    foreign key (id_usuario)
    references usuario(id_usuario)
    on delete cascade
);

create table if not exists foto (
    id_foto bigint auto_increment primary key,
    criado_em datetime(6) default current_timestamp(6),
    ordem int,
    url varchar(255) not null
);

create table if not exists matches (
    id_match bigint auto_increment primary key,
    ativo bit(1) default b'1',
    criado_em datetime(6) default current_timestamp(6),
    id_usuario1 bigint not null,
    id_usuario2 bigint not null,

    constraint fk_match_usuario1
    foreign key (id_usuario1)
    references usuario(id_usuario)
    on delete cascade,

    constraint fk_match_usuario2
    foreign key (id_usuario2)
    references usuario(id_usuario)
    on delete cascade
);

create table if not exists hobby (
    id_hobby bigint auto_increment primary key,
    categoria varchar(255),
    descricao varchar(255),
    nome varchar(255) not null
);

create table if not exists preferencia_busca (
    id_preferencia bigint auto_increment primary key,
    altura_maxima_cm int,
    altura_minima_cm int,
    distancia_maxima_km double,
    escolaridade varchar(255),
    estado_profissional varchar(255),
    id_usuario bigint not null,
    idade_maxima int,
    idade_minima int,
    signo varchar(255),
    tipo_relacionamento varchar(255),

    constraint fk_preferencia_usuario
    foreign key (id_usuario)
    references usuario(id_usuario)
    on delete cascade
);

create table if not exists bloqueio (
    id_bloqueio bigint auto_increment primary key,
    criado_em datetime(6) default current_timestamp(6),
    id_bloqueado bigint not null,
    id_bloqueador bigint not null,

    constraint fk_bloqueio_bloqueado
    foreign key (id_bloqueado)
    references usuario(id_usuario)
    on delete cascade,

    constraint fk_bloqueio_bloqueador
    foreign key (id_bloqueador)
    references usuario(id_usuario)
    on delete cascade
);

create table if not exists interacao (
    id_interacao bigint auto_increment primary key,
    criado_em datetime(6) default current_timestamp(6),
    id_destino bigint not null,
    id_origem bigint not null,
    tipo varchar(50) not null,

    constraint fk_interacao_destino
    foreign key (id_destino)
    references usuario(id_usuario)
    on delete cascade,

    constraint fk_interacao_origem
    foreign key (id_origem)
    references usuario(id_usuario)
    on delete cascade
);

create table if not exists mensagem (
    id_mensagem bigint auto_increment primary key,
    conteudo varchar(255) not null,
    enviada_em datetime(6) default current_timestamp(6),
    id_match bigint not null,
    id_remetente bigint not null,
    visualizada_em datetime(6),

    constraint fk_mensagem_match
    foreign key (id_match)
    references matches(id_match)
    on delete cascade,

    constraint fk_mensagem_remetente
    foreign key (id_remetente)
    references usuario(id_usuario)
    on delete cascade
);

create table if not exists denuncia (
    id_denuncia bigint auto_increment primary key,
    criado_em datetime(6) default current_timestamp(6),
    descricao varchar(255),
    id_denunciado bigint not null,
    id_denunciante bigint not null,
    motivo varchar(50) not null,
    status varchar(50),

    constraint fk_denuncia_denunciado
    foreign key (id_denunciado)
    references usuario(id_usuario)
    on delete cascade,

    constraint fk_denuncia_denunciante
    foreign key (id_denunciante)
    references usuario(id_usuario)
    on delete cascade
);
