-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Ago-2021 às 01:51
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rangando`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_categories`
--

CREATE TABLE `rango_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_categories`
--

INSERT INTO `rango_categories` (`id`, `name`, `created_at`) VALUES
(22, 'Lanches rápidos', '2021-08-17 16:16:42'),
(23, 'Porções', '2021-08-19 12:56:09'),
(24, 'Pratos', '2021-08-19 12:56:21'),
(25, 'Bebidas', '2021-08-19 13:38:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_categorie_expences`
--

CREATE TABLE `rango_categorie_expences` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_combo_items`
--

CREATE TABLE `rango_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_customers`
--

CREATE TABLE `rango_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_expences`
--

CREATE TABLE `rango_expences` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_holds`
--

CREATE TABLE `rango_holds` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_holds`
--

INSERT INTO `rango_holds` (`id`, `number`, `time`, `register_id`, `table_id`, `waiter_id`, `customer_id`) VALUES
(267, 1, '16:08', 60, 0, 0, 0),
(268, 1, '20:12', 61, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_payements`
--

CREATE TABLE `rango_payements` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_posales`
--

CREATE TABLE `rango_posales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `options` text,
  `time` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_products`
--

CREATE TABLE `rango_products` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) DEFAULT NULL,
  `description` mediumtext,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `photothumb` varchar(500) DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `modified_at` varchar(30) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) DEFAULT NULL,
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_products`
--

INSERT INTO `rango_products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`, `options`) VALUES
(155, '45162', 'Coxinha Media', 'Lanches rápidos', 50, '', '', 3.5, '89d6441a6e6c5e20c5f6adfbf210316b.jpg', '89d6441a6e6c5e20c5f6adfbf210316b_thumb.jpg', 'color01', '2021-08-19 13:04:02', '2021-08-19 13:04:02', 0, 45, 'Fornecedor', '100', 0, NULL, 'Galinha, Galinha catupiri, Carne seca'),
(156, '789', 'Empanado caramarão', 'Porções', 5, '', '', 30, 'b4b66282694159752dae954e5dfad73e.jpg', 'b4b66282694159752dae954e5dfad73e_thumb.jpg', 'color01', '2021-08-19 13:05:05', '2021-08-19 13:05:05', 0, 7, 'Fornecedor', '100', 0, NULL, 'Empanado e frito camarão'),
(157, '789456', 'Suco de laranja', 'Bebidas', 1, '', '<p>Suco de laranja copo 300ml<br></p>', 6, 'd6e64f961d5af491dcafef46446e3601.jpg', 'd6e64f961d5af491dcafef46446e3601_thumb.jpg', 'color01', '2021-08-19 13:41:09', '2021-08-19 13:41:09', 0, 5, 'Fornecedor', '100', 0, NULL, 'Suco laranja,Laranja com beterraba'),
(158, '78956', 'Agua mineral', 'Bebidas', 2, '', '', 8, '3a0c5e9a157cbcc7d05f5996da72c853.jpg', '3a0c5e9a157cbcc7d05f5996da72c853_thumb.jpg', 'color01', '2021-08-19 13:48:58', '2021-08-19 13:48:58', 0, 1, 'Teste alimentos', '100', 0, NULL, ''),
(159, '46981', 'Empadinha', 'Lanches rápidos', 1, '', '<p>Empadinha pequena<br></p>', 3, '77e89ad2bffd250871ede8b29c6b07ac.jpg', '77e89ad2bffd250871ede8b29c6b07ac_thumb.jpg', 'color01', '2021-08-19 14:08:47', '2021-08-19 14:08:47', 0, 0, 'Teste alimentos', '100', 0, NULL, 'carne muida,carne seca');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_purchases`
--

CREATE TABLE `rango_purchases` (
  `id` int(11) NOT NULL,
  `ref` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `total` float DEFAULT NULL,
  `attachement` varchar(200) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` mediumtext,
  `modified_at` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_purchase_items`
--

CREATE TABLE `rango_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qt` int(10) NOT NULL,
  `cost` float NOT NULL,
  `subtot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_registers`
--

CREATE TABLE `rango_registers` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `waiterscih` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_registers`
--

