DROP DATABASE IF EXISTS oscarspiaggia;

CREATE DATABASE  oscarspiaggia;

USE oscarspiaggia;

CREATE TABLE `drink` (
    `iddrink` varchar(11) NOT NULL,
    `nome` varchar(50) NOT NULL,
    `ingredienti` varchar(2500) NOT NULL,
    `garnish` varchar(50) NOT NULL,
    `metodo` varchar(50) NOT NULL,
    `categoria`  varchar(50) NOT NULL,
    `sapore` varchar(2500) NOT NULL,
    `prezzo` int(11) NOT NULL
    PRIMARY KEY (`iddrink`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wine` (
    `idwine` varchar(11) NOT NULL,
    `nome` varchar(50) NOT NULL,
    `colore` varchar(20) NOT NULL,
    `gusto` varchar(30) NOT NULL,
    `grad` varchar(40) NOT NULL,
    `prezzo` int(11) NOT NULL,
    PRIMARY KEY (`idwine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `food` (
    `idfood` varchar(11) NOT NULL,
    `nome` varchar(60) NOT NULL,
    `ingredienti` varchar(2500) NOT NULL,
    `categoria`  varchar(50) NOT NULL,
    `prezzo` int(11) NOT NULL,
    PRIMARY KEY (`idfood`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `bar` (
    `idbar` varchar(11) NOT NULL,
    `nome` varchar(60) NOT NULL,
    `categoria`  varchar(50) NOT NULL,
    `prezzo` int(11) NOT NULL,
    PRIMARY KEY (`idbar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;