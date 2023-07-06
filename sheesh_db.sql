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
  `rg` varchar(12) DEFAULT NULL,
  `credencial` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`cpf`, `nome`, `rg`, `credencial`) VALUES
('asd', 'asd', 'asd', 'asd');

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
('asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd'),
('12', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
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
-- Estrutura da tabela `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(1048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'user who posted this',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `img`, `author`, `date`) VALUES
(5, 'Cachorro assume a liderança e se torna presidente do mundo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'piercing-para-cachorro-2.jpg', 'maintenance', '2021-08-03 13:48:06'),
(6, 'Dragão desperta e destrói Austrália.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'dragon-attcking-uma-cidade-futura-52676835.jpg', 'maintenance', '2021-08-03 13:49:40'),
(7, 'Cachorro acaba com a crise e traz prosperidade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cachorro.jpg', 'maintenance', '2021-08-03 13:51:59'),
(8, 'Dragão chega na Ásia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'dragões-e1553806859749.jpg', 'maintenance', '2021-08-03 13:54:04'),
(9, 'Diante crise do dragão ONU discute se o Dragão é ou não gênero neutro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '1200px-Flag_of_the_United_Nations.svg.png', 'maintenance', '2021-08-03 14:02:17'),
(10, 'ONU é destruída', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Yemen1.jpg', 'maintenance', '2021-08-03 14:03:22'),
(11, 'Sobe a liderança do cachorro, a fome mundial acaba', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'img_beneficios_de_ter_um_cachorro_20814_600.jpg', 'maintenance', '2021-08-03 14:05:31'),
(12, 'Países do mundo inteiro fazem aliança com cachorro que promete para crise', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'AGXJVNVWENEO5A23BE3G5HRWZQ.jpg', 'maintenance', '2021-08-03 14:07:44'),
(13, 'Cachorro faz acordo com Dragão que só estava agindo em auto defesa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'img60d77fa3c53fc8.97945046.jpg', 'maintenance', '2021-08-03 14:09:26'),
(14, 'Todos os presidentes do mundo agora são cachorros', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'pup-prez.jpg', 'maintenance', '2021-08-03 14:10:10'),
(15, 'Dragão diz que se chama Juvenal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dragão-RioMarRecife-ExposiçãoDragões.jpg', 'maintenance', '2021-08-03 14:13:00');

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
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `level` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `tel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`user`),
  UNIQUE KEY `email` (`email`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `user`, `level`, `password`, `tel`) VALUES
