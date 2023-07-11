-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 06-Jul-2023 às 16:20
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

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
  `nome` varchar(45) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `rg` varchar(12) DEFAULT NULL,
  `credencial` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`cpf`, `nome`, `rg`, `credencial`) VALUES
('999', 'Joaozinho', '232', 'cred');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `cnpj` varchar(22) NOT NULL,
  `razaoSocial` varchar(45) NOT NULL,
  `nomeFantasia` varchar(45) NOT NULL,
  `nomeResponsavel` varchar(45) NOT NULL,
  `site` varchar(70) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `areaAtuacao` varchar(45) NOT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`cnpj`, `razaoSocial`, `nomeFantasia`, `nomeResponsavel`, `site`, `endereco`, `areaAtuacao`) VALUES
('12345678901234', 'HDM M Midias Digitais', 'HDMidia', 'Nilson', 'www.google.com.br', 'Salvador', 'Desenvolvimento WEB'),
('09876543210987', 'Solutions Sol. INC', 'Solutions', 'José', 'www.google.com.br', 'Salvador', 'Suporte');

-- --------------------------------------------------------

--Google Brasil
-- Estrutura da tabela `matricula`
--

DROP TABLE IF EXISTS `matricula`;
CREATE TABLE IF NOT EXISTS `matricula` (
  `cpf` varchar(11) NOT NULL,
  `curso` varchar(45) DEFAULT NULL,
  `numeroMatricula` varchar(9) DEFAULT NULL,
  `periodo` smallint DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Estrutura da tabela `secandidataem`
--

DROP TABLE IF EXISTS `secandidataem`;
CREATE TABLE IF NOT EXISTS `secandidataem` (
  `idVaga` int NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `curriculo` varchar(45) NOT NULL,
  PRIMARY KEY (`idVaga`,`cpf`),
  KEY `fkAluno` (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga`
--

DROP TABLE IF EXISTS `vaga`;
CREATE TABLE IF NOT EXISTS `vaga` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `requisitos` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `beneficios` varchar(255) NOT NULL,
  `remuneracao` int NOT NULL,
  `carga_horaria` int NOT NULL,
  `prazo` date NOT NULL,
  `final` int NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vaga`
--

INSERT INTO `vaga` (`id`, `title`, `requisitos`, `text`, `beneficios`, `remuneracao`, `carga_horaria`, `prazo`, `final`, `cnpj`) VALUES
(4, 'Desenvolvedor Front-end', 'Conhecimento avançado em HTML, CSS e JavaScript', 'Estamos procurando um desenvolvedor front-end experiente para se juntar à nossa equipe. Será responsável por desenvolver e manter interfaces de usuário interativas e responsivas usando tecnologias como HTML, CSS e JavaScript.', 'Plano de saúde, vale-refeição', 5000, 40, '2023-08-15', 2023, '12345678901234'),
(5, 'Desenvolvedor Back-end', 'Experiência em programação com Python e conhecimentos sólidos em bancos de dados', 'Procuramos um desenvolvedor back-end para ajudar no desenvolvimento de soluções escaláveis e seguras. Será responsável por desenvolver a lógica de negócio e integrar sistemas com bancos de dados.', 'Plano de saúde, vale-transporte', 6000, 40, '2023-07-30', 2023, '09876543210987'),
(6, 'Engenheiro de Software', 'Conhecimento em linguagens como Java, C++ e experiência em desenvolvimento de software', 'Estamos buscando um engenheiro de software para liderar projetos e equipes de desenvolvimento. Será responsável por projetar, desenvolver e implementar soluções de software de alta qualidade.', 'Plano de saúde, vale-alimentação, bônus anual', 8000, 40, '2023-07-20', 2023, '12345678901234'),
(7, 'Analista de Testes', 'Experiência com testes de software e conhecimento em metodologias ágeis', 'Procuramos um analista de testes para garantir a qualidade de nossos produtos por meio de testes rigorosos. Será responsável por planejar, projetar e executar casos de teste, além de identificar e relatar falhas.', 'Vale-refeição, horário flexível', 4500, 30, '2023-07-10', 2023, '12345678901234'),
(8, 'Desenvolvedor Full Stack', 'Experiência com desenvolvimento web utilizando tecnologias front-end e back-end', 'Estamos em busca de um desenvolvedor full stack para trabalhar no desenvolvimento e manutenção de aplicações web. Será responsável por criar interfaces de usuário atraentes e funcionais, além de implementar a lógica do servidor.', 'Plano de saúde, vale-transporte', 7000, 40, '2023-08-05', 2023, '09876543210987'),
(9, 'Analista de Dados', 'Conhecimento em SQL, Python e experiência em análise de dados', 'Procuramos um analista de dados para extrair insights e contribuir para a tomada de decisões estratégicas da empresa. Será responsável por coletar, limpar, transformar e analisar dados, além de criar relatórios e visualizações.', 'Plano de saúde, vale-refeição, horário flexível', 6500, 40, '2023-07-25', 2023, '12345678901234'),
(10, 'Arquiteto de Software', 'Experiência em arquitetura de software, conhecimento em padrões de projeto', 'Estamos contratando um arquiteto de software para definir a estrutura e a integração de sistemas em nossos projetos. Será responsável por projetar soluções escaláveis, seguras e de alto desempenho.', 'Plano de saúde, vale-alimentação, participação nos lucros', 9000, 40, '2023-07-15', 2023, '12345678901234'),
(29, 'Analista de Segurança da Informação', 'Conhecimento em técnicas de segurança, testes de vulnerabilidade e conformidade', 'Procuramos um analista de segurança da informação para garantir a proteção dos nossos sistemas e dados sensíveis. Será responsável por identificar e mitigar riscos de segurança, implementar controles e monitorar ameaças.', 'Plano de saúde, vale-transporte, seguro de vida', 7500, 40, '2023-07-20', 2023, '12345678901234'),
(30, 'Desenvolvedor de IA', 'Experiência em inteligência artificial, aprendizado de máquina e processamento de linguagem natural', 'Estamos em busca de um desenvolvedor de IA para criar soluções avançadas baseadas em inteligência artificial. Será responsável por desenvolver algoritmos de aprendizado de máquina, implementar modelos de IA e realizar análises de dados.', 'Plano de saúde, vale-alimentação, auxílio educação', 8500, 40, '2023-07-30', 2023, '09876543210987'),
(31, 'Engenheiro de DevOps', 'Experiência em infraestrutura como código, automação de processos e integração contínua', 'Estamos buscando um engenheiro de DevOps para otimizar nossos fluxos de desenvolvimento e implantação. Será responsável por automatizar processos, configurar ferramentas de CI/CD e garantir a estabilidade e escalabilidade dos ambientes de desenvolvimento.', 'Plano de saúde, vale-refeição, benefícios flexíveis', 7800, 40, '2023-08-05', 2023, '09876543210987'),
(32, 'Desenvolvedor de Jogos', 'Conhecimento em desenvolvimento de jogos, motor de jogos e linguagens de programação relacionadas', 'Procuramos um desenvolvedor de jogos para criar experiências imersivas e envolventes para nossos usuários. Será responsável por projetar e implementar mecânicas de jogo, desenvolver a lógica e a física do jogo, e otimizar o desempenho.', 'Plano de saúde, vale-transporte, ambiente descontraído', 6800, 40, '2023-07-25', 2023, '12345678901234'),
(33, 'Especialista em UX/UI', 'Experiência em design de interfaces, usabilidade e prototipação', 'Estamos contratando um especialista em UX/UI para criar interfaces intuitivas e agradáveis em nossos produtos. Será responsável por conduzir pesquisas de usuário, criar wireframes, protótipos interativos e colaborar com desenvolvedores para implementar as', 'Plano de saúde, vale-alimentação, horário flexível', 8200, 40, '2023-07-15', 2023, '12345678901234'),
(34, 'Desenvolvedor de Blockchain', 'Experiência em desenvolvimento de aplicações blockchain, contratos inteligentes e criptografia', 'Estamos procurando um desenvolvedor de blockchain para trabalhar em projetos inovadores e disruptivos. Será responsável por projetar, desenvolver e implementar soluções baseadas em blockchain, além de garantir a segurança e integridade dos dados.', 'Plano de saúde, vale-refeição, participação nos lucros', 9000, 40, '2023-08-10', 2023, '09876543210987'),
(35, 'Analista de Business Intelligence', 'Conhecimento em ferramentas de BI, modelagem de dados e análise de informações', 'Procuramos um analista de BI para extrair insights e suportar a tomada de decisões estratégicas. Será responsável por coletar, transformar e analisar dados, criar relatórios e painéis de controle, e identificar oportunidades de melhoria.', 'Plano de saúde, vale-transporte, bônus anual', 7200, 40, '2023-07-20', 2023, '09876543210987'),
(36, 'Engenheiro de Software Sênior', 'Experiência sólida em desenvolvimento de software, liderança técnica e arquitetura de sistemas', 'Estamos buscando um engenheiro de software sênior para liderar projetos complexos e orientar a equipe de desenvolvimento. Será responsável por definir a arquitetura de sistemas, tomar decisões técnicas, garantir a qualidade do código e mentorar outros des', 'Plano de saúde, vale-alimentação, plano de previdência', 11000, 40, '2023-07-30', 2023, '09876543210987');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
