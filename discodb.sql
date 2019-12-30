-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 30-Dez-2019 às 11:05
-- Versão do servidor: 5.6.39-83.1
-- versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `lib__colecao`
--

CREATE TABLE `lib__colecao` (
  `id` int(11) NOT NULL,
  `nome_colecao` varchar(255) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lib__colecao_disco`
--

CREATE TABLE `lib__colecao_disco` (
  `id` int(11) NOT NULL,
  `id_colecao` int(11) NOT NULL,
  `id_disco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lib__disco`
--

CREATE TABLE `lib__disco` (
  `id` int(11) NOT NULL,
  `nome_disco` varchar(255) NOT NULL,
  `nome_artista` varchar(255) NOT NULL,
  `estilo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lib__colecao`
--
ALTER TABLE `lib__colecao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lib__colecao_disco`
--
ALTER TABLE `lib__colecao_disco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_colecao` (`id_colecao`),
  ADD KEY `id_disco` (`id_disco`);

--
-- Indexes for table `lib__disco`
--
ALTER TABLE `lib__disco`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lib__colecao`
--
ALTER TABLE `lib__colecao`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lib__colecao_disco`
--
ALTER TABLE `lib__colecao_disco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lib__disco`
--
ALTER TABLE `lib__disco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `lib__colecao_disco`
--
ALTER TABLE `lib__colecao_disco`
  ADD CONSTRAINT `fk_id_colecao` FOREIGN KEY (`id_colecao`) REFERENCES `lib__colecao` (`id`),
  ADD CONSTRAINT `fk_id_disco` FOREIGN KEY (`id_disco`) REFERENCES `lib__disco` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
