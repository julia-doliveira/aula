-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Set-2023 às 18:44
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdgp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atrativos`
--

CREATE TABLE `atrativos` (
  `id_atrativos` int(11) NOT NULL,
  `nome_atrativo` varchar(45) NOT NULL,
  `lat_atrativo` varchar(45) NOT NULL,
  `log_atrativo` varchar(45) NOT NULL,
  `desc_atrativo` text NOT NULL,
  `img_atrativo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `atrativos`
--

INSERT INTO `atrativos` (`id_atrativos`, `nome_atrativo`, `lat_atrativo`, `log_atrativo`, `desc_atrativo`, `img_atrativo`) VALUES
(1, 'Matarazo', '-22.075085852528492', '-51.37120519908352', 'Um local cheio de histórias que se estabeleceu junto com a cidade, vem conhecer!', 'f'),
(2, 'Parque do povo', '-22.12350305722564', '-51.402342101398496', 'Parque municipal desta linda cidade, um lugar da família e principalmente do povão!', 'f'),
(3, 'Matarazo', '-22.075085852528492', '-51.37120519908352', 'Um local cheio de histórias que se estabeleceu junto com a cidade, vem conhecer!', 'f'),
(4, 'Parque do povo', '-22.12350305722564', '-51.402342101398496', 'Parque municipal desta linda cidade, um lugar da família e principalmente do povão!', 'f');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupons`
--

CREATE TABLE `cupons` (
  `id_cupons` int(11) NOT NULL,
  `codio_cupom` varchar(25) NOT NULL,
  `nome_cupom` varchar(45) NOT NULL,
  `validade_cupom` date NOT NULL,
  `valor_cupom` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cupons`
--

INSERT INTO `cupons` (`id_cupons`, `codio_cupom`, `nome_cupom`, `validade_cupom`, `valor_cupom`) VALUES
(1, '1', 'ganhe 2X mais', '2023-09-29', 60),
(2, '2', 'Ganhe bônus a mais em cada missão', '2023-09-22', 80),
(3, '1', 'ganhe 2X mais', '2023-09-29', 60),
(4, '2', 'Ganhe bônus a mais em cada missão', '2023-09-22', 80);

-- --------------------------------------------------------

--
-- Estrutura da tabela `descontos`
--

