-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Maio-2019 às 03:58
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facefacs`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentar`
--

CREATE TABLE `comentar` (
  `id_comentario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comentar`
--

INSERT INTO `comentar` (`id_comentario`, `id_usuario`, `id_post`, `comentario`, `data_registro`) VALUES
(1, 10, 1, 'Boa!', '2019-05-27 19:25:42'),
(2, 10, 2, 'Teste', '2019-05-27 20:06:07'),
(3, 10, 2, 'Boa', '2019-05-27 20:06:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtir`
--

CREATE TABLE `curtir` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curtir`
--

INSERT INTO `curtir` (`id`, `id_post`, `id_usuario`, `data_registro`) VALUES
(2, 2, 10, '2019-05-27 20:05:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `post` varchar(140) NOT NULL,
  `data_inclusao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url_img_post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`id_post`, `id_usuario`, `post`, `data_inclusao`, `url_img_post`) VALUES
(1, 11, 'Boa Noite!', '2019-05-27 19:11:09', 'https://i.pinimg.com/originals/de/f6/96/def69643889ee29e232637646e839064.jpg'),
(2, 16, 'Teste', '2019-05-27 20:04:47', 'https://www.baixarvideosgratis.com.br/imagens/entretenimento/legais/um-video-super-legal-com-imagens-do-por-do-sol-muito-lindo.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitar_amizade`
--

CREATE TABLE `solicitar_amizade` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `solicitar_id_usuario` int(11) NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `solicitar_amizade`
--

INSERT INTO `solicitar_amizade` (`id`, `id_usuario`, `solicitar_id_usuario`, `data_registro`) VALUES
(1, 10, 15, '2019-05-27 22:27:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `url_img_user` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `senha`, `url_img_user`) VALUES
(10, 'Fernanda Aflitos', 'nanda@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'https://img1.topimagens.com/ti/leoes/leoes_001.jpg'),
(11, 'Lais', 'lais@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'https://i.pinimg.com/originals/22/a2/19/22a21941d8e5fce3c6e9e3a8a258cef4.jpg'),
(13, 'Ilton', 'ilton@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png'),
(14, 'Guilherme', 'gui@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png'),
(15, 'Andre', 'andre@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png'),
(16, 'Felipe', 'felipe@gmial.com', '25f9e794323b453885f5181f1b624d0b', 'https://www.baixarvideosgratis.com.br/imagens/entretenimento/legais/um-video-super-legal-com-imagens-do-por-do-sol-muito-lindo.jpg'),
(17, 'Amanda', 'amanda@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_amigos`
--

CREATE TABLE `usuarios_amigos` (
  `id_usuarios_amigos` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `amigo_id_usuario` int(11) NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios_amigos`
--

INSERT INTO `usuarios_amigos` (`id_usuarios_amigos`, `id_usuario`, `amigo_id_usuario`, `data_registro`) VALUES
(1, 10, 11, '2019-05-27 19:11:46'),
(2, 10, 16, '2019-05-27 20:05:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentar`
--
ALTER TABLE `comentar`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indexes for table `curtir`
--
ALTER TABLE `curtir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `solicitar_amizade`
--
ALTER TABLE `solicitar_amizade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  ADD PRIMARY KEY (`id_usuarios_amigos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentar`
--
ALTER TABLE `comentar`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `curtir`
--
ALTER TABLE `curtir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `solicitar_amizade`
--
ALTER TABLE `solicitar_amizade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  MODIFY `id_usuarios_amigos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
