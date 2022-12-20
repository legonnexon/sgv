-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Abr-2022 às 12:17
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sgv`
--
CREATE DATABASE IF NOT EXISTS `sgv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sgv`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_almox`
--

CREATE TABLE `c_almox` (
  `id_almox` int(11) NOT NULL,
  `nome_almox` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_almox`
--

INSERT INTO `c_almox` (`id_almox`, `nome_almox`) VALUES
(1, 'Almoxarifado Central');

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_capa_em`
--

CREATE TABLE `c_capa_em` (
  `id_capaem` bigint(20) NOT NULL,
  `cnpj_capaem` bigint(14) DEFAULT NULL,
  `cpf_capaem` bigint(11) DEFAULT NULL,
  `rz_social_capaem` varchar(100) NOT NULL,
  `numero_notafisc_capaem` varchar(100) NOT NULL,
  `dt_entrada` date NOT NULL,
  `data_notafisc` date NOT NULL,
  `cep_capaem` varchar(8) DEFAULT NULL,
  `uf_capaem` char(2) DEFAULT NULL,
  `cidade_capaem` varchar(100) DEFAULT NULL,
  `endereco_capaem` varchar(100) DEFAULT NULL,
  `bairro_capaem` varchar(100) DEFAULT NULL,
  `telefone_capaem` varchar(50) DEFAULT NULL,
  `email_capaem` varchar(50) DEFAULT NULL,
  `vl_conferencia` double(15,2) DEFAULT NULL,
  `id_almox_capaem_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_capa_em`
--

INSERT INTO `c_capa_em` (`id_capaem`, `cnpj_capaem`, `cpf_capaem`, `rz_social_capaem`, `numero_notafisc_capaem`, `dt_entrada`, `data_notafisc`, `cep_capaem`, `uf_capaem`, `cidade_capaem`, `endereco_capaem`, `bairro_capaem`, `telefone_capaem`, `email_capaem`, `vl_conferencia`, `id_almox_capaem_FK`) VALUES
(95, 75315333009670, NULL, 'ATACADAO S.A.', '7896', '2022-02-25', '2022-02-25', '14.094-0', 'SP', 'RIBEIRAO PRETO', 'AV HENRY NESTLE, S/N', 'SETOR LESTE', '(16) 3995-9669/ (16) 3995-9658', 'tributario@atacadao.com.br', 100.00, 1),
(102, 75315333009670, NULL, 'ATACADAO S.A.', '4563', '2022-02-25', '2022-02-25', '14.094-0', 'SP', 'RIBEIRAO PRETO', 'AV HENRY NESTLE, S/N', 'SETOR LESTE', '(16) 3995-9669/ (16) 3995-9658', 'tributario@atacadao.com.br', 50.00, 1),
(103, 75315333000109, NULL, 'ATACADAO S.A.', '1256', '2022-02-25', '2022-02-25', '02.170-9', 'SP', 'SAO PAULO', 'AV MOVAN DIAS DE FIGUEIREDO, 6169', 'VL MARIA BAIXA', '(11) 2967-8261/ (11) 2967-8284', 'tributario@atacadao.com.br', 100.00, 1),
(104, 47508411000156, NULL, 'COMPANHIA BRASILEIRA DE DISTRIBUICAO', '785', '2022-03-03', '2022-03-03', '01.402-0', 'SP', 'SAO PAULO', 'AV BRIGADEIRO LUIZ ANTONIO, 3142', 'JD PAULISTA', '(11) 4004-0010', 'paralegal@grupopaodeacucar.com.br', 150.00, 1),
(105, 51010502000134, NULL, 'SUPERMERCADO RONDON LTDA', '7893', '2022-03-11', '2022-03-04', '16.021-3', 'SP', 'ARACATUBA', 'R MARCOS TOQUETAO, 514', 'JUSSARA', '(18) 3631-8000', 'atendimento@supermercadosrondon.com.br', 200.00, 1),
(106, 51010502000134, NULL, 'SUPERMERCADO RONDON LTDA', '78914', '2022-03-05', '2022-03-04', '16.021-3', 'SP', 'ARACATUBA', 'R MARCOS TOQUETAO, 514', 'JUSSARA', '(18) 3631-8000', 'atendimento@supermercadosrondon.com.br', 100.00, 1),
(107, 76430438000686, NULL, 'IRMAOS MUFFATO S.A', '456321', '2022-03-04', '2022-03-04', '81.020-7', 'PR', 'CURITIBA', 'R EDUARDO CARLOS PEREIRA, 3605', 'PORTAO', '(41) 2480-881', 'muffato@certto.com.br', 100.00, 1),
(120, 7313798000170, NULL, 'COMERCIAL ATACADISTA DE ALIMENTOS STOCK LTDA', '1078', '2022-03-07', '2022-03-07', '88.350-1', 'SC', 'BRUSQUE', 'R RUA GERMANO SCHAEFER, 25', 'CENTRO', '(47) 3351-1099', 'contabil@archer.com.br', 100.00, 1),
(121, 7313798000170, NULL, 'COMERCIAL ATACADISTA DE ALIMENTOS STOCK LTDA', '4578', '2022-03-07', '2022-03-07', '88.350-1', 'SC', 'BRUSQUE', 'R RUA GERMANO SCHAEFER, 25', 'CENTRO', '(47) 3351-1099', 'contabil@archer.com.br', 100.00, 1),
(122, 7313798000170, NULL, 'COMERCIAL ATACADISTA DE ALIMENTOS STOCK LTDA', '1048', '2022-03-07', '2022-03-07', '88.350-1', 'SC', 'BRUSQUE', 'R RUA GERMANO SCHAEFER, 25', 'CENTRO', '(47) 3351-1099', 'contabil@archer.com.br', 100.00, 1),
(123, 17457404000616, NULL, 'ATACADAO DIA A DIA S.A', '7890', '2022-03-07', '2022-03-07', '74.593-6', 'GO', 'GOIANIA', 'AV HORACIO COSTA SILVA, SN', 'CHACARAS RIO BRANCO', '(61) 3404-9200', 'contabilidade@atacadaodiaadia.com.br', 100.00, 1),
(124, 45543915000181, NULL, 'CARREFOUR COMERCIO E INDUSTRIA LTDA', '7863', '2022-03-09', '2022-03-09', '05.690-0', 'SP', 'SAO PAULO', 'R GEORGE EASTMAN, 213', 'VL TRAMONTANO', '', 'carrefour@carrefour.com', 100.00, 1),
(125, 53045266000621, NULL, 'JAD ZOGHEIB & CIA LTDA', '10', '2022-03-09', '2022-03-09', '17.012-2', 'SP', 'BAURU', 'AV NACOES UNIDAS, 36-36', 'JARDIM CONTORNO', '(14) 3235-2004', 'wgarcia@confianca.com.br', 100.00, 1),
(126, 47508411022559, NULL, 'COMPANHIA BRASILEIRA DE DISTRIBUICAO', '784', '2022-03-21', '2022-03-21', '74.150-0', 'GO', 'GOIANIA', 'AV PORTUGAL, S/N', 'SETOR MARISTA', '(11) 3050-9000', 'paralegal@grupopaodeacucar.com.br', 140.00, 1),
(131, 1615814000101, NULL, 'UNILEVER BRASIL INDUSTRIAL LTDA', '4578', '2022-03-23', '2022-03-23', '04.794-0', 'SP', 'SAO PAULO', 'AV DAS NACOES UNIDAS, 14261', 'VILA GERTRUDES', '(11) 3568-8000', 'fiscal.jk1@unilever.com', 100.00, 1),
(132, 1615814000101, NULL, 'UNILEVER BRASIL INDUSTRIAL LTDA', '7852', '2022-03-23', '2022-03-23', '04.794-0', 'SP', 'SAO PAULO', 'AV DAS NACOES UNIDAS, 14261', 'VILA GERTRUDES', '(11) 3568-8000', 'fiscal.jk1@unilever.com', 100.00, 1),
(133, 3499243000104, NULL, 'IBAZAR.COM ATIVIDADES DE INTERNET LTDA.', '7893', '2022-04-06', '2022-04-06', '06.233-9', 'SP', 'OSASCO', 'AV DAS NACOES UNIDAS 3000, 3003', 'BONFIM', '(11) 2543-4155', 'consultasmlb@mercadolivre.com', 100.00, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_fornecedor`
--

CREATE TABLE `c_fornecedor` (
  `id_forn` bigint(20) NOT NULL,
  `cnpj_forn` bigint(14) DEFAULT NULL,
  `cpf_forn` bigint(11) DEFAULT NULL,
  `rz_social_forn` varchar(100) NOT NULL,
  `cep_forn` varchar(8) DEFAULT NULL,
  `uf_forn` varchar(2) DEFAULT NULL,
  `cidade_forn` varchar(100) DEFAULT NULL,
  `endereco_forn` varchar(100) DEFAULT NULL,
  `bairro_forn` varchar(100) DEFAULT NULL,
  `telefone_forn` varchar(250) DEFAULT NULL,
  `email_forn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_fornecedor`
--

INSERT INTO `c_fornecedor` (`id_forn`, `cnpj_forn`, `cpf_forn`, `rz_social_forn`, `cep_forn`, `uf_forn`, `cidade_forn`, `endereco_forn`, `bairro_forn`, `telefone_forn`, `email_forn`) VALUES
(19, 71985412000176, NULL, 'Atacadão Rio verde LTD.', '74680-12', 'GO', 'Rio verde', 'Rio verde', 'Lurde', '62 32361478', 'teste@teste.com'),
(28, 17031642000150, NULL, 'Atacadão Boa Sorte', '76893-69', 'SP', 'Araçatuba', 'Rua das violetas, 789 ', 'Concordia', '189999-8989', 'teste@gmail.com'),
(29, 17109301000150, NULL, 'Atacadão Arçatuba LTD', '76893-22', 'SP', 'Araçatuba', 'Rua rio Negro, 999', 'Iporã', '18 3236-7896', 'teste@teste.com'),
(30, 17109301000150, NULL, 'Atacadão Arçatuba LTD', '76893-22', 'SP', 'Araçatuba', 'Rua rio Negro, 999', 'Iporã', '18 3236-7896', 'teste@teste.com'),
(31, 71985412000176, NULL, 'Atacadão Rio verde LTD.', '74680-12', 'GO', 'Rio verde', 'Rio verde', 'Lurde', '62 32361478', 'teste@teste.com'),
(32, 82807675000101, NULL, 'Atacadao raio de sul', '99999999', 'sp', 'araçatuba', 'teste', 'teste', '1899999999', 'teste@teste.com'),
(39, 7313798000170, NULL, 'COMERCIAL ATACADISTA DE ALIMENTOS STOCK LTDA', '88.350-1', 'SC', 'BRUSQUE', 'R RUA GERMANO SCHAEFER, 25', 'CENTRO', '(47) 3351-1099', 'contabil@archer.com.br'),
(40, 17457404000616, NULL, 'ATACADAO DIA A DIA S.A', '74.593-6', 'GO', 'GOIANIA', 'AV HORACIO COSTA SILVA, SN', 'CHACARAS RIO BRANCO', '(61) 3404-9200', 'contabilidade@atacadaodiaadia.com.br'),
(41, 45543915000181, NULL, 'CARREFOUR COMERCIO E INDUSTRIA LTDA', '05.690-0', 'SP', 'SAO PAULO', 'R GEORGE EASTMAN, 213', 'VL TRAMONTANO', '', 'carrefour@carrefour.com'),
(42, 53045266000621, NULL, 'JAD ZOGHEIB & CIA LTDA', '17.012-2', 'SP', 'BAURU', 'AV NACOES UNIDAS, 36-36', 'JARDIM CONTORNO', '(14) 3235-2004', 'wgarcia@confianca.com.br'),
(43, 47508411022559, NULL, 'COMPANHIA BRASILEIRA DE DISTRIBUICAO', '74.150-0', 'GO', 'GOIANIA', 'AV PORTUGAL, S/N', 'SETOR MARISTA', '(11) 3050-9000', 'paralegal@grupopaodeacucar.com.br'),
(44, 1615814000101, NULL, 'UNILEVER BRASIL INDUSTRIAL LTDA', '04.794-0', 'SP', 'SAO PAULO', 'AV DAS NACOES UNIDAS, 14261', 'VILA GERTRUDES', '(11) 3568-8000', 'fiscal.jk1@unilever.com'),
(45, 3499243000104, NULL, 'IBAZAR.COM ATIVIDADES DE INTERNET LTDA.', '06.233-9', 'SP', 'OSASCO', 'AV DAS NACOES UNIDAS 3000, 3003', 'BONFIM', '(11) 2543-4155', 'consultasmlb@mercadolivre.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_inutilizacao`
--

CREATE TABLE `c_inutilizacao` (
  `id_inu` int(11) NOT NULL,
  `hora_inu` time NOT NULL,
  `data_inu` date NOT NULL,
  `id_almox_inu_fk` int(11) NOT NULL,
  `motivo_inu` varchar(150) NOT NULL,
  `lote_inu` varchar(100) NOT NULL,
  `id_mat_inu` int(11) NOT NULL,
  `desc_mat_inu` varchar(250) NOT NULL,
  `medida_inu` varchar(30) NOT NULL,
  `qtd_estoque_inu` decimal(15,2) NOT NULL,
  `preco_medio_item_inu` decimal(15,2) NOT NULL,
  `preco_total_item_inu` decimal(15,2) NOT NULL,
  `marca_mat_inu` varchar(150) NOT NULL,
  `data_fab_inu` date NOT NULL,
  `data_val_inu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_inutilizacao`
--

INSERT INTO `c_inutilizacao` (`id_inu`, `hora_inu`, `data_inu`, `id_almox_inu_fk`, `motivo_inu`, `lote_inu`, `id_mat_inu`, `desc_mat_inu`, `medida_inu`, `qtd_estoque_inu`, `preco_medio_item_inu`, `preco_total_item_inu`, `marca_mat_inu`, `data_fab_inu`, `data_val_inu`) VALUES
(1, '14:42:00', '2021-10-23', 1, 'Material Vencido', 'LT08', 47, 'Extrato de tomate 100 gramas', 'Un', '100.00', '1.00', '100.00', 'Elefante', '2021-10-15', '2021-10-15'),
(4, '15:25:00', '2021-10-23', 1, 'Material Vencido', 'LT09', 46, 'Macarrão instantâneo', 'Un', '100.00', '1.50', '150.00', 'Nissin', '2021-10-15', '2021-10-16'),
(5, '00:00:00', '0000-00-00', 1, 'Material Vencido', '1', 48, 'Creme dental com fluor', 'Un', '50.00', '1.00', '50.00', 'Colgate', '2021-05-25', '2021-10-25'),
(6, '14:01:00', '2022-03-07', 1, 'Material Vencido', '1', 49, 'Sabonete', 'Un', '50.00', '1.00', '50.00', 'Rexona', '2021-10-23', '2021-10-24'),
(7, '14:34:00', '2022-03-07', 1, 'Material Vencido', '1', 50, 'Leite po', 'Un', '2.00', '5.00', '100.00', 'vAQUINHA', '2021-11-08', '2021-11-30'),
(8, '14:35:00', '2022-03-07', 1, 'Material Vencido', '1', 54, 'Wisky 10 anos', 'Un', '30.00', '30.00', '30.00', 'Old Par', '2022-02-24', '2022-02-24'),
(9, '14:47:00', '2022-03-07', 1, 'Material Vencido', '1', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '9.00', '19.00', '19.00', 'Cristal', '2021-01-01', '2022-03-06'),
(10, '14:52:00', '2022-03-07', 1, 'Material Vencido', 'LT03', 43, 'Farinha de trigo pacote 1 kg', 'Un', '50.00', '3.90', '195.00', 'Cristal', '2021-03-01', '2022-02-28'),
(11, '22:18:00', '0000-00-00', 1, 'Material Vencido', '1', 51, 'Creme dental 75 gramas', 'Un', '1.00', '3.50', '3.50', 'COLGATE TOTAL 10', '2022-02-09', '2022-02-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_inventario_item`
--

CREATE TABLE `c_inventario_item` (
  `id_inv` int(11) NOT NULL,
  `hora_inv` time DEFAULT NULL,
  `data_inv` date DEFAULT NULL,
  `id_almox_inv_FK` int(11) DEFAULT NULL,
  `lote_inv` varchar(100) DEFAULT NULL,
  `id_mat_inv` int(11) DEFAULT NULL,
  `desc_mat_inv` varchar(250) DEFAULT NULL,
  `medida_inv` varchar(250) DEFAULT NULL,
  `qtd_em_estoque_inv` decimal(15,2) DEFAULT NULL,
  `qtd_novo_estoque_inv` decimal(15,2) DEFAULT NULL,
  `preco_medio_inv` decimal(15,2) DEFAULT NULL,
  `preco_total_item` decimal(15,2) DEFAULT NULL,
  `motivo_inv` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_inventario_item`
--

INSERT INTO `c_inventario_item` (`id_inv`, `hora_inv`, `data_inv`, `id_almox_inv_FK`, `lote_inv`, `id_mat_inv`, `desc_mat_inv`, `medida_inv`, `qtd_em_estoque_inv`, `qtd_novo_estoque_inv`, `preco_medio_inv`, `preco_total_item`, `motivo_inv`) VALUES
(2, '11:59:00', '2021-10-15', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '12.00', '11.00', '19.00', '209.00', 'Ajuste de Estoque'),
(3, '11:59:00', '2021-10-15', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '12.00', '11.00', '19.00', '209.00', 'Ajuste de Estoque'),
(4, '11:59:00', '2021-10-15', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '12.00', '11.00', '19.00', '209.00', 'Ajuste de Estoque'),
(5, '00:00:00', '0000-00-00', 1, 'LT02', 42, 'Feijão preto tipo 1 pacote 1 kg', 'Un', '10.00', '9.00', '5.60', '50.40', 'Ajuste de Estoque'),
(6, '00:00:00', '0000-00-00', 1, 'LT02', 42, 'Feijão preto tipo 1 pacote 1 kg', 'Un', '10.00', '9.00', '5.60', '50.40', 'Ajuste de Estoque'),
(7, '00:00:00', '0000-00-00', 1, 'LT09', 46, 'Macarrão instantâneo', 'Un', '250.00', '100.00', '1.50', '150.00', 'Ajuste de Estoque'),
(8, '00:00:00', '0000-00-00', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '12.00', '11.00', '19.00', '209.00', 'Ajuste de Estoque'),
(9, '22:44:00', '2021-10-18', 1, 'LT02', 42, 'Feijão preto tipo 1 pacote 1 kg', 'Un', '9.00', '8.00', '5.60', '44.80', 'Ajuste de Estoque'),
(10, '21:23:00', '2021-10-21', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '11.00', '9.00', '19.00', '171.00', 'Ajuste de Estoque'),
(11, '21:36:00', '2021-10-25', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '9.00', '7.00', '19.00', '133.00', 'Ajuste de Estoque'),
(12, '00:00:00', '0000-00-00', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '7.00', '8.00', '19.00', '152.00', 'Ajuste de Estoque'),
(13, '00:00:00', '0000-00-00', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '8.00', '10.00', '19.00', '1.00', NULL),
(14, '00:00:00', '0000-00-00', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '10.00', '1.00', '19.00', '19.00', NULL),
(15, '00:00:00', '0000-00-00', 1, 'LT02', 42, 'Feijão preto tipo 1 pacote 1 kg', 'Un', '8.00', '1.00', '5.60', '0.00', 'Ajuste de Estoque'),
(16, '21:34:00', '2022-02-07', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '0.00', '2.00', '19.00', '38.00', 'Ajuste de Estoque'),
(17, '21:41:00', '2022-02-07', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '0.00', '5.00', '19.00', '95.00', 'Ajuste de Estoque'),
(18, '21:44:00', '2022-02-07', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '0.00', '5.00', '19.00', '95.00', 'Ajuste de Estoque'),
(19, '22:12:00', '2022-02-07', 1, 'LT01', 41, 'Arroz tipo 1 pacote 5 kg agulhinha', 'Un', '0.00', '10.00', '19.00', '190.00', 'Ajuste de Estoque'),
(20, '00:00:00', '0000-00-00', 1, 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '7.00', '0.00', '14.95', '0.00', 'Ajuste de Estoque'),
(21, '22:24:00', '2022-02-07', 1, 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '7.00', '8.00', '14.95', '119.60', 'Ajuste de Estoque'),
(22, '10:52:00', '2022-03-04', 1, 'N22122020', 102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', 'Pc', '8.00', '5.00', '25.00', '125.00', 'Ajuste de Estoque'),
(23, '10:53:00', '2022-03-04', 1, 'N22122020', 102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', 'Pc', '5.00', '6.00', '25.00', '150.00', 'Ajuste de Estoque'),
(24, '21:23:00', '2022-03-04', 1, 'LT120', 107, 'Caderno de 10 matérias - 200 folhas', 'Un', '40.00', '45.00', '4.33', '194.85', 'Ajuste de Estoque'),
(25, '22:24:00', '2022-03-04', 1, 'LT120', 107, 'Caderno de 10 matérias - 200 folhas', 'Un', '50.00', '45.00', '6.50', '292.50', 'Ajuste de Estoque'),
(26, '13:38:00', '2022-03-08', 1, 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '5.00', '5.00', '14.95', '74.75', 'Ajuste de Estoque'),
(27, '21:21:00', '2022-03-09', 1, 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '3.00', '6.00', '14.95', '89.70', 'Ajuste de Estoque'),
(28, '21:43:00', '2022-03-23', 1, 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '5.00', '5.00', '14.95', '6.00', 'Ajuste de Estoque'),
(29, '21:43:00', '2022-03-23', 1, 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '5.00', '6.00', '14.95', '89.70', 'Ajuste de Estoque'),
(30, '19:15:00', '2022-03-29', 1, 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '2.00', '4.00', '14.95', '59.80', 'Ajuste de Estoque'),
(31, '20:34:00', '2022-04-06', 1, 'LT04', 44, 'Farinha de milho pacote 500 gramas', 'Un', '4000.00', '3990.00', '1.00', '3990.00', 'Ajuste de Estoque');

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_item_em`
--

CREATE TABLE `c_item_em` (
  `id_item_em` bigint(20) NOT NULL,
  `nome_ite` text NOT NULL,
  `det_ite` text DEFAULT NULL,
  `marca_ite` varchar(100) DEFAULT NULL,
  `grupo_ite` varchar(100) DEFAULT NULL,
  `medida_ite` char(2) NOT NULL,
  `qtd_ite` double(15,2) NOT NULL,
  `vl_unit_ite` double(15,2) NOT NULL,
  `vl_total_ite` double(15,2) NOT NULL,
  `id_capaem` bigint(20) NOT NULL,
  `numero_notafisc_capaem` varchar(100) NOT NULL,
  `lote_prod_ite_nf` varchar(100) NOT NULL,
  `data_fab_prod_ite_nf` date DEFAULT NULL,
  `data_valid_prod_ite_nf` date DEFAULT NULL,
  `id_almox_item_em_FK` int(11) NOT NULL,
  `codBarItemNf` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_item_em`
--

INSERT INTO `c_item_em` (`id_item_em`, `nome_ite`, `det_ite`, `marca_ite`, `grupo_ite`, `medida_ite`, `qtd_ite`, `vl_unit_ite`, `vl_total_ite`, `id_capaem`, `numero_notafisc_capaem`, `lote_prod_ite_nf`, `data_fab_prod_ite_nf`, `data_valid_prod_ite_nf`, `id_almox_item_em_FK`, `codBarItemNf`) VALUES
(190, 'Vinho tinto 750 ml', NULL, 'Quinto do morgado', 'Gêneros alimenticios', 'Un', 5.00, 12.00, 60.00, 95, '7896', 'LT100', '2021-07-25', '2022-05-25', 1, 0),
(191, 'Vinho Tinto Branco', NULL, 'MIORANZA', 'Gêneros alimenticios', 'Un', 4.00, 10.00, 40.00, 95, '7896', 'LT101', '2022-02-25', '2022-02-25', 1, 0),
(192, 'Vinho tinto 750 ml', NULL, 'Quinto do morgado', 'Gêneros alimenticios', 'Un', 5.00, 10.00, 50.00, 102, '4563', 'LT100', '2021-07-25', '2022-05-25', 1, 0),
(246, 'Bolacha Waffer recheado sabor chocolate 110 g', NULL, 'Nestle Passatempo', 'Gêneros alimenticios', 'Un', 1.00, 1.00, 1.00, 103, '1256', '2020122110', '2021-09-20', '2022-09-20', 1, 7891000337363),
(247, 'Concentrado líquido para refresco de fruta, sabor cajú 500 ml', NULL, 'SERIGY', 'Gêneros alimenticios', 'Un', 10.00, 2.50, 25.00, 104, '785', 'L041002', '2021-10-25', '2022-10-22', 1, 7898406780021),
(249, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Material de Limpeza', 'Un', 2.00, 25.00, 50.00, 104, '785', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(251, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Gêneros alimenticios', 'Un', 2.00, 25.00, 50.00, 104, '785', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(252, 'Caderno de 10 matérias - 200 folhas', NULL, 'KBOM', 'Material de Expediente', 'Un', 20.00, 7.00, 140.00, 105, '7893', 'LT120', '2022-02-01', '2022-03-26', 1, 7891321043806),
(255, 'Caderno de 10 matérias - 200 folhas', NULL, 'KBOM', 'Material de Expediente', 'Un', 10.00, 6.00, 60.00, 105, '7893', 'LT120', '2022-02-01', '2022-03-26', 1, 7891321043806),
(256, 'AGUA MINERAL 500 ML', NULL, 'COCA COLA', 'Gêneros alimenticios', 'Un', 10.00, 2.50, 25.00, 107, '456321', 'LT180', '2022-03-02', '2022-03-02', 1, 7898022285139),
(257, 'AGUA MINERAL 500 ML', NULL, 'COCA COLA', 'Gêneros alimenticios', 'Un', 5.00, 3.50, 17.50, 107, '456321', 'LT180', '2022-03-02', '2022-03-02', 1, 7898022285139),
(258, 'AGUA MINERAL 500 ML', NULL, 'COCA COLA', 'Gêneros alimenticios', 'Un', 10.00, 5.75, 57.50, 107, '456321', 'LT180', '2022-03-02', '2022-03-02', 1, 7898022285139),
(263, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Gêneros alimenticios', 'Un', 2.00, 5.00, 10.00, 106, '78914', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(264, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Gêneros alimenticios', 'Un', 2.00, 6.00, 12.00, 106, '78914', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(265, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Gêneros alimenticios', 'Un', 4.00, 7.00, 28.00, 106, '78914', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(266, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Material de Limpeza', 'Un', 1.00, 10.00, 10.00, 106, '78914', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(267, 'Bolacha de sal sabor presunto 23,5g', NULL, 'CLUBE SOCIAL', 'Gêneros alimenticios', 'Un', 10.00, 2.00, 20.00, 123, '7890', 'VS254215014', '2022-03-07', '2022-03-07', 1, 7622210641557),
(268, 'Bolacha de sal sabor presunto 23,5g', NULL, 'CLUBE SOCIAL', 'Gêneros alimenticios', 'Un', 20.00, 1.00, 20.00, 123, '7890', 'VS254215014', '2022-03-07', '2022-03-07', 1, 7622210641557),
(269, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Material de Limpeza', 'Un', 6.00, 10.00, 60.00, 123, '7890', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(271, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Material de Limpeza', 'Un', 10.00, 10.00, 100.00, 124, '7863', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(273, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Gêneros alimenticios', 'Un', 4.00, 25.00, 100.00, 122, '1048', 'N22122020', '2020-12-22', '2020-12-22', 1, 7891035024368),
(275, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Gêneros alimenticios', 'Un', 2.00, 25.00, 50.00, 125, '10', 'N22122020', '2020-12-22', '2020-12-22', 1, 7891035024368),
(276, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', NULL, 'COLGATE', 'Material de Limpeza', 'Un', 10.00, 2.00, 20.00, 103, '1256', '1130BR123B', '2021-05-01', '2023-05-01', 1, 7793100111143),
(277, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', NULL, 'COLGATE', 'Gêneros alimenticios', 'Un', 20.00, 1.00, 20.00, 103, '1256', '1130BR123B', '2021-05-01', '2021-05-01', 1, 7793100111143),
(278, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', NULL, 'COLGATE', 'Gêneros alimenticios', 'Un', 10.00, 3.50, 35.00, 106, '78914', '1130BR123B', '2021-05-01', '2021-05-01', 1, 7793100111143),
(280, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', NULL, 'COLGATE', 'Gêneros alimenticios', 'Un', 10.00, 10.00, 100.00, 126, '784', '1130BR123B', '2021-05-01', '2021-05-01', 1, 7793100111143),
(281, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', NULL, 'COLGATE', 'Gêneros alimenticios', 'Un', 10.00, 4.00, 40.00, 126, '784', '1130BR123B', '2021-05-01', '2021-05-01', 1, 7793100111143),
(282, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', NULL, 'COLGATE', 'Material de Limpeza', 'Un', 10.00, 3.00, 30.00, 133, '7893', '1130BR123B', '2021-05-01', '2021-05-01', 1, 7793100111143),
(283, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Finish Powerball', 'Gêneros alimenticios', 'Un', 10.00, 7.00, 70.00, 133, '7893', 'N22122020', '2020-12-22', '2020-12-22', 1, 7891035024368);

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_produto`
--

CREATE TABLE `c_produto` (
  `id_produto` bigint(20) NOT NULL,
  `nome_prod` text NOT NULL,
  `det_prod` text DEFAULT NULL,
  `grupo_prod` varchar(100) DEFAULT NULL,
  `medida_prod` char(3) NOT NULL,
  `qtd_estoque_prod` double(15,2) DEFAULT NULL,
  `vl_preco_med_prod` double(15,2) DEFAULT NULL,
  `vl_preco_total_prod` double(15,2) DEFAULT NULL,
  `percentual_lucro_prod` double(15,2) DEFAULT NULL,
  `valor_com_pecentual_prod` double(15,2) DEFAULT NULL,
  `marca_prod` varchar(100) DEFAULT NULL,
  `lote_prod` varchar(100) NOT NULL,
  `data_fab_prod` date DEFAULT NULL,
  `data_valid_prod` date DEFAULT NULL,
  `id_almox_prod_FK` int(11) NOT NULL,
  `codBarEst` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_produto`
--

INSERT INTO `c_produto` (`id_produto`, `nome_prod`, `det_prod`, `grupo_prod`, `medida_prod`, `qtd_estoque_prod`, `vl_preco_med_prod`, `vl_preco_total_prod`, `percentual_lucro_prod`, `valor_com_pecentual_prod`, `marca_prod`, `lote_prod`, `data_fab_prod`, `data_valid_prod`, `id_almox_prod_FK`, `codBarEst`) VALUES
(41, 'Arroz tipo 1 pacote 5 kg agulhinha', NULL, 'Gêneros alimenticios', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'Cristal', 'LT01', '2021-01-01', '2022-03-06', 1, 0),
(42, 'Feijão preto tipo 1 pacote 1 kg', NULL, 'Gêneros alimenticios', 'Un', 0.00, 5.60, 5.60, NULL, NULL, 'Dona Cota', 'LT02', '2021-01-01', '2022-01-31', 1, 0),
(43, 'Farinha de trigo pacote 1 kg', NULL, 'Gêneros alimenticios', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'Cristal', 'LT03', '2021-03-01', '2022-02-28', 1, 0),
(44, 'Farinha de milho pacote 500 gramas', NULL, 'Gêneros alimenticios', 'Un', 3990.00, 1.00, 3990.00, NULL, NULL, 'Flocão', 'LT04', '2021-05-01', '2022-06-06', 1, 0),
(45, 'Açúcar mascavo pacote 5 kg', NULL, 'Gêneros alimenticios', 'Un', 4.00, 14.95, 59.80, NULL, NULL, 'Naturalis', 'LT05', '2021-01-01', '2023-12-31', 1, 0),
(46, 'Macarrão instantâneo', NULL, 'Gêneros alimenticios', 'Un', 1000.00, 2.00, 2000.00, NULL, NULL, 'Nissin', 'LT09', '2022-05-07', '2022-07-31', 1, 0),
(47, 'Extrato de tomate 100 gramas', NULL, 'Gêneros alimenticios', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'Elefante', 'LT08', '2021-10-15', '2021-10-15', 1, 0),
(48, 'Creme dental com fluor', NULL, 'Material de Limpeza', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'Colgate', 'LT20', '2021-05-25', '2021-10-25', 1, 0),
(49, 'Sabonete', NULL, 'Material de Limpeza', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'Rexona', 'LT21', '2021-10-23', '2021-10-24', 1, 0),
(50, 'Leite po', NULL, 'Gêneros alimenticios', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'vAQUINHA', 'LT50', '2021-11-08', '2021-11-30', 1, 0),
(51, 'Creme dental 75 gramas', NULL, 'Material de Limpeza', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'COLGATE TOTAL 10', 'LT25', '2022-02-09', '2022-02-28', 1, 0),
(52, 'Polpa de fruta Manga', NULL, 'Gêneros alimenticios', 'Un', 1.00, 0.50, 0.50, NULL, NULL, 'FRUTARE', 'LT26', '2022-02-11', '2022-05-11', 1, 0),
(53, 'sabão lava louça', NULL, 'Gêneros alimenticios', 'Un', 50.00, 17.00, 850.00, NULL, NULL, 'MINERVA', 'LT30', '2022-02-24', '2022-12-24', 1, 0),
(54, 'Wisky 10 anos', NULL, 'Gêneros alimenticios', 'Un', 0.00, 0.00, 0.00, NULL, NULL, 'Old Par', 'LT31', '2022-02-24', '2022-02-24', 1, 0),
(57, 'Vinho tinto 750 ml', NULL, 'Gêneros alimenticios', 'Un', 10.00, 11.00, 110.00, NULL, NULL, 'Quinto do morgado', 'LT100', '2021-07-25', '2022-05-25', 1, 0),
(58, 'Vinho Tinto Branco', NULL, 'Gêneros alimenticios', 'Un', 4.00, 10.00, 40.00, NULL, NULL, 'MIORANZA', 'LT101', '2022-02-25', '2023-02-28', 1, 0),
(102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', NULL, 'Material de Limpeza', 'Pc', 67.00, 12.00, 12.00, NULL, NULL, 'Finish Powerball', 'N22122020', '2020-12-22', '2022-12-22', 1, 7891035024368),
(105, 'Bolacha Waffer recheado sabor chocolate 110 g', NULL, 'Gêneros alimenticios', 'Un', 0.00, 1.00, 1.00, NULL, NULL, 'Nestle Passatempo', '2020122110', '2021-09-20', '2022-09-20', 1, 7891000337363),
(106, 'Concentrado líquido para refresco de fruta, sabor cajú 500 ml', NULL, 'Gêneros alimenticios', 'Un', 10.00, 2.50, 25.00, NULL, NULL, 'SERIGY', 'L041002', '2021-10-25', '2022-10-22', 1, 7898406780021),
(107, 'Caderno de 10 matérias - 200 folhas', NULL, 'Material de Expediente', 'Un', 45.00, 6.50, 292.50, NULL, NULL, 'KBOM', 'LT120', '2022-02-01', '2022-03-26', 1, 7891321043806),
(108, 'AGUA MINERAL 500 ML', NULL, 'Gêneros alimenticios', 'Un', 25.00, 3.92, 97.92, NULL, NULL, 'COCA COLA', 'LT180', '2022-03-02', '2022-11-20', 1, 7898022285139),
(110, 'Bolacha de sal sabor presunto 23,5g', NULL, 'Gêneros alimenticios', 'Un', 30.00, 1.33, 40.00, NULL, NULL, 'CLUBE SOCIAL', 'VS254215014', '2022-03-07', '2023-03-07', 1, 7622210641557),
(111, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', NULL, 'Material de Limpeza', 'Un', 49.00, 3.50, 171.50, NULL, NULL, 'COLGATE', '1130BR123B', '2021-05-01', '2023-05-01', 1, 7793100111143);

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_saida_material`
--

CREATE TABLE `c_saida_material` (
  `id_saida` int(11) NOT NULL,
  `id_almox_saida_fk` int(11) NOT NULL,
  `data_saida` date NOT NULL,
  `hora_saida` time NOT NULL,
  `lote_mat_saida` varchar(250) NOT NULL,
  `id_mat_saida` int(11) NOT NULL,
  `desc_mat_saida` text NOT NULL,
  `medida_mat_saida` varchar(250) NOT NULL,
  `qtd_saida_mat` decimal(10,0) NOT NULL,
  `preco_medio_saida` decimal(10,0) NOT NULL,
  `vl_total_item_saida` decimal(10,0) NOT NULL,
  `requisitante` varchar(250) NOT NULL,
  `codBarSaida` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_saida_material`
--

INSERT INTO `c_saida_material` (`id_saida`, `id_almox_saida_fk`, `data_saida`, `hora_saida`, `lote_mat_saida`, `id_mat_saida`, `desc_mat_saida`, `medida_mat_saida`, `qtd_saida_mat`, `preco_medio_saida`, `vl_total_item_saida`, `requisitante`, `codBarSaida`) VALUES
(126, 1, '2022-03-08', '13:31:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '1', '15', '15', 'Lucas', NULL),
(127, 1, '2022-03-08', '13:32:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '1', '15', '15', 'Davi', NULL),
(128, 1, '2022-03-08', '13:32:00', '1130BR123B', 109, 'Creme Dental Anticárie com Flúor Total 12 Clean Mint, anti bacteriano 90g', 'Un', '1', '1', '1', 'Lucas', 7793100111143),
(129, 1, '2022-03-08', '13:34:00', '1130BR123B', 109, 'Creme Dental Anticárie com Flúor Total 12 Clean Mint, anti bacteriano 90g', 'Un', '1', '1', '1', 'Ana laura', 7793100111143),
(130, 1, '2022-03-08', '13:37:00', 'N22122020', 102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', 'Pc', '1', '12', '12', 'Joao Lucas', 7891035024368),
(131, 1, '2022-03-08', '19:02:00', '1130BR123B', 109, 'Creme Dental Anticárie com Flúor Total 12 Clean Mint, anti bacteriano 90g', 'Un', '28', '1', '37', 'lucas', 7793100111143),
(132, 1, '2022-03-08', '19:03:00', '1130BR123B', 109, 'Creme Dental Anticárie com Flúor Total 12 Clean Mint, anti bacteriano 90g', 'Un', '1', '1', '1', 'lucas', 7793100111143),
(133, 1, '2022-03-08', '19:07:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '6', '15', '90', 'lucas', NULL),
(134, 1, '2022-03-08', '19:07:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '1', '15', '15', 'lucas', NULL),
(135, 1, '2022-03-08', '19:07:00', 'N22122020', 102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', 'Pc', '24', '12', '278', 'lucas', 7891035024368),
(136, 1, '2022-03-08', '19:08:00', 'N22122020', 102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', 'Pc', '1', '12', '12', 'lucas', 7891035024368),
(137, 1, '2022-03-09', '19:45:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '5', '15', '75', 'Lucas', NULL),
(138, 1, '2022-03-09', '19:45:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '1', '15', '15', 'Lucas', NULL),
(139, 1, '2022-03-09', '19:48:00', '1130BR123B', 109, 'Creme Dental Anticárie com Flúor Total 12 Clean Mint, anti bacteriano 90g', 'Un', '1', '2', '2', 'Joao Lucas', 7793100111143),
(140, 1, '2022-03-09', '21:29:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '7', '15', '105', '', NULL),
(141, 1, '2022-03-09', '21:29:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '1', '15', '15', 'Joao', NULL),
(142, 1, '2022-03-21', '13:51:00', '1130BR123B', 111, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', 'Un', '41', '2', '77', 'Lucas', 7793100111143),
(143, 1, '2022-03-21', '13:51:00', '1130BR123B', 111, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', 'Un', '1', '2', '2', 'Lucas', 7793100111143),
(144, 1, '2022-03-23', '21:41:00', '1130BR123B', 111, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', 'Un', '60', '4', '215', 'lucas', 7793100111143),
(145, 1, '2022-03-23', '21:41:00', '1130BR123B', 111, 'CREME DENTAL TOTAL 12 CLEAN MINT 90 G', 'Un', '20', '4', '72', 'lucas', 7793100111143),
(146, 1, '2022-03-23', '21:44:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '8', '15', '120', '', NULL),
(147, 1, '2022-03-23', '22:45:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '10', '15', '150', '', NULL),
(148, 1, '2022-03-23', '21:51:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '10', '15', '150', '', NULL),
(149, 1, '2022-03-23', '21:52:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '6', '15', '0', '', NULL),
(150, 1, '2022-03-23', '21:52:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '2', '15', '30', '', NULL),
(151, 1, '2022-03-23', '21:53:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '6', '15', '90', '', NULL),
(152, 1, '2022-03-23', '21:55:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '7', '15', '105', '', NULL),
(153, 1, '2022-03-23', '21:56:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '1', '15', '15', '', NULL),
(154, 1, '2022-03-29', '19:14:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '4', '15', '60', '', NULL),
(155, 1, '2022-03-29', '19:15:00', 'LT05', 45, 'Açúcar mascavo pacote 5 kg', 'Un', '1', '15', '15', '', NULL),
(156, 1, '2022-04-06', '19:34:00', 'LT04', 44, 'Farinha de milho pacote 500 gramas', 'Un', '5000', '1', '5000', '', NULL),
(157, 1, '2022-04-06', '19:34:00', 'LT04', 44, 'Farinha de milho pacote 500 gramas', 'Un', '61', '1', '61', '', NULL),
(158, 1, '2022-04-06', '19:44:00', 'N22122020', 102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', 'Pc', '69', '12', '828', 'chico', 7891035024368),
(159, 1, '2022-04-06', '19:45:00', 'N22122020', 102, 'Detergente em Tabletes para máquina de lavar roupas. pacote contém 13 tabletes de 16,3 g cada, contendo 211,9g no pacote', 'Pc', '1', '12', '12', 'chico', 7891035024368);

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_usuario`
--

CREATE TABLE `c_usuario` (
  `idLogin` int(11) NOT NULL,
  `nomeLogin` varchar(100) NOT NULL,
  `usuarioLogin` varchar(100) NOT NULL,
  `nivelLogin` varchar(1) NOT NULL,
  `emailLogin` varchar(100) NOT NULL,
  `senhaLogin` varchar(255) NOT NULL,
  `dataLogin` date NOT NULL,
  `statusLogin` varchar(1) NOT NULL,
  `idAlmoxLogin_FK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_usuario`
--

INSERT INTO `c_usuario` (`idLogin`, `nomeLogin`, `usuarioLogin`, `nivelLogin`, `emailLogin`, `senhaLogin`, `dataLogin`, `statusLogin`, `idAlmoxLogin_FK`) VALUES
(1, 'Administrador Sistemas', 'admin', '1', 'adm@teste.com', '$2y$10$QsqVHF5HkzHdD.HduZphee4mLqzhDQ3U7kg8gay5L9mcLWPtzK/5G', '2021-09-19', '1', 1),
(2, 'Marina Rui Barbosa', 'marina.sgm', '2', 'marina@teste.com', '$2y$10$pi9eAc73RD1ISiJma/6ywONW/3X13JhnK4lCEMsgZ5yRHk7KrZ9gi', '2021-09-19', '1', 1),
(3, 'Almoxarife', 'almox.sgm', '1', 'almox@gmail.com', '$2y$10$hEEgP4jplio.Y.JPTEvvF.AE2oG0Uc80ftkqzJkvl4MRwooqxWKQK', '2021-09-19', '1', 1),
(4, 'Geraldo Luiz', 'geraldo.sgm', '2', 'geraldo@gmail.com', '$2y$10$0CxndyXukKgTSXIMOYNQLu9W6PVBmsOxrPQ/1316sumMwE9I9LHBS', '2021-10-10', '1', 1),
(5, 'Almoxarifado', 'almox', '1', 'almox@etec.com', '$2y$10$UBcMMYgqvyQ7J2LO7AkJzuARLCY1CKThwgCVY6kNTJPw/fOBqkqCq', '2021-10-15', '0', 1),
(12, 'joaolu', 'joao', '1', 'joao@gmail.com', '$2y$10$A0vlfaZHve4FE769gjGW0uefWZYBkjfPxa7YRzn6i5oMFqQX77SiG', '2022-04-03', '1', 1),
(13, 'paulinha tcc', 'paulinha', '1', 'paulinha@gmail.com', '$2y$10$axUr6WfzUHdTBxm75/72nuIMxn3eDmZAMppYgq/46w/CpyTR09edm', '2022-04-05', '1', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `c_almox`
--
ALTER TABLE `c_almox`
  ADD PRIMARY KEY (`id_almox`);

--
-- Índices para tabela `c_capa_em`
--
ALTER TABLE `c_capa_em`
  ADD PRIMARY KEY (`id_capaem`),
  ADD KEY `id_almox_capaem` (`id_almox_capaem_FK`);

--
-- Índices para tabela `c_fornecedor`
--
ALTER TABLE `c_fornecedor`
  ADD PRIMARY KEY (`id_forn`);

--
-- Índices para tabela `c_inutilizacao`
--
ALTER TABLE `c_inutilizacao`
  ADD PRIMARY KEY (`id_inu`);

--
-- Índices para tabela `c_inventario_item`
--
ALTER TABLE `c_inventario_item`
  ADD PRIMARY KEY (`id_inv`),
  ADD KEY `id_almox_inv` (`id_almox_inv_FK`);

--
-- Índices para tabela `c_item_em`
--
ALTER TABLE `c_item_em`
  ADD PRIMARY KEY (`id_item_em`),
  ADD KEY `c_item_em_ibfk_1` (`id_capaem`),
  ADD KEY `id_almox_item_em_FK` (`id_almox_item_em_FK`);

--
-- Índices para tabela `c_produto`
--
ALTER TABLE `c_produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_almox_prod_FK` (`id_almox_prod_FK`);

--
-- Índices para tabela `c_saida_material`
--
ALTER TABLE `c_saida_material`
  ADD PRIMARY KEY (`id_saida`);

--
-- Índices para tabela `c_usuario`
--
ALTER TABLE `c_usuario`
  ADD PRIMARY KEY (`idLogin`),
  ADD KEY `idAlmoxLogin_FK` (`idAlmoxLogin_FK`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `c_almox`
--
ALTER TABLE `c_almox`
  MODIFY `id_almox` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `c_capa_em`
--
ALTER TABLE `c_capa_em`
  MODIFY `id_capaem` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de tabela `c_fornecedor`
--
ALTER TABLE `c_fornecedor`
  MODIFY `id_forn` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `c_inutilizacao`
--
ALTER TABLE `c_inutilizacao`
  MODIFY `id_inu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `c_inventario_item`
--
ALTER TABLE `c_inventario_item`
  MODIFY `id_inv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `c_item_em`
--
ALTER TABLE `c_item_em`
  MODIFY `id_item_em` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT de tabela `c_produto`
--
ALTER TABLE `c_produto`
  MODIFY `id_produto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de tabela `c_saida_material`
--
ALTER TABLE `c_saida_material`
  MODIFY `id_saida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de tabela `c_usuario`
--
ALTER TABLE `c_usuario`
  MODIFY `idLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `c_capa_em`
--
ALTER TABLE `c_capa_em`
  ADD CONSTRAINT `c_capa_em_ibfk_1` FOREIGN KEY (`id_almox_capaem_FK`) REFERENCES `c_almox` (`id_almox`);

--
-- Limitadores para a tabela `c_inventario_item`
--
ALTER TABLE `c_inventario_item`
  ADD CONSTRAINT `c_inventario_item_ibfk_1` FOREIGN KEY (`id_almox_inv_FK`) REFERENCES `c_almox` (`id_almox`);

--
-- Limitadores para a tabela `c_item_em`
--
ALTER TABLE `c_item_em`
  ADD CONSTRAINT `c_item_em_ibfk_1` FOREIGN KEY (`id_capaem`) REFERENCES `c_capa_em` (`id_capaem`),
  ADD CONSTRAINT `c_item_em_ibfk_2` FOREIGN KEY (`id_almox_item_em_FK`) REFERENCES `c_almox` (`id_almox`);

--
-- Limitadores para a tabela `c_produto`
--
ALTER TABLE `c_produto`
  ADD CONSTRAINT `c_produto_ibfk_1` FOREIGN KEY (`id_almox_prod_FK`) REFERENCES `c_almox` (`id_almox`);

--
-- Limitadores para a tabela `c_usuario`
--
ALTER TABLE `c_usuario`
  ADD CONSTRAINT `c_usuario_ibfk_1` FOREIGN KEY (`idAlmoxLogin_FK`) REFERENCES `c_almox` (`id_almox`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
