-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Jun-2023 às 18:31
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sheesh_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `cpf` varchar(11) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `numeroMatricula` varchar(45) NOT NULL,
  `periodo` smallint(6) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicaocontratante`
--

DROP TABLE IF EXISTS `instituicaocontratante`;
CREATE TABLE IF NOT EXISTS `instituicaocontratante` (
  `cnpj` varchar(22) NOT NULL,
  `razaoSocial` varchar(200) NOT NULL,
  `nomeFantasia` varchar(100) NOT NULL,
  `nomeResponsavel` varchar(100) NOT NULL,
  `site` varchar(100) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `areaAtuacao` varchar(100) NOT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secandidataem`
--

DROP TABLE IF EXISTS `secandidataem`;
CREATE TABLE IF NOT EXISTS `secandidataem` (
  `idVaga` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `curriculo` varchar(45) NOT NULL,
  PRIMARY KEY (`idVaga`,`cpf`),
  KEY `fkAluno` (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagaestagio`
--

DROP TABLE IF EXISTS `vagaestagio`;
CREATE TABLE IF NOT EXISTS `vagaestagio` (
  `idVaga` varchar(13) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `requisitos` varchar(200) NOT NULL,
  `descricaoAtividades` varchar(400) NOT NULL,
  `beneficios` varchar(100) DEFAULT NULL,
  `remuneracao` decimal(5,2) DEFAULT NULL,
  `cargaHoraria` smallint(6) NOT NULL,
  `localizacao` varchar(100) DEFAULT NULL,
  `modalidade` char(1) NOT NULL,
  `prazo` date DEFAULT NULL,
  `finalizado` tinyint(4) DEFAULT NULL,
  `cnpj` varchar(22) NOT NULL,
  PRIMARY KEY (`idVaga`),
  KEY `fkInstituicao` (`cnpj`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
