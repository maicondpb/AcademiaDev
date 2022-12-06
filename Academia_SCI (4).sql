-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: BancoEscolinha
-- Tempo de geração: 06/12/2022 às 15:58
-- Versão do servidor: 8.0.31
-- Versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Academia_SCI`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `administradores`
--

CREATE TABLE `administradores` (
  `id` int NOT NULL,
  `nome` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivelAcesso_id` int NOT NULL,
  `situacao_id` int NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `administradores`
--

INSERT INTO `administradores` (`id`, `nome`, `email`, `senha`, `nivelAcesso_id`, `situacao_id`, `dateCreate`, `dateModified`) VALUES
(1, 'RH', 'rh@sci.com.br', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '2022-11-30 13:30:45', NULL),
(4, 'RH2', 'rh2@sci.com.br', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '2022-12-01 13:18:08', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int NOT NULL,
  `nome` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cpf` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sexo` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `dataNascimento` date NOT NULL,
  `senha` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `cidade` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `bairro` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `rua` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `cep` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `turma_id` int NOT NULL,
  `nivelAcesso_id` int NOT NULL,
  `situacao_id` int NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `sexo`, `dataNascimento`, `senha`, `estado`, `cidade`, `bairro`, `rua`, `numero`, `complemento`, `cep`, `turma_id`, `nivelAcesso_id`, `situacao_id`, `dateCreate`, `dateModified`) VALUES
(6, 'Maicon', '07865435908', 'maicon.bitencorte@gmail.com', '47996337751', 'masculino', '2001-01-01', 'e10adc3949ba59abbe56e057f20f883e', 'SC', 'Blumenau', 'Garcia', 'Joao Deola', 150, 'Bloco 8 Ap 201', '89021100', 2, 2, 1, '2022-11-28 13:48:40', NULL),
(7, 'Aaribalda dos Santos', '07565435807', 'garibalda@hotmail.com', '4796968585', 'feminino', '1969-12-31', 'c9130efba1317c16406d67270f657af3', 'SC', 'Blumenau', 'Centro', 'Qualquer rua', 720, 'Nenhum', '89020100', 2, 2, 1, '2022-11-28 15:39:25', NULL),
(10, 'lalala', '07865435507958', 'lalal@lala', '47989896565', 'masculino', '1969-12-31', 'e10adc3949ba59abbe56e057f20f883e', 'Santa Catarina', 'Blumenau', 'Centro', 'Rua Itajaí', 720, 'Nenhum', '89010000', 2, 2, 1, '2022-12-04 00:13:59', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`, `dataInicio`, `dataFim`, `dateCreate`, `dateModified`) VALUES
(1, 'Dev Web', '2022-09-14', '2022-11-30', '2022-11-08 13:41:58', NULL),
(2, 'Fiscal', '2022-09-30', '2022-09-30', '2022-11-08 13:41:58', NULL),
(3, 'Contábil', '2022-09-19', '2022-09-19', '2022-11-08 13:41:58', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplina`
--

INSERT INTO `disciplina` (`id`, `nome`, `dateCreate`, `dateModified`) VALUES
(1, 'Javascript', '2022-11-08 14:26:46', NULL),
(2, 'Treinamento Contabil', '2022-11-08 14:26:46', NULL),
(3, 'Treinamento Fiscal', '2022-11-08 14:32:28', NULL),
(4, 'Visao Geral da SCI', '2022-11-08 14:45:49', NULL),
(5, 'Introducao Softwares SCI', '2022-11-08 14:47:09', NULL),
(6, 'UML', '2022-11-08 14:48:46', NULL),
(7, 'Folha de Pagamento', '2022-11-08 15:14:49', NULL),
(8, 'Banco de Dados', '2022-11-08 15:14:49', NULL),
(9, 'PHP', '2022-11-08 15:17:39', NULL),
(24, 'Marketinggyyy', '2022-12-04 16:37:10', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `nivelAcesso`
--

CREATE TABLE `nivelAcesso` (
  `id` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `nivelAcesso`
--

INSERT INTO `nivelAcesso` (`id`, `nome`, `dateCreate`, `dateModified`) VALUES
(1, 'Administrador', '2022-11-07 15:25:00', NULL),
(2, 'Aluno', '2022-11-07 15:26:00', NULL),
(3, 'Professor(a)', '2022-11-18 16:46:43', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int NOT NULL,
  `nome` varchar(70) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(70) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `dataNascimento` date NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivelAcesso_id` int NOT NULL,
  `situacao_id` int NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `email`, `telefone`, `sexo`, `dataNascimento`, `senha`, `nivelAcesso_id`, `situacao_id`, `dateCreate`, `dateModified`) VALUES
(7, 'Rafael dos Santos', '07965835808', 'rafael@gmail.com', '47996337789', 'masculino', '1969-12-31', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, '2022-11-29 17:38:55', NULL),
(8, 'Rafael dos Santos', '07965835808', 'rafael@gmail.com', '47996337789', 'masculino', '1969-12-31', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, '2022-11-30 08:59:31', NULL),
(10, 'Reginaldo dos Santos', '07965435508', 'reginaldo@gmail.com', '47984627777', 'masculino', '2001-02-01', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, '2022-12-04 16:09:15', NULL),
(11, 'Reginaldxxx', '07965435666', 'reginaldooooo@gmail.com', '477777777777', 'masculinoo', '2001-12-30', '14e1b600b1fd579f47433b88e8d85291', 3, 1, '2022-12-04 16:23:10', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `situacao`
--

CREATE TABLE `situacao` (
  `id` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `situacao`
--

INSERT INTO `situacao` (`id`, `nome`, `dateCreate`, `dateModified`) VALUES
(1, 'Ativo', '2022-11-07 15:25:00', NULL),
(2, 'Inativo', '2022-11-07 15:26:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turma` (
  `id` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turma`
--

INSERT INTO `turma` (`id`, `nome`, `dateCreate`, `dateModified`) VALUES
(2, 'Desenvolvimento Delphi', '2022-11-08 16:01:13', NULL),
(5, 'Desenvolvimento Web', '2022-12-04 18:54:45', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nivelAcesso_id` (`nivelAcesso_id`),
  ADD KEY `situacao_id` (`situacao_id`);

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nivelAcesso_id` (`nivelAcesso_id`,`situacao_id`),
  ADD KEY `usuarios_ibfk_2` (`situacao_id`),
  ADD KEY `turma_id` (`turma_id`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `nivelAcesso`
--
ALTER TABLE `nivelAcesso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nivelAcesso_id` (`nivelAcesso_id`,`situacao_id`),
  ADD KEY `usuarios_ibfk_34` (`situacao_id`);

--
-- Índices de tabela `situacao`
--
ALTER TABLE `situacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `nivelAcesso`
--
ALTER TABLE `nivelAcesso`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `situacao`
--
ALTER TABLE `situacao`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `usuarios_ibfk_13` FOREIGN KEY (`situacao_id`) REFERENCES `situacao` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_22` FOREIGN KEY (`nivelAcesso_id`) REFERENCES `nivelAcesso` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_2` FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`nivelAcesso_id`) REFERENCES `nivelAcesso` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`situacao_id`) REFERENCES `situacao` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Restrições para tabelas `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `usuarios_ibfk_33` FOREIGN KEY (`nivelAcesso_id`) REFERENCES `nivelAcesso` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_34` FOREIGN KEY (`situacao_id`) REFERENCES `situacao` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