CREATE TABLE `descontos` (
  `id_desconto` int(11) NOT NULL,
  `valor_desconto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `descontos`
--

INSERT INTO `descontos` (`id_desconto`, `valor_desconto`) VALUES
(1, 30),
(2, 20),
(3, 15),
(4, 10),
(5, 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gamers`
--

CREATE TABLE `gamers` (
  `id_gamer` int(11) NOT NULL,
  `nome_gamer` varchar(40) NOT NULL,
  `senha_gamer` varchar(45) NOT NULL,
  `email_gamer` varchar(45) NOT NULL,
  `dtnascimento_gamer` date NOT NULL,
  `qtacessos_gamer` varchar(45) DEFAULT NULL,
  `personagens_idpersonagem` int(11) NOT NULL,
  `moeda_idmoeda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `gamers`
--

INSERT INTO `gamers` (`id_gamer`, `nome_gamer`, `senha_gamer`, `email_gamer`, `dtnascimento_gamer`, `qtacessos_gamer`, `personagens_idpersonagem`, `moeda_idmoeda`) VALUES
(1, 'Liane', 'li7891', 'liaLopes@gmail.com', '2013-09-04', '3', 1, 1),
(2, 'Felps', 'FEFe23432', 'Felpsgamer@gmail.com', '2014-09-02', '7', 4, 5),
(3, 'Liane', 'li7891', 'liaLopes@gmail.com', '2013-09-04', '3', 1, 1),
(4, 'Felps', 'FEFe23432', 'Felpsgamer@gmail.com', '2014-09-02', '7', 4, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_acessos`
--

CREATE TABLE `log_acessos` (
  `idlog_acesso` int(11) NOT NULL,
  `ultimoacesso` date NOT NULL,
  `qtd_acesso` int(11) DEFAULT NULL,
  `status_acesso` varchar(45) DEFAULT NULL,
  `gamers_idgamer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `log_acessos`
--

INSERT INTO `log_acessos` (`idlog_acesso`, `ultimoacesso`, `qtd_acesso`, `status_acesso`, `gamers_idgamer`) VALUES
(1, '2023-09-16', 3, 'ofline', 1),
(2, '2023-09-19', 8, 'online', 4),
(3, '2023-09-16', 3, 'ofline', 1),
(4, '2023-09-19', 8, 'online', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `missoes`
--

CREATE TABLE `missoes` (
  `id_missoe` int(11) NOT NULL,
  `nome_missao` varchar(45) NOT NULL,
  `desc_missao` text NOT NULL,
  `recom_missao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `missoes`
--

INSERT INTO `missoes` (`id_missoe`, `nome_missao`, `desc_missao`, `recom_missao`) VALUES
(1, 'Escape', 'Óh não! o parque do povo esta alagado e uma enorme enxurrada vem em sua direção. Escape da chuva do parque do povo!', 20),
(2, 'Encontre o erro', 'Essa foi por pouco! O Matarazo desabou e alguns pedaços caíram, encontre os 7 erros na imagem para reconstrui-lo', 15),
(3, 'Escape', 'Óh não! o parque do povo esta alagado e uma enorme enxurrada vem em sua direção. Escape da chuva do parque do povo!', 20),
(4, 'Encontre o erro', 'Essa foi por pouco! O Matarazo desabou e alguns pedaços caíram, encontre os 7 erros na imagem para reconstrui-lo', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `moeda`
--

CREATE TABLE `moeda` (
  `id_moeda` int(11) NOT NULL,
  `nome_moeda` varchar(45) NOT NULL,
  `valor_moeda` float NOT NULL,
  `imagem_moeda` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `moeda`
--

INSERT INTO `moeda` (`id_moeda`, `nome_moeda`, `valor_moeda`, `imagem_moeda`) VALUES
(1, 'once', 0, 'ft'),
(2, 'cash', 0, 'ftinha'),
(3, 'once', 5, 'img'),
(4, 'hope', 1, 'foto'),
(5, 'once', 5, 'img'),
(6, 'hope', 1, 'foto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personagens`
--

CREATE TABLE `personagens` (
  `id_personagem` int(11) NOT NULL,
  `nome_personagem` varchar(45) NOT NULL,
  `genero_personagem` enum('Masculino','Feminino') NOT NULL,
  `tipo_personagem` enum('Humano','Coruja','Mago') NOT NULL,
  `start_latitude` varchar(30) NOT NULL DEFAULT '-22.131551941280957',
  `start_longetude` varchar(30) DEFAULT ' -51.38981575160797',
  `skins_id_skins` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `personagens`
--

INSERT INTO `personagens` (`id_personagem`, `nome_personagem`, `genero_personagem`, `tipo_personagem`, `start_latitude`, `start_longetude`, `skins_id_skins`) VALUES
(1, 'Lexy', 'Feminino', 'Mago', '-22.131551941280957', ' -51.38981575160797', 4),
(2, 'Jack', 'Masculino', 'Humano', '-22.131551941280957', ' -51.38981575160797', 3),
(3, 'Lexy', 'Feminino', 'Mago', '-22.131551941280957', ' -51.38981575160797', 4),
(4, 'Jack', 'Masculino', 'Humano', '-22.131551941280957', ' -51.38981575160797', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personagens_has_missoes`
--

CREATE TABLE `personagens_has_missoes` (
  `personagens_idpersonagem` int(11) NOT NULL,
  `missoes_idmissoe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `personagens_has_missoes`
--

INSERT INTO `personagens_has_missoes` (`personagens_idpersonagem`, `missoes_idmissoe`) VALUES
(1, 1),
(1, 4),
(2, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocoes`
--

CREATE TABLE `promocoes` (
  `id_promocao` int(11) NOT NULL,
  `nome_promocao` varchar(45) NOT NULL,
  `dt_start_promocao` date NOT NULL,
  `dt_end_promocao` date NOT NULL,
  `desc_promocao` text NOT NULL,
  `ativa_promocao` enum('0','1') NOT NULL,
  `descontos_id_desconto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `promocoes`
--

INSERT INTO `promocoes` (`id_promocao`, `nome_promocao`, `dt_start_promocao`, `dt_end_promocao`, `desc_promocao`, `ativa_promocao`, `descontos_id_desconto`) VALUES
(5, 'Acesso do dia', '2023-09-19', '2023-09-20', 'Entre todos os dias e ganhe uma promoção', '', 1),
(6, 'Roleta da sorte', '2023-09-22', '2023-09-30', 'Rode a roleta da sorte para obter um cupom', '', 2),
(7, 'Acesso do dia', '2023-09-19', '2023-09-20', 'Entre todos os dias e ganhe uma promoção', '', 1),
(8, 'Roleta da sorte', '2023-09-22', '2023-09-30', 'Rode a roleta da sorte para obter um cupom', '', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `skins`
--

CREATE TABLE `skins` (
  `id_skins` int(11) NOT NULL,
  `categoria_skin` enum('Acessório','Chapéu','Conjunto','Manto','Mochila') NOT NULL,
  `nome_skin` varchar(45) NOT NULL,
  `descri_skin` text NOT NULL,
  `genero_skin` enum('Feminino','Masculino') NOT NULL,
  `valor_skin` float NOT NULL,
  `raridade_skin` enum('Comum','Rara','Épica','Lendaria') NOT NULL,
  `img1_skin` varchar(200) NOT NULL,
  `img2_skin` varchar(200) NOT NULL,
  `promocoes_id_promocao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `skins`
--

INSERT INTO `skins` (`id_skins`, `categoria_skin`, `nome_skin`, `descri_skin`, `genero_skin`, `valor_skin`, `raridade_skin`, `img1_skin`, `img2_skin`, `promocoes_id_promocao`) VALUES
(1, 'Chapéu', 'Chapéu assustador fantasmagórico Hallowen', 'Chapéu especial de hallowem, edição exclusiva, assustador, fantasmagórico e estiloso.   ', 'Masculino', 200, 'Rara', 'depois', 'depois', 6),
(2, 'Manto', 'Manto mágico', 'Este item melhora o desempenho do jogador em até 5X mais, elegante e misterioso, seu personagem ficara um arraso!', 'Feminino', 500, 'Lendaria', 'depois', 'depois', 8),
(3, 'Chapéu', 'Chapéu assustador fantasmagórico Hallowen', 'Chapéu especial de hallowem, edição exclusiva, assustador, fantasmagórico e estiloso.   ', 'Masculino', 200, 'Rara', 'depois', 'depois', 6),
(4, 'Manto', 'Manto mágico', 'Este item melhora o desempenho do jogador em até 5X mais, elegante e misterioso, seu personagem ficara um arraso!', 'Feminino', 500, 'Lendaria', 'depois', 'depois', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_vendas` int(11) NOT NULL,
  `hora_venda` time NOT NULL,
  `dia_venda` date NOT NULL,
  `skins_id_skins` int(11) NOT NULL,
  `cupons_id_cupons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_vendas`, `hora_venda`, `dia_venda`, `skins_id_skins`, `cupons_id_cupons`) VALUES
(1, '21:56:22', '2023-09-21', 1, 1),
(2, '08:56:22', '2023-09-28', 4, 4),
(3, '21:56:22', '2023-09-21', 1, 1),
(4, '08:56:22', '2023-09-28', 4, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atrativos`
--
ALTER TABLE `atrativos`
  ADD PRIMARY KEY (`id_atrativos`);

--
-- Índices para tabela `cupons`
--
ALTER TABLE `cupons`
  ADD PRIMARY KEY (`id_cupons`);

--
-- Índices para tabela `descontos`
--
ALTER TABLE `descontos`
  ADD PRIMARY KEY (`id_desconto`);

--
-- Índices para tabela `gamers`
--
ALTER TABLE `gamers`
  ADD PRIMARY KEY (`id_gamer`),
  ADD KEY `fk_gamers_personagens1_idx` (`personagens_idpersonagem`),
  ADD KEY `fk_gamers_moeda1_idx` (`moeda_idmoeda`);

--
-- Índices para tabela `log_acessos`
--
ALTER TABLE `log_acessos`
  ADD PRIMARY KEY (`idlog_acesso`),
  ADD KEY `fk_log_acessos_gamers_idx` (`gamers_idgamer`);

--
-- Índices para tabela `missoes`
--
ALTER TABLE `missoes`
  ADD PRIMARY KEY (`id_missoe`);

--
-- Índices para tabela `moeda`
--
ALTER TABLE `moeda`
  ADD PRIMARY KEY (`id_moeda`);

--
-- Índices para tabela `personagens`
--
ALTER TABLE `personagens`
  ADD PRIMARY KEY (`id_personagem`),
  ADD KEY `fk_personagens_skins1_idx` (`skins_id_skins`);

--
-- Índices para tabela `personagens_has_missoes`
--
ALTER TABLE `personagens_has_missoes`
  ADD PRIMARY KEY (`personagens_idpersonagem`,`missoes_idmissoe`),
  ADD KEY `fk_personagens_has_missoes_missoes1_idx` (`missoes_idmissoe`),
  ADD KEY `fk_personagens_has_missoes_personagens1_idx` (`personagens_idpersonagem`);

--
-- Índices para tabela `promocoes`
--
ALTER TABLE `promocoes`
  ADD PRIMARY KEY (`id_promocao`),
  ADD KEY `fk_promocoes_descontos1_idx` (`descontos_id_desconto`);

--
-- Índices para tabela `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`id_skins`),
  ADD KEY `fk_skins_promocoes1_idx` (`promocoes_id_promocao`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_vendas`),
  ADD KEY `fk_vendas_skins1_idx` (`skins_id_skins`),
  ADD KEY `fk_vendas_cupons1_idx` (`cupons_id_cupons`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atrativos`
--
ALTER TABLE `atrativos`
  MODIFY `id_atrativos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cupons`
--
ALTER TABLE `cupons`
  MODIFY `id_cupons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `descontos`
--
ALTER TABLE `descontos`
  MODIFY `id_desconto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de tabela `gamers`
--
ALTER TABLE `gamers`
  MODIFY `id_gamer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `log_acessos`
--
ALTER TABLE `log_acessos`
  MODIFY `idlog_acesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `missoes`
--
ALTER TABLE `missoes`
  MODIFY `id_missoe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `moeda`
--
ALTER TABLE `moeda`
  MODIFY `id_moeda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `personagens`
--
ALTER TABLE `personagens`
  MODIFY `id_personagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `promocoes`
--
ALTER TABLE `promocoes`
  MODIFY `id_promocao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `skins`
--
ALTER TABLE `skins`
  MODIFY `id_skins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_vendas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `gamers`
--
ALTER TABLE `gamers`
  ADD CONSTRAINT `fk_gamers_moeda1` FOREIGN KEY (`moeda_idmoeda`) REFERENCES `moeda` (`id_moeda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gamers_personagens1` FOREIGN KEY (`personagens_idpersonagem`) REFERENCES `personagens` (`id_personagem`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `log_acessos`
--
ALTER TABLE `log_acessos`
  ADD CONSTRAINT `fk_log_acessos_gamers` FOREIGN KEY (`gamers_idgamer`) REFERENCES `gamers` (`id_gamer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `personagens`
--
ALTER TABLE `personagens`
  ADD CONSTRAINT `fk_personagens_skins1` FOREIGN KEY (`skins_id_skins`) REFERENCES `skins` (`id_skins`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `personagens_has_missoes`
--
ALTER TABLE `personagens_has_missoes`
  ADD CONSTRAINT `fk_personagens_has_missoes_missoes1` FOREIGN KEY (`missoes_idmissoe`) REFERENCES `missoes` (`id_missoe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personagens_has_missoes_personagens1` FOREIGN KEY (`personagens_idpersonagem`) REFERENCES `personagens` (`id_personagem`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `promocoes`
--
ALTER TABLE `promocoes`
  ADD CONSTRAINT `fk_promocoes_descontos1` FOREIGN KEY (`descontos_id_desconto`) REFERENCES `descontos` (`id_desconto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `skins`
--
ALTER TABLE `skins`
  ADD CONSTRAINT `fk_skins_promocoes1` FOREIGN KEY (`promocoes_id_promocao`) REFERENCES `promocoes` (`id_promocao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_cupons1` FOREIGN KEY (`cupons_id_cupons`) REFERENCES `cupons` (`id_cupons`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_skins1` FOREIGN KEY (`skins_id_skins`) REFERENCES `skins` (`id_skins`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
