-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 03-Nov-2019 às 19:46
-- Versão do servidor: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discodb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `colecao`
--

CREATE TABLE `colecao` (
  `id` int(10) NOT NULL,
  `nome_colecao` varchar(255) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disco`
--

CREATE TABLE `disco` (
  `id` int(11) NOT NULL,
  `id_colecao` int(11) NOT NULL,
  `nome_disco` varchar(255) NOT NULL,
  `nome_artista` varchar(255) NOT NULL,
  `estilo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colecao`
--
ALTER TABLE `colecao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disco`
--
ALTER TABLE `disco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_colecao` (`id_colecao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colecao`
--
ALTER TABLE `colecao`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `disco`
--
ALTER TABLE `disco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
