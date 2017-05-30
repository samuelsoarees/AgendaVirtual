-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 08:33 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agendavirtual`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `genero` tinyint(4) NOT NULL,
  `data_nasc` date NOT NULL,
  `turma1_id` int(11) NOT NULL,
  `turma2_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `genero`, `data_nasc`, `turma1_id`, `turma2_id`) VALUES
(1, 'Guilherme Da silva Sauro', 1, '2011-01-12', 3, 4),
(2, 'Valdemar da Silva Neto', 1, '2013-03-05', 1, 0),
(3, 'Iris Ananda de Souza', 0, '2012-01-11', 0, 4),
(4, 'Alexandra de Lima Carvalho', 0, '2010-02-05', 1, 6),
(5, 'Valdemar da Silva Neto', 1, '2011-07-01', 4, 0),
(6, 'Maria Laura de Oliveira', 0, '2011-01-12', 0, 4),
(7, 'Otávio de Lima e Souza', 1, '2007-03-05', 5, 0),
(8, 'Maurício Antunes de Barros', 1, '2018-07-13', 0, 0),
(9, 'Maria Alexia de Menezes', 0, '2009-04-08', 3, 0),
(10, 'Erik Batista', 1, '2013-02-28', 4, 1),
(11, 'Lavinia Pimentel', 0, '2009-04-12', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `aluno_tem_responsavel`
--

CREATE TABLE `aluno_tem_responsavel` (
  `aluno_id` int(11) NOT NULL,
  `responsavel_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aluno_tem_responsavel`
--

INSERT INTO `aluno_tem_responsavel` (`aluno_id`, `responsavel_id`) VALUES
(6, 1),
(9, 1),
(5, 1),
(5, 2),
(9, 2),
(6, 2),
(7, 3),
(8, 3),
(10, 5),
(11, 6),
(3, 4),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `atividades`
--

CREATE TABLE `atividades` (
  `id` int(11) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `turma_id` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atividades`
--

INSERT INTO `atividades` (`id`, `mensagem`, `turma_id`, `data`) VALUES
(11, 'Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa ', 2, '2017-05-29'),
(12, 'Amanhã não haverá aula.', 1, '2017-05-17'),
(13, 'Ciências pág 32\r\nPortuguês pág 43', 3, '2017-05-30'),
(14, 'Atividade sobre televisão\r\nEntrevista com seus avós', 5, '2017-04-10'),
(15, 'Conversa com os pais sobre aborto', 4, '2017-05-15'),
(16, 'Cortar e pintar o pappai noel', 4, '2017-05-02'),
(17, '(GRUPO DEUTSCHLAND) DITADO SOBRE VERBOS E CÔMODOS 	', 6, '2017-05-26'),
(18, 'Pg. 107 ex. 1,3 até 7', 3, '2017-05-30'),
(19, 'PÁGINA 123 EXERCÍCIO 4,5 e 6', 2, '2017-03-15'),
(20, 'PESQUISAR O GOVERNO TRUMP E A RELAÇÃO COM CUBA', 3, '2017-01-25'),
(21, 'PG. 29 workbook', 6, '2017-04-19'),
(22, 'Terminar questão 7 SB Pg. 29 Grupo Nevo - Sielas', 4, '2017-05-16'),
(23, 'ESTUDAR PARA A PROVA (PÁGINA 102 ATÉ 120)', 1, '2017-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `avisos`
--

CREATE TABLE `avisos` (
  `aluno_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `visualizado` tinyint(1) NOT NULL,
  `mensagem` varchar(400) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avisos`
--

INSERT INTO `avisos` (`aluno_id`, `professor_id`, `data`, `visualizado`, `mensagem`, `id`) VALUES
(1, 3, '2017-05-30', 0, 'Sr. pai favor vir até a escola pois seu filho tocou fogo na professora', 1),
(2, 2, '2017-05-28', 0, 'Sr. responsavel favor atualizar os dados cadastrais de seu filho', 2),
(1, 3, '2017-05-16', 0, 'Seu filho está insuportável', 3);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `genero` tinyint(4) NOT NULL,
  `matricula` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`id`, `nome`, `usuario`, `senha`, `genero`, `matricula`) VALUES
(1, 'Lucas Lopes', 'ldias', '123', 1, 9414),
(2, 'Maria Aparecida', 'masilva', 'santamaria', 0, 3498),
(3, 'Maria José', 'mjose', '67686', 0, 12097),
(4, 'Leonardo De Oliveira', 'leooliv', '09374672', 1, 9097);

-- --------------------------------------------------------

--
-- Table structure for table `responsavel`
--

CREATE TABLE `responsavel` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` int(25) NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `parentesco` varchar(255) NOT NULL,
  `genero` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responsavel`
--

INSERT INTO `responsavel` (`id`, `nome`, `usuario`, `senha`, `cpf`, `parentesco`, `genero`) VALUES
(1, 'Genilda Maria da Silva', 'genildagatona@hotmail.com', 12345, 788763573, 'mãe', 0),
(2, 'Mário Cézar de Souza Lima', 'mariotomtom@gmail.com', 345675, 9973847895, 'pai', 1),
(3, 'Maquiavel de Lira', 'maqui', 232424, 45453545, 'Tio', 1),
(4, 'José Maria Soares Dias', 'joseca', 232322, 9872894, 'Pai', 1),
(5, 'Juliana de Albuquerque', 'jujuba', 23232, 45646456, 'Mãe', 0),
(6, 'Dona Maricreuza de Lira', 'maricuez', 453534543, 77453574555, 'Avó', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teste`
--

CREATE TABLE `teste` (
  `noem` varchar(155) NOT NULL,
  `id` int(11) NOT NULL,
  `classe` varchar(144) NOT NULL,
  `dinheiro` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turma`
--

CREATE TABLE `turma` (
  `id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `periodo` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `turma`
--

INSERT INTO `turma` (`id`, `professor_id`, `nome`, `periodo`) VALUES
(1, 1, '1ºA', 'Manhã'),
(2, 2, '5º A', 'Manhã'),
(3, 2, '3º B', 'Tarde'),
(4, 1, '4º C', 'Tarde'),
(5, 4, '2º B', 'Tarde'),
(6, 2, '4º C', 'Tarde');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aluno_tem_responsavel`
--
ALTER TABLE `aluno_tem_responsavel`
  ADD KEY `aluno_id` (`aluno_id`),
  ADD KEY `responsavel_id` (`responsavel_id`);

--
-- Indexes for table `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avisos`
--
ALTER TABLE `avisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aluno_id` (`aluno_id`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsavel`
--
ALTER TABLE `responsavel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `avisos`
--
ALTER TABLE `avisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `responsavel`
--
ALTER TABLE `responsavel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