INSERT INTO `rango_registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`, `waiterscih`) VALUES
(60, '2021-08-17 18:59:07', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 450, NULL, NULL, NULL, 1, ''),
(61, '2021-08-17 19:08:06', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, 5, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_sales`
--

CREATE TABLE `rango_sales` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_sales`
--

INSERT INTO `rango_sales` (`id`, `client_id`, `clientname`, `tax`, `discount`, `subtotal`, `total`, `created_at`, `modified_at`, `status`, `created_by`, `totalitems`, `paid`, `paidmethod`, `taxamount`, `discountamount`, `register_id`, `firstpayement`, `waiter_id`) VALUES
(35, 0, 'Cliente no Caixa', '10%', '', '3.5', 3.9, '2021-08-19', NULL, 0, 'admin ', 1, '3.9', '0', 0.4, 0, 61, 3.9, 0),
(36, 0, 'Cliente no Caixa', '10%', '', '3.5', 3.9, '2021-08-19', NULL, 0, 'admin ', 1, '3.9', '0', 0.4, 0, 61, 3.9, 0),
(37, 0, 'Cliente no Caixa', '10%', '', '73.0', 80.3, '2021-08-19', NULL, 0, 'admin ', 5, '80.3', '0', 7.3, 0, 61, 80.3, 0),
(38, 0, 'Cliente no Caixa', '10%', '', '12.0', 13.2, '2021-08-19', NULL, 0, 'admin ', 3, '13.2', '0', 1.2, 0, 61, 13.2, 0),
(39, 0, 'Cliente no Caixa', '10%', '', '43.0', 47.3, '2021-08-19', NULL, 0, 'admin ', 4, '47.3', '0', 4.3, 0, 61, 47.3, 0),
(40, 0, 'Cliente no Caixa', '10%', '', '43.0', 47.3, '2021-08-19', NULL, 0, 'admin ', 4, '47.3', '0', 4.3, 0, 61, 47.3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_sale_items`
--

CREATE TABLE `rango_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_sale_items`
--

INSERT INTO `rango_sale_items` (`id`, `sale_id`, `product_id`, `name`, `price`, `qt`, `subtotal`, `date`) VALUES
(1023, 35, 155, 'Coxinha Media', 3.5, 1, '3.5', '2021-08-19'),
(1024, 36, 155, 'Coxinha Media', 3.5, 1, '3.5', '2021-08-19'),
(1025, 37, 155, 'Coxinha Media', 3.5, 2, '7', '2021-08-19'),
(1026, 37, 156, 'Empanado caramarão', 30, 2, '60', '2021-08-19'),
(1027, 37, 157, 'Suco de laranja', 6, 1, '6', '2021-08-19'),
(1028, 38, 157, 'Suco de laranja', 6, 1, '6', '2021-08-19'),
(1029, 38, 159, 'Empadinha', 3, 2, '6', '2021-08-19'),
(1030, 39, 157, 'Suco de laranja', 6, 1, '6', '2021-08-19'),
(1031, 39, 155, 'Coxinha Media', 3.5, 2, '7', '2021-08-19'),
(1032, 39, 156, 'Empanado caramarão', 30, 1, '30', '2021-08-19'),
(1033, 40, 157, 'Suco de laranja', 6, 1, '6', '2021-08-19'),
(1034, 40, 155, 'Coxinha Media', 3.5, 2, '7', '2021-08-19'),
(1035, 40, 156, 'Empanado caramarão', 30, 1, '30', '2021-08-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_settings`
--

CREATE TABLE `rango_settings` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_settings`
--

INSERT INTO `rango_settings` (`id`, `companyname`, `logo`, `phone`, `currency`, `keyboard`, `receiptheader`, `receiptfooter`, `theme`, `discount`, `tax`, `timezone`, `language`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `decimals`) VALUES
(1, 'Sistema PDV MESAS', 'edf62ad75eea62e31bcdae3d22cf69ce.png', '21985616517', 'BRL', 1, '', 'Agradecemos a preferência é a oportunidade volte sempre!', 'Light', '', '10%', 'America/Sao_Paulo', 'portuguese', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_stocks`
--

CREATE TABLE `rango_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_stocks`
--

INSERT INTO `rango_stocks` (`id`, `product_id`, `type`, `store_id`, `warehouse_id`, `quantity`, `price`) VALUES
(60, 155, NULL, 5, NULL, 92, 3.5),
(61, 156, NULL, 5, NULL, 96, 30),
(62, 157, NULL, 5, NULL, 96, 6),
(63, 158, NULL, 5, NULL, 100, 6),
(64, 159, NULL, 5, NULL, 98, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_stores`
--

CREATE TABLE `rango_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_stores`
--

INSERT INTO `rango_stores` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
(5, 'Deliveryon', 'baixatudoja@gmail.com', '21985616517', '', '', 'Rio de Janeiro', 'Brasil', '2021-08-17 16:00:47', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_suppliers`
--

CREATE TABLE `rango_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `note` mediumtext,
  `created_at` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_suppliers`
--

INSERT INTO `rango_suppliers` (`id`, `name`, `phone`, `email`, `note`, `created_at`) VALUES
(4, 'Teste alimentos', '999999999999', 'admin@admin', '', '2021-08-19 13:48:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_tables`
--

CREATE TABLE `rango_tables` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `checked` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_tables`
--

INSERT INTO `rango_tables` (`id`, `name`, `zone_id`, `status`, `time`, `store_id`, `checked`) VALUES
(44, 'Mesa1', 10, NULL, NULL, 5, NULL),
(45, 'Mesa2', 10, NULL, NULL, 5, NULL),
(46, 'Mesa1', 13, NULL, NULL, 1, NULL),
(47, 'Mesa3', 10, NULL, NULL, 5, NULL),
(48, 'Mesa4', 11, NULL, NULL, 5, NULL),
(49, 'Mesa5', 14, NULL, NULL, 5, NULL),
(50, 'Mesa6', 14, NULL, NULL, 5, NULL),
(51, 'mesa7', 11, NULL, NULL, 5, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_users`
--

CREATE TABLE `rango_users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_users`
--

INSERT INTO `rango_users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`, `store_id`) VALUES
(1, 'admin', 'admin', '', '600276e2141f433674aa04504527295ad1f86ffd939807df5251d9ed466522be58a4e4e661d8c2f3802a72e5ecd7ae6475ee707f5de50b862c4716a355d10968', 'admin@gmail', 'admin', '2021-08-19 20:17:14', '9fff9cc26e539214e9a5fd3b6a10cde9.jpg', '2011-10-10 15:51:12', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_variations`
--

CREATE TABLE `rango_variations` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_waiters`
--

CREATE TABLE `rango_waiters` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_warehouses`
--

CREATE TABLE `rango_warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rango_zones`
--

CREATE TABLE `rango_zones` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rango_zones`
--

INSERT INTO `rango_zones` (`id`, `store_id`, `name`) VALUES
(10, 5, 'Zona esquerda'),
(11, 5, 'Zona Direita'),
(12, 1, 'Zona esquerda'),
(13, 1, 'Zona Direita'),
(14, 5, 'Zona central');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rango_categories`
--
ALTER TABLE `rango_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_categorie_expences`
--
ALTER TABLE `rango_categorie_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_combo_items`
--
ALTER TABLE `rango_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_customers`
--
ALTER TABLE `rango_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_expences`
--
ALTER TABLE `rango_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_holds`
--
ALTER TABLE `rango_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_payements`
--
ALTER TABLE `rango_payements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_posales`
--
ALTER TABLE `rango_posales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_products`
--
ALTER TABLE `rango_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_purchases`
--
ALTER TABLE `rango_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_purchase_items`
--
ALTER TABLE `rango_purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_registers`
--
ALTER TABLE `rango_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_sales`
--
ALTER TABLE `rango_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_sale_items`
--
ALTER TABLE `rango_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_settings`
--
ALTER TABLE `rango_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_stocks`
--
ALTER TABLE `rango_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_stores`
--
ALTER TABLE `rango_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_suppliers`
--
ALTER TABLE `rango_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_tables`
--
ALTER TABLE `rango_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_users`
--
ALTER TABLE `rango_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_waiters`
--
ALTER TABLE `rango_waiters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_warehouses`
--
ALTER TABLE `rango_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rango_zones`
--
ALTER TABLE `rango_zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rango_categories`
--
ALTER TABLE `rango_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rango_categorie_expences`
--
ALTER TABLE `rango_categorie_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rango_combo_items`
--
ALTER TABLE `rango_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rango_customers`
--
ALTER TABLE `rango_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rango_expences`
--
ALTER TABLE `rango_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rango_holds`
--
ALTER TABLE `rango_holds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `rango_payements`
--
ALTER TABLE `rango_payements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rango_posales`
--
ALTER TABLE `rango_posales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553;

--
-- AUTO_INCREMENT for table `rango_products`
--
ALTER TABLE `rango_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `rango_purchases`
--
ALTER TABLE `rango_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rango_purchase_items`
--
ALTER TABLE `rango_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rango_registers`
--
ALTER TABLE `rango_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `rango_sales`
--
ALTER TABLE `rango_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rango_sale_items`
--
ALTER TABLE `rango_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT for table `rango_settings`
--
ALTER TABLE `rango_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rango_stocks`
--
ALTER TABLE `rango_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `rango_stores`
--
ALTER TABLE `rango_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rango_suppliers`
--
ALTER TABLE `rango_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rango_tables`
--
ALTER TABLE `rango_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `rango_users`
--
ALTER TABLE `rango_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rango_waiters`
--
ALTER TABLE `rango_waiters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rango_warehouses`
--
ALTER TABLE `rango_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rango_zones`
--
ALTER TABLE `rango_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
