CREATE DATABASE IF NOT EXISTS devbook;
USE devbook;

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
id int AUTO_INCREMENT PRIMARY key,
nome varchar(50) not null,
nick varchar(50) not null unique,
email varchar(50) not null unique,
senha varchar(20) not null,
criadoEm timestamp default current_timestamp()
) ENGINE=INNODB;