-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 02:56 PM
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
  `data_nasc` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `genero`, `data_nasc`) VALUES
(1, 'Guilherme Da silva Sauro', 1, '2011-01-12'),
(2, 'Valdemar da Silva Neto', 1, '2013-03-05'),
(3, 'Iris Ananda de Souza', 0, '2012-01-11'),
(4, 'Alexandra de Lima Carvalho', 0, '2010-02-05'),
(5, 'Valdemar da Silva Neto', 1, '2011-07-01'),
(6, 'Maria Laura de Oliveira', 0, '2011-01-12'),
(7, 'Otávio de Lima e Souza', 1, '2007-03-05'),
(8, 'Maurício Antunes de Barros', 1, '2018-07-13'),
(9, 'Maria Alexia de Menezes', 0, '2009-04-08');

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
(1, 1);

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
(11, 'Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa Olá esta é uma mensagem curta mas longa bem longa ', 36, '2017-05-29'),
(12, 'Amanhã não haverá aula.', 1, '2017-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `aviso_para_responsavel`
--

CREATE TABLE `aviso_para_responsavel` (
  `aviso_id` int(11) NOT NULL,
  `responsavel_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(2, 'Maria Aparecida', 'masilva', 'santamaria', 0, 3498);

-- --------------------------------------------------------

--
-- Table structure for table `responsavel`
--

CREATE TABLE `responsavel` (
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` int(25) NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `parentesco` varchar(255) NOT NULL,
  `genero` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responsavel`
--

INSERT INTO `responsavel` (`nome`, `usuario`, `senha`, `cpf`, `parentesco`, `genero`, `id`) VALUES
('Genilda Maria da Silva', 'genildagatona@hotmail.com', 12345, 788763573, 'mãe', 0, 1),
('Mário Cézar de Souza Lima', 'mariotomtom@gmail.com', 345675, 9973847895, 'pai', 1, 2);

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
(4, 1, '4º C', 'Tarde');

-- --------------------------------------------------------

--
-- Table structure for table `turma_tem_aluno`
--

CREATE TABLE `turma_tem_aluno` (
  `turma_id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `turma_tem_aluno`
--

INSERT INTO `turma_tem_aluno` (`turma_id`, `aluno_id`) VALUES
(2, 3);

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
-- Indexes for table `aviso_para_responsavel`
--
ALTER TABLE `aviso_para_responsavel`
  ADD KEY `aviso_id` (`aviso_id`),
  ADD KEY `responsavel_id` (`responsavel_id`);

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
-- Indexes for table `turma_tem_aluno`
--
ALTER TABLE `turma_tem_aluno`
  ADD KEY `aluno_id` (`aluno_id`),
  ADD KEY `turma_id` (`turma_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `responsavel`
--
ALTER TABLE `responsavel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
