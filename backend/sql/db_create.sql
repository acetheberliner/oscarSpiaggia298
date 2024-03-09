DROP DATABASE IF EXISTS oscarSpiaggia298;
CREATE DATABASE  oscarSpiaggia298;
USE oscarSpiaggia298;

CREATE TABLE `drink` (
    `iddrink` int(11) NOT NULL,
    `nome` varchar(50) NOT NULL,
    `ingredienti` varchar(2500) NOT NULL,
    `garnish` varchar(50) NOT NULL,
    `metodo` varchar(50) NOT NULL,
    `categoria`  varchar(50) NOT NULL,
    `sapore` varchar(2500) NOT NULL,
    `img` varchar(1000) NOT NULL,
    PRIMARY KEY (`iddrink`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