(1, 'adm@gmail.com', 'adm', 3, '$2y$10$0/vl6WQU46id3RGkl.2SVeHZurVMlpYahKHr5FvKgiOiRvlloBS8a', '00000000'),
(4, 'maintenance@gmail.com', 'maintenance', 2, '$2y$10$LOdYEmYOkC6rh.sgPkgTO.zmR8fwTwLToH1IBGWJBIH6ppHXN3Oeq', '00000000');

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
(6, 'Engenheiro de Software', 'Conhecimento em linguagens como Java, C++ e experiência em desenvolvimento de software', 'Estamos buscando um engenheiro de software para liderar projetos e equipes de desenvolvimento. Será responsável por projetar, desenvolver e implementar soluções de software de alta qualidade.', 'Plano de saúde, vale-alimentação, bônus anual', 8000, 40, '2023-07-20', 2023, '56789012345678'),
(7, 'Analista de Testes', 'Experiência com testes de software e conhecimento em metodologias ágeis', 'Procuramos um analista de testes para garantir a qualidade de nossos produtos por meio de testes rigorosos. Será responsável por planejar, projetar e executar casos de teste, além de identificar e relatar falhas.', 'Vale-refeição, horário flexível', 4500, 30, '2023-07-10', 2023, '34567890123456'),
(8, 'Desenvolvedor Full Stack', 'Experiência com desenvolvimento web utilizando tecnologias front-end e back-end', 'Estamos em busca de um desenvolvedor full stack para trabalhar no desenvolvimento e manutenção de aplicações web. Será responsável por criar interfaces de usuário atraentes e funcionais, além de implementar a lógica do servidor.', 'Plano de saúde, vale-transporte', 7000, 40, '2023-08-05', 2023, '98765432101234'),
(9, 'Analista de Dados', 'Conhecimento em SQL, Python e experiência em análise de dados', 'Procuramos um analista de dados para extrair insights e contribuir para a tomada de decisões estratégicas da empresa. Será responsável por coletar, limpar, transformar e analisar dados, além de criar relatórios e visualizações.', 'Plano de saúde, vale-refeição, horário flexível', 6500, 40, '2023-07-25', 2023, '65432109871234'),
(10, 'Arquiteto de Software', 'Experiência em arquitetura de software, conhecimento em padrões de projeto', 'Estamos contratando um arquiteto de software para definir a estrutura e a integração de sistemas em nossos projetos. Será responsável por projetar soluções escaláveis, seguras e de alto desempenho.', 'Plano de saúde, vale-alimentação, participação nos lucros', 9000, 40, '2023-07-15', 2023, '54321098765432'),
(29, 'Analista de Segurança da Informação', 'Conhecimento em técnicas de segurança, testes de vulnerabilidade e conformidade', 'Procuramos um analista de segurança da informação para garantir a proteção dos nossos sistemas e dados sensíveis. Será responsável por identificar e mitigar riscos de segurança, implementar controles e monitorar ameaças.', 'Plano de saúde, vale-transporte, seguro de vida', 7500, 40, '2023-07-20', 2023, '45612378901234'),
(30, 'Desenvolvedor de IA', 'Experiência em inteligência artificial, aprendizado de máquina e processamento de linguagem natural', 'Estamos em busca de um desenvolvedor de IA para criar soluções avançadas baseadas em inteligência artificial. Será responsável por desenvolver algoritmos de aprendizado de máquina, implementar modelos de IA e realizar análises de dados.', 'Plano de saúde, vale-alimentação, auxílio educação', 8500, 40, '2023-07-30', 2023, '12345987654321'),
(31, 'Engenheiro de DevOps', 'Experiência em infraestrutura como código, automação de processos e integração contínua', 'Estamos buscando um engenheiro de DevOps para otimizar nossos fluxos de desenvolvimento e implantação. Será responsável por automatizar processos, configurar ferramentas de CI/CD e garantir a estabilidade e escalabilidade dos ambientes de desenvolvimento.', 'Plano de saúde, vale-refeição, benefícios flexíveis', 7800, 40, '2023-08-05', 2023, '98765432109876'),
(32, 'Desenvolvedor de Jogos', 'Conhecimento em desenvolvimento de jogos, motor de jogos e linguagens de programação relacionadas', 'Procuramos um desenvolvedor de jogos para criar experiências imersivas e envolventes para nossos usuários. Será responsável por projetar e implementar mecânicas de jogo, desenvolver a lógica e a física do jogo, e otimizar o desempenho.', 'Plano de saúde, vale-transporte, ambiente descontraído', 6800, 40, '2023-07-25', 2023, '65432109876543'),
(33, 'Especialista em UX/UI', 'Experiência em design de interfaces, usabilidade e prototipação', 'Estamos contratando um especialista em UX/UI para criar interfaces intuitivas e agradáveis em nossos produtos. Será responsável por conduzir pesquisas de usuário, criar wireframes, protótipos interativos e colaborar com desenvolvedores para implementar as', 'Plano de saúde, vale-alimentação, horário flexível', 8200, 40, '2023-07-15', 2023, '54321098765432'),
(34, 'Desenvolvedor de Blockchain', 'Experiência em desenvolvimento de aplicações blockchain, contratos inteligentes e criptografia', 'Estamos procurando um desenvolvedor de blockchain para trabalhar em projetos inovadores e disruptivos. Será responsável por projetar, desenvolver e implementar soluções baseadas em blockchain, além de garantir a segurança e integridade dos dados.', 'Plano de saúde, vale-refeição, participação nos lucros', 9000, 40, '2023-08-10', 2023, '78901234567890'),
(35, 'Analista de Business Intelligence', 'Conhecimento em ferramentas de BI, modelagem de dados e análise de informações', 'Procuramos um analista de BI para extrair insights e suportar a tomada de decisões estratégicas. Será responsável por coletar, transformar e analisar dados, criar relatórios e painéis de controle, e identificar oportunidades de melhoria.', 'Plano de saúde, vale-transporte, bônus anual', 7200, 40, '2023-07-20', 2023, '45612378901234'),
(36, 'Engenheiro de Software Sênior', 'Experiência sólida em desenvolvimento de software, liderança técnica e arquitetura de sistemas', 'Estamos buscando um engenheiro de software sênior para liderar projetos complexos e orientar a equipe de desenvolvimento. Será responsável por definir a arquitetura de sistemas, tomar decisões técnicas, garantir a qualidade do código e mentorar outros des', 'Plano de saúde, vale-alimentação, plano de previdência', 11000, 40, '2023-07-30', 2023, '12345987654321');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
