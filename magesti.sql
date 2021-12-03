-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 déc. 2021 à 15:32
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `magesti`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_c` int(11) NOT NULL,
  `nom_c` varchar(255) NOT NULL,
  `code_client` varchar(255) DEFAULT NULL,
  `lienfb_c` varchar(255) DEFAULT NULL,
  `contact_c` varchar(11) NOT NULL,
  `photo_c` varchar(255) DEFAULT NULL,
  `ajouter_at` date NOT NULL,
  `matricule_p` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_c`, `nom_c`, `code_client`, `lienfb_c`, `contact_c`, `photo_c`, `ajouter_at`, `matricule_p`) VALUES
(1, 'Annah Lye', NULL, 'https://www.facebook.com/profile.php?id=100021432591694', '0390000000', 'pic12', '0000-00-00', 'VB00001'),
(2, 'avo test0', 'CMT+KOMONE0', 'https://www.facebook.com/profile.php?id=1000214325916940', '039000000', 'pic0', '2021-11-29', 'VB00001'),
(3, 'avo test1', 'CMT+KOMONE1', 'https://www.facebook.com/profile.php?id=1000214325916941', '039000001', 'pic1', '2021-11-29', 'VB00001'),
(4, 'avo test2', 'CMT+KOMONE2', 'https://www.facebook.com/profile.php?id=1000214325916942', '039000002', 'pic2', '2021-11-29', 'VB00001'),
(5, 'avo test3', 'CMT+KOMONE3', 'https://www.facebook.com/profile.php?id=1000214325916943', '039000003', 'pic3', '2021-11-29', 'VB00001'),
(6, 'avo test4', 'CMT+KOMONE4', 'https://www.facebook.com/profile.php?id=1000214325916944', '039000004', 'pic4', '2021-11-29', 'VB00001'),
(7, 'avo test5', 'CMT+KOMONE5', 'https://www.facebook.com/profile.php?id=1000214325916945', '039000005', 'pic5', '2021-11-29', 'VB00001'),
(8, 'avo test6', 'CMT+KOMONE6', 'https://www.facebook.com/profile.php?id=1000214325916946', '039000006', 'pic6', '2021-11-29', 'VB00001'),
(9, 'avo test7', 'CMT+KOMONE7', 'https://www.facebook.com/profile.php?id=1000214325916947', '039000007', 'pic7', '2021-11-29', 'VB00001'),
(10, 'avo test8', 'CMT+KOMONE8', 'https://www.facebook.com/profile.php?id=1000214325916948', '039000008', 'pic8', '2021-11-29', 'VB00001'),
(11, 'avo test9', 'CMT+KOMONE9', 'https://www.facebook.com/profile.php?id=1000214325916949', '039000009', 'pic9', '2021-11-29', 'VB00001'),
(12, 'avo test10', 'CMT+KOMONE10', 'https://www.facebook.com/profile.php?id=10002143259169410', '0390000010', 'pic10', '2021-11-29', 'VB00001'),
(13, 'avo test11', 'CMT+KOMONE11', 'https://www.facebook.com/profile.php?id=10002143259169411', '0390000011', 'pic11', '2021-11-29', 'VB00001'),
(14, 'avo test12', 'CMT+KOMONE12', 'https://www.facebook.com/profile.php?id=10002143259169412', '0390000012', 'pic12', '2021-11-29', 'VB00001'),
(15, 'avo test13', 'CMT+KOMONE13', 'https://www.facebook.com/profile.php?id=10002143259169413', '0390000013', 'pic13', '2021-11-29', 'VB00001'),
(16, 'avo test14', 'CMT+KOMONE14', 'https://www.facebook.com/profile.php?id=10002143259169414', '0390000014', 'pic14', '2021-11-29', 'VB00001'),
(17, 'avo test15', 'CMT+KOMONE15', 'https://www.facebook.com/profile.php?id=10002143259169415', '0390000015', 'pic15', '2021-11-29', 'VB00001'),
(18, 'avo test16', 'CMT+KOMONE16', 'https://www.facebook.com/profile.php?id=10002143259169416', '0390000016', 'pic16', '2021-11-29', 'VB00001'),
(19, 'avo test17', 'CMT+KOMONE17', 'https://www.facebook.com/profile.php?id=10002143259169417', '0390000017', 'pic17', '2021-11-29', 'VB00001'),
(20, 'avo test18', 'CMT+KOMONE18', 'https://www.facebook.com/profile.php?id=10002143259169418', '0390000018', 'pic18', '2021-11-29', 'VB00001'),
(21, 'avo test19', 'CMT+KOMONE19', 'https://www.facebook.com/profile.php?id=10002143259169419', '0390000019', 'pic19', '2021-11-29', 'VB00001'),
(22, 'avo test20', 'CMT+KOMONE20', 'https://www.facebook.com/profile.php?id=10002143259169420', '0390000020', 'pic20', '2021-11-29', 'VB00001'),
(23, 'avo test21', 'CMT+KOMONE21', 'https://www.facebook.com/profile.php?id=10002143259169421', '0390000021', 'pic21', '2021-11-29', 'VB00001'),
(24, 'avo test22', 'CMT+KOMONE22', 'https://www.facebook.com/profile.php?id=10002143259169422', '0390000022', 'pic22', '2021-11-29', 'VB00001'),
(25, 'avo test23', 'CMT+KOMONE23', 'https://www.facebook.com/profile.php?id=10002143259169423', '0390000023', 'pic23', '2021-11-29', 'VB00001'),
(26, 'avo test24', 'CMT+KOMONE24', 'https://www.facebook.com/profile.php?id=10002143259169424', '0390000024', 'pic24', '2021-11-29', 'VB00001'),
(27, 'avo test25', 'CMT+KOMONE25', 'https://www.facebook.com/profile.php?id=10002143259169425', '0390000025', 'pic25', '2021-11-29', 'VB00001'),
(28, 'avo test26', 'CMT+KOMONE26', 'https://www.facebook.com/profile.php?id=10002143259169426', '0390000026', 'pic26', '2021-11-29', 'VB00001'),
(29, 'avo test27', 'CMT+KOMONE27', 'https://www.facebook.com/profile.php?id=10002143259169427', '0390000027', 'pic27', '2021-11-29', 'VB00001'),
(30, 'avo test28', 'CMT+KOMONE28', 'https://www.facebook.com/profile.php?id=10002143259169428', '0390000028', 'pic28', '2021-11-29', 'VB00001'),
(31, 'avo test29', 'CMT+KOMONE29', 'https://www.facebook.com/profile.php?id=10002143259169429', '0390000029', 'pic29', '2021-11-29', 'VB00001'),
(32, 'avo test30', 'CMT+KOMONE30', 'https://www.facebook.com/profile.php?id=10002143259169430', '0390000030', 'pic30', '2021-11-29', 'VB00001'),
(33, 'avo test31', 'CMT+KOMONE31', 'https://www.facebook.com/profile.php?id=10002143259169431', '0390000031', 'pic31', '2021-11-29', 'VB00001'),
(34, 'avo test32', 'CMT+KOMONE32', 'https://www.facebook.com/profile.php?id=10002143259169432', '0390000032', 'pic32', '2021-11-29', 'VB00001'),
(35, 'avo test33', 'CMT+KOMONE33', 'https://www.facebook.com/profile.php?id=10002143259169433', '0390000033', 'pic33', '2021-11-29', 'VB00001'),
(36, 'avo test34', 'CMT+KOMONE34', 'https://www.facebook.com/profile.php?id=10002143259169434', '0390000034', 'pic34', '2021-11-29', 'VB00001'),
(37, 'avo test35', 'CMT+KOMONE35', 'https://www.facebook.com/profile.php?id=10002143259169435', '0390000035', 'pic35', '2021-11-29', 'VB00001'),
(38, 'avo test36', 'CMT+KOMONE36', 'https://www.facebook.com/profile.php?id=10002143259169436', '0390000036', 'pic36', '2021-11-29', 'VB00001'),
(39, 'avo test37', 'CMT+KOMONE37', 'https://www.facebook.com/profile.php?id=10002143259169437', '0390000037', 'pic37', '2021-11-29', 'VB00001'),
(40, 'avo test38', 'CMT+KOMONE38', 'https://www.facebook.com/profile.php?id=10002143259169438', '0390000038', 'pic38', '2021-11-29', 'VB00001'),
(41, 'avo test39', 'CMT+KOMONE39', 'https://www.facebook.com/profile.php?id=10002143259169439', '0390000039', 'pic39', '2021-11-29', 'VB00001'),
(43, 'Avo nitsuaf 00', 'CMT-KOMONE-1638345289783', 'encore test', '0327346792', NULL, '2021-12-01', 'VB00001'),
(44, 'Avo nitsuaf 01', 'CMT-KOMONE-1638345773932', 'test', '0327346792', NULL, '2021-12-01', 'VB00001'),
(45, 'Avo nitsuaf 03', 'CMT-KOMONE-1638364939404', 'test1', '0327346792', NULL, '2021-12-01', 'VB00001'),
(46, 'Avo nitsuaf 03', 'CMT-KOMONE-1638364948713', 'test1', '0327346792', NULL, '2021-12-01', 'VB00001'),
(47, 'Avo nitsuaf 04', 'CMT-KOMONE-1638365187042', 'test2', '0327346792', NULL, '2021-12-01', 'VB00001'),
(48, 'Avo nitsuaf 05', 'CMT-KOMONE-1638365304861', 'test4', '0340133099', NULL, '2021-12-01', 'VB00001'),
(49, 'Avo nitsuaf 05', 'CMT-KOMONE-1638368438796', 'new', '0327346792', NULL, '2021-12-01', 'VB00001'),
(50, 'Avo nitsuaf 000', 'CMT-KOMONE-1638368931850', 'new2', '0340133099', NULL, '2021-12-01', 'VB00001'),
(51, 'Avo', 'CMT-KOMONE-1638531825604', 'avo', '0340133099', NULL, '2021-12-03', 'VB00001'),
(52, 'Avo', 'CMT-KOMONE-1638540306573', 'av00', '0327346792', NULL, '2021-12-03', 'VB00001');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `com_livr` varchar(255) NOT NULL,
  `date_commande` date NOT NULL,
  `quantite_commande` int(11) DEFAULT NULL,
  `matricule` varchar(50) NOT NULL,
  `code_produit` varchar(50) DEFAULT NULL,
  `code_client` varchar(255) NOT NULL,
  `total` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `com_livr`, `date_commande`, `quantite_commande`, `matricule`, `code_produit`, `code_client`, `total`) VALUES
(1, 'com_livr_1638529938919', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638345289783', NULL),
(2, 'com_livr_1638531701841', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638345289783', NULL),
(3, 'com_livr_1638531825878', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(4, 'com_livr_1638534970957', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(5, 'com_livr_1638535325448', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(6, 'com_livr_1638536203778', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(7, 'com_livr_1638536787806251', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(8, 'com_livr_1638536928766867', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(9, 'com_livr_163853712641474', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(10, 'com_livr_1638537322311638', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(11, 'com_livr_1638537527507682', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(12, 'com_livr_1638537647523257', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(13, 'com_livr_163853786441639', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(14, 'com_livr_1638538434529239', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(15, 'com_livr_1638538999945185', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(16, 'com_livr_1638539102273207', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(17, 'com_livr_1638539282246220', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(18, 'com_livr_1638539425611809', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638531825604', NULL),
(19, 'com_livr_163854010950983', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638345289783', NULL),
(20, 'com_livr_1638540306713826', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638540306573', NULL),
(21, 'com_livr_163854042767234', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638540306573', NULL),
(22, 'com_livr_1638540625510587', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638540306573', NULL),
(23, 'com_livr_1638540814427872', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638540306573', NULL),
(24, 'com_livr_1638540940188682', '2021-12-03', NULL, 'VB00001', NULL, 'CMT+KOMONE0', NULL),
(25, 'com_livr_1638541197609509', '2021-12-03', NULL, 'VB00001', NULL, 'CMT+KOMONE4', NULL),
(26, 'com_livr_1638541495886610', '2021-12-03', NULL, 'VB00001', NULL, 'CMT-KOMONE-1638345289783', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `discussion`
--

CREATE TABLE `discussion` (
  `id_discussion` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `content` text DEFAULT NULL,
  `send_at` date NOT NULL,
  `send_time_at` time NOT NULL,
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `discussion`
--

INSERT INTO `discussion` (`id_discussion`, `sender`, `receiver`, `content`, `send_at`, `send_time_at`, `code`) VALUES
(1, 'VB00001', 'CMT-KOMONE-1638345289783', 'fqsdfsqdfqsdfsf', '2021-12-01', '15:10:26', 0),
(2, 'VB00001', 'CMT-KOMONE-1638345289783', 'fdsqfqsfs', '2021-12-01', '15:12:41', 1),
(3, 'VB00001', 'CMT-KOMONE-1638345289783', 'test', '2021-12-01', '15:13:57', 0),
(4, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqfdsqfqsdf', '2021-12-01', '15:28:18', 0),
(5, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqfdsqfsfqsdf', '2021-12-01', '15:28:46', 0),
(6, 'VB00001', 'CMT-KOMONE-1638345289783', 'qsfdsfqdsfqd', '2021-12-01', '15:30:11', 0),
(7, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqfsdqsfds', '2021-12-01', '15:31:35', 0),
(8, 'VB00001', 'CMT-KOMONE-1638345289783', 'sfsqdfqsdfq', '2021-12-01', '15:32:23', 0),
(9, 'VB00001', 'CMT-KOMONE-1638345289783', 'encore test', '2021-12-01', '15:33:42', 0),
(10, 'VB00001', 'CMT-KOMONE-1638345289783', 'sdfqsdfsf', '2021-12-01', '15:43:09', 0),
(11, 'VB00001', 'CMT-KOMONE-1638345289783', 'sfqsdfqd', '2021-12-01', '15:44:44', 1),
(12, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqdfqsdf', '2021-12-01', '15:46:01', 1),
(13, 'VB00001', 'CMT-KOMONE-1638345289783', 'sdfsdfdsqf', '2021-12-01', '15:47:26', 0),
(14, 'VB00001', 'CMT-KOMONE-1638345289783', 'fqs', '2021-12-01', '15:50:13', 0),
(15, 'VB00001', 'CMT-KOMONE-1638365304861', 'sdffdsf', '2021-12-01', '16:28:34', 0),
(16, 'VB00001', 'CMT-KOMONE-1638345289783', 'Voary ', '2021-12-01', '17:11:45', 1),
(17, 'VB00001', 'CMT-KOMONE-1638345289783', 'eny ary oh', '2021-12-01', '17:13:31', 0),
(18, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqgsgsgfg', '2021-12-01', '17:15:08', 0),
(19, 'VB00001', 'CMT-KOMONE-1638345289783', 'qsfsdfsdg', '2021-12-01', '17:16:16', 1),
(20, 'VB00001', 'CMT-KOMONE-1638345289783', 'qsfsdfsdg', '2021-12-01', '17:16:21', 1),
(21, 'VB00001', 'CMT-KOMONE-1638345289783', 'ok ary oh', '2021-12-01', '17:17:43', 0),
(22, 'VB00001', 'CMT-KOMONE-1638345289783', 'ok ary oh sdffsdf', '2021-12-01', '17:18:17', 1),
(23, 'VB00001', 'CMT-KOMONE-1638365304861', 'OKAY', '2021-12-01', '17:19:41', 1),
(24, 'VB00001', 'CMT-KOMONE-1638365304861', 'Norma rangah le ajax an', '2021-12-01', '17:19:55', 0),
(25, 'VB00001', 'CMT-KOMONE-1638368438796', 'Salama tompoko oh', '2021-12-01', '17:20:48', 0),
(26, 'VB00001', 'CMT-KOMONE-1638368438796', 'Inona no azoko atao ho anao', '2021-12-01', '17:21:06', 1),
(27, 'VB00001', 'CMT-KOMONE-1638368438796', 'Inona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anao', '2021-12-01', '17:21:18', 0),
(28, 'VB00001', 'CMT-KOMONE-1638368438796', 'Inona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anaoInona no azoko atao ho anao', '2021-12-01', '17:21:23', 1),
(29, 'VB00001', 'CMT-KOMONE-1638345289783', 'un peu de test', '2021-12-01', '17:23:13', 0),
(30, 'VB00001', 'CMT-KOMONE-1638345289783', 'gfdsgfsdg', '2021-12-01', '17:26:01', 1),
(31, 'VB00001', 'CMT-KOMONE-1638345289783', 'gbfsdhsdh', '2021-12-01', '17:28:18', 0),
(32, 'VB00001', 'CMT-KOMONE-1638345289783', 'gbfsdhsdhvxcvwxv', '2021-12-01', '17:28:22', 1),
(33, 'VB00001', 'CMT-KOMONE-1638368931850', 'misy an\'ireto produit', '2021-12-01', '17:29:04', 1),
(34, 'VB00001', 'CMT-KOMONE-1638368931850', 'ok ary aloha', '2021-12-01', '17:29:13', 0),
(35, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqdfqsdfsdf', '2021-12-02', '10:45:27', 0),
(36, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqdfqsdfsdf', '2021-12-02', '10:46:12', 0),
(37, 'VB00001', 'CMT-KOMONE-1638345289783', 'sqdfqsdfsdf', '2021-12-02', '10:46:25', 1),
(38, 'VB00001', 'CMT-KOMONE-1638345289783', 'sfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsf', '2021-12-02', '10:47:03', 0),
(39, 'VB00001', 'CMT-KOMONE-1638345289783', 'sfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsf', '2021-12-02', '10:47:36', 1),
(40, 'VB00001', 'CMT-KOMONE-1638345289783', 'loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem', '2021-12-02', '17:58:10', 1),
(41, 'VB00001', 'CMT-KOMONE-1638345289783', 'vxcvwcxv\nvxcvwxcv\nvxcvwcxvxwv\nvxcvwcxv\nvxcvwxcv\nxwc\nvxcvwcxv\nvxcvwxcv\nvxcvwcxvxwv\nvxcvwcxv\nvxcvwxcv\nxwcvxcvwcxv\nvxcvwxcv\nvxcvwcxvxwv\nvxcvwcxv\nvxcvwxcv\nxwc', '2021-12-02', '17:58:40', 1),
(42, 'VB00001', 'CMT-KOMONE-1638345289783', 'dvwbxcv\nxvcxvwx\nvxwcvwxcv\nxcvwxcv\nxcvwxcvcwxv\nwxcvwxcv\nwxvcwxcv\nxwcv', '2021-12-02', '18:05:46', 0),
(43, 'VB00001', 'CMT-KOMONE-1638345289783', 'vxcvv\nvxcvxwc\nvxwcvwxc\nv', '2021-12-02', '18:17:40', 0),
(44, 'VB00001', 'CMT-KOMONE-1638345289783', 'vxcvv\nvxcvxwc\nvxwcvwxc\nvvxcvv\nvxcvxwc\nvxwcvwxc\nvvxcvv\nvxcvxwc\nvxwcvwxc\nvvxcvv\nvxcvxwc\nvxwcvwxc\nv', '2021-12-02', '18:17:51', 1),
(45, 'VB00001', 'CMT-KOMONE-1638345289783', 'qsfqsfdsf', '2021-12-02', '19:03:06', 0),
(46, 'VB00001', 'CMT-KOMONE-1638345289783', 'fsdfqdsf', '2021-12-02', '19:45:28', 1),
(47, 'VB00001', 'CMT-KOMONE-1638531825604', 'izao no zavatra ilaiko', '2021-12-03', '14:44:02', 0),
(48, 'VB00001', 'CMT-KOMONE-1638531825604', 'Eny ary oh', '2021-12-03', '14:44:16', 1),
(49, 'VB00001', 'CMT-KOMONE-1638531825604', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 2, amin\'ny vidiny : 9835<br>produit : DEO-TEST-0, Isany : 3, amin\'ny vidiny : 9835<br><br> Totaliny : 49175 Ariary <br>', '2021-12-03', '16:50:59', 1),
(50, 'VB00001', 'CMT-KOMONE-1638345289783', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 2, amin\'ny vidiny : 9835<br>produit : DEO-TEST-0, Isany : 3, amin\'ny vidiny : 9835<br><br> Totaliny : 49175 Ariary <br>', '2021-12-03', '17:02:38', 1),
(51, 'VB00001', 'CMT-KOMONE-1638540306573', 'wcXWCXWc', '2021-12-03', '17:05:11', 0),
(52, 'VB00001', 'CMT-KOMONE-1638540306573', 'sfqdsfqdsf', '2021-12-03', '17:05:16', 1),
(53, 'VB00001', 'CMT-KOMONE-1638540306573', 'Raha fintinina ny commande-nao dia : <br /><br> Totaliny : 0 Ariary <br>', '2021-12-03', '17:05:47', 1),
(54, 'VB00001', 'CMT-KOMONE-1638540306573', 'sdvxcwv', '2021-12-03', '17:07:11', 0),
(55, 'VB00001', 'CMT-KOMONE-1638540306573', 'sdvxcwvsfqsdf', '2021-12-03', '17:07:15', 1),
(56, 'VB00001', 'CMT-KOMONE-1638540306573', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 3, amin\'ny vidiny : 9835<br>produit : DEO-TEST-0, Isany : 2, amin\'ny vidiny : 9835<br><br> Totaliny : 49175 Ariary <br>', '2021-12-03', '17:07:52', 1),
(57, 'VB00001', 'CMT-KOMONE-1638540306573', 'Raha fintinina ny commande-nao dia :\nproduit : DEO-TEST-0, Isany : 3, amin\'ny vidiny : 9835\nproduit : DEO-TEST-0, Isany : 2, amin\'ny vidiny : ', '2021-12-03', '17:10:34', 0),
(58, 'VB00001', 'CMT-KOMONE-1638540306573', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 10, amin\'ny vidiny : 9835<br><br> Totaliny : 98350 Ariary <br>', '2021-12-03', '17:11:02', 1),
(59, 'VB00001', 'CMT-KOMONE-1638540306573', 'sfdfsqdfqsd', '2021-12-03', '17:13:39', 0),
(60, 'VB00001', 'CMT-KOMONE-1638540306573', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 2, amin\'ny vidiny : 9835<br><br> Totaliny : 19670 Ariary <br>', '2021-12-03', '17:14:04', 1),
(61, 'VB00001', 'CMT+KOMONE0', 'sgfgfdgsg', '2021-12-03', '17:15:46', 0),
(62, 'VB00001', 'CMT+KOMONE0', 'sgfgfdgsggds', '2021-12-03', '17:15:50', 1),
(63, 'VB00001', 'CMT+KOMONE0', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 4, amin\'ny vidiny : 9835<br><br> Totaliny : 39340 Ariary <br>', '2021-12-03', '17:16:13', 1),
(64, 'VB00001', 'CMT+KOMONE4', 'sfqsdfsdfqsf', '2021-12-03', '17:20:01', 0),
(65, 'VB00001', 'CMT+KOMONE4', 'sfsdfqsdf', '2021-12-03', '17:20:05', 1),
(66, 'VB00001', 'CMT+KOMONE4', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 5, amin\'ny vidiny : 9835<br><br> Totaliny : 49175 Ariary <br>', '2021-12-03', '17:20:29', 1),
(67, 'VB00001', 'CMT-KOMONE-1638345289783', 'Raha fintinina ny commande-nao dia : <br />produit : DEO-TEST-0, Isany : 4, amin\'ny vidiny : 9835<br><br> Totaliny : 39340 Ariary <br>', '2021-12-03', '17:25:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `id_f` int(11) NOT NULL,
  `nom_fonction` varchar(50) DEFAULT NULL,
  `service_fonction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id_f`, `nom_fonction`, `service_fonction`) VALUES
(1, 'Service Commercial en ligne', 'responsable du commerce en ligne'),
(2, 'Service clientèle', 'responsable de ce qui concerne les clients');

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `id_livraison` int(11) NOT NULL,
  `com_livr` varchar(255) NOT NULL,
  `date_livraison` date NOT NULL,
  `heure_debut` time DEFAULT NULL,
  `heure_fin` time DEFAULT NULL,
  `endroit` varchar(255) NOT NULL,
  `remarque` text DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`id_livraison`, `com_livr`, `date_livraison`, `heure_debut`, `heure_fin`, `endroit`, `remarque`, `status`) VALUES
(1, '0', '2021-12-06', '12:41:00', '14:41:00', 'Betongolo', 'Enny ary oh!! OK', 'en_attente'),
(2, 'com_livr_1638531825878', '2021-12-07', '12:45:00', '16:45:00', 'Betongolo', 'zay an', 'en_attente'),
(3, 'com_livr_1638534970957', '2021-12-10', '15:37:00', '16:37:00', 'Betongolo', 'ts', 'en_attente'),
(5, 'com_livr_1638535325448', '2021-12-04', '13:42:00', '15:42:00', 'Betongolo', 'sfqdsf', 'en_attente'),
(6, 'com_livr_1638536203778', '2021-12-04', '14:57:00', '14:57:00', 'Betongolo', 'sfdfsdf', 'en_attente'),
(7, 'com_livr_1638536787806251', '2021-12-11', '15:07:00', '17:07:00', 'Betongolo', 'sfqdfqdsfqsd', 'en_attente'),
(8, 'com_livr_1638536928766867', '2021-12-08', '13:09:00', '16:09:00', 'Betongolo', 'qsdQDSd', 'en_attente'),
(9, 'com_livr_163853712641474', '2021-12-04', '17:12:00', '18:12:00', 'Betongolo', 'hgf', 'en_attente'),
(10, 'com_livr_1638537322311638', '2021-12-16', '15:15:00', '16:15:00', 'Betongolo', 'sfqdqdf', 'en_attente'),
(11, 'com_livr_1638537527507682', '2021-12-10', '14:19:00', '17:19:00', 'Betongolo', 'fsdqfqsfqsdf', 'en_attente'),
(12, 'com_livr_1638537647523257', '2021-12-09', '13:21:00', '12:21:00', 'Betongolo', 'fkhjb', 'en_attente'),
(13, 'com_livr_163853786441639', '2021-12-09', '15:24:00', '16:24:00', 'Betongolo', 'fqsdfqsfq', 'en_attente'),
(14, 'com_livr_1638538434529239', '2021-12-03', '14:34:00', '15:34:00', 'Betongolo', 'sdfdsqfqsdfqdsf', 'en_attente'),
(15, 'com_livr_1638538999945185', '2021-12-06', '13:43:00', '16:43:00', 'Betongolo', 'fsqfsqdf', 'en_attente'),
(16, 'com_livr_1638539102273207', '2021-12-06', '13:45:00', '15:45:00', 'Betongolo', 'sdfsqfdqsf', 'en_attente'),
(17, 'com_livr_1638539282246220', '2021-12-10', '13:48:00', '16:48:00', 'Betongolo', 'hjhfgjfkjfkjgfjk', 'en_attente'),
(18, 'com_livr_1638539425611809', '2021-12-10', '14:50:00', '16:50:00', 'Betongolo', 'ydjhgch', 'en_attente'),
(19, 'com_livr_163854010950983', '2021-12-04', '16:02:00', '16:11:00', 'Betongolo', 'dfs', 'en_attente'),
(20, 'com_livr_1638540306713826', '2021-12-04', '16:05:00', '17:05:00', 'Betongolo', 'qgsdfsg', 'en_attente'),
(21, 'com_livr_163854042767234', '2021-12-17', '11:07:00', '17:07:00', 'Betongolo', 'wxcXCsdgfdg', 'en_attente'),
(22, 'com_livr_1638540625510587', '2021-12-10', '14:10:00', '17:10:00', 'Betongolo', '', 'en_attente'),
(23, 'com_livr_1638540814427872', '2021-12-04', '16:13:00', '17:13:00', 'Betongolo', 'qsfqsf', 'en_attente'),
(24, 'com_livr_1638540940188682', '2021-12-03', '17:16:00', '18:16:00', 'Betongolo', 'sgfdg', 'en_attente'),
(25, 'com_livr_1638541197609509', '2021-12-04', '13:20:00', '15:20:00', 'Betongolo', 'dgdsfgsd', 'en_attente'),
(26, 'com_livr_1638541495886610', '2021-12-03', '16:25:00', '17:25:00', 'Besarety', 'fsdqfqsdf', 'en_attente');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id_p` int(11) NOT NULL,
  `matricule_p` varchar(50) NOT NULL,
  `nom_p` varchar(255) DEFAULT NULL,
  `prenom_p` varchar(255) DEFAULT NULL,
  `mdp_p` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `id_fonction` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id_p`, `matricule_p`, `nom_p`, `prenom_p`, `mdp_p`, `email`, `sexe`, `id_fonction`) VALUES
(1, 'VB00001', 'RAKOTO', 'Diane', 'diane00', NULL, 'femme', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `code_produit` varchar(50) NOT NULL,
  `nom_produit` varchar(100) NOT NULL,
  `prix` int(11) DEFAULT NULL,
  `photo_produit` varchar(125) DEFAULT NULL,
  `description_produit` varchar(255) DEFAULT NULL,
  `moded_emploi_produit` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `code_produit`, `nom_produit`, `prix`, `photo_produit`, `description_produit`, `moded_emploi_produit`) VALUES
(1, 'PRO028', 'DEO-TEST-0', 9835, 'PRO028', 'Déodorant TROS ROLL ON WHITENING PROTECT 00', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .0'),
(2, 'PRO017', 'DEO-TEST-1', 9537, 'PRO017', 'Déodorant TROS ROLL ON WHITENING PROTECT 11', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .1'),
(3, 'PRO095', 'DEO-TEST-2', 1084, 'PRO095', 'Déodorant TROS ROLL ON WHITENING PROTECT 22', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .2'),
(4, 'PRO072', 'DEO-TEST-3', 3054, 'PRO072', 'Déodorant TROS ROLL ON WHITENING PROTECT 33', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .3'),
(5, 'PRO068', 'DEO-TEST-4', 8139, 'PRO068', 'Déodorant TROS ROLL ON WHITENING PROTECT 44', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .4'),
(6, 'PRO029', 'DEO-TEST-5', 5671, 'PRO029', 'Déodorant TROS ROLL ON WHITENING PROTECT 55', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .5'),
(7, 'PRO048', 'DEO-TEST-6', 1887, 'PRO048', 'Déodorant TROS ROLL ON WHITENING PROTECT 66', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .6'),
(8, 'PRO091', 'DEO-TEST-7', 3843, 'PRO091', 'Déodorant TROS ROLL ON WHITENING PROTECT 77', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .7'),
(9, 'PRO047', 'DEO-TEST-8', 1390, 'PRO047', 'Déodorant TROS ROLL ON WHITENING PROTECT 88', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .8'),
(10, 'PRO039', 'DEO-TEST-9', 9344, 'PRO039', 'Déodorant TROS ROLL ON WHITENING PROTECT 99', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .9'),
(11, 'PRO018', 'DEO-TEST-10', 687, 'PRO018', 'Déodorant TROS ROLL ON WHITENING PROTECT 1010', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .10'),
(12, 'PRO037', 'DEO-TEST-11', 2933, 'PRO037', 'Déodorant TROS ROLL ON WHITENING PROTECT 1111', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .11'),
(13, 'PRO076', 'DEO-TEST-12', 2832, 'PRO076', 'Déodorant TROS ROLL ON WHITENING PROTECT 1212', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .12'),
(14, 'PRO040', 'DEO-TEST-13', 3528, 'PRO040', 'Déodorant TROS ROLL ON WHITENING PROTECT 1313', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .13'),
(15, 'PRO031', 'DEO-TEST-14', 857, 'PRO031', 'Déodorant TROS ROLL ON WHITENING PROTECT 1414', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .14'),
(16, 'PRO049', 'DEO-TEST-15', 4395, 'PRO049', 'Déodorant TROS ROLL ON WHITENING PROTECT 1515', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .15'),
(17, 'PRO077', 'DEO-TEST-16', 6163, 'PRO077', 'Déodorant TROS ROLL ON WHITENING PROTECT 1616', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .16'),
(18, 'PRO058', 'DEO-TEST-17', 5193, 'PRO058', 'Déodorant TROS ROLL ON WHITENING PROTECT 1717', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .17'),
(19, 'PRO039', 'DEO-TEST-18', 9971, 'PRO039', 'Déodorant TROS ROLL ON WHITENING PROTECT 1818', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .18'),
(20, 'PRO090', 'DEO-TEST-19', 5631, 'PRO090', 'Déodorant TROS ROLL ON WHITENING PROTECT 1919', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .19'),
(21, 'PRO026', 'DEO-TEST-20', 3980, 'PRO026', 'Déodorant TROS ROLL ON WHITENING PROTECT 2020', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .20'),
(22, 'PRO086', 'DEO-TEST-21', 5967, 'PRO086', 'Déodorant TROS ROLL ON WHITENING PROTECT 2121', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .21'),
(23, 'PRO017', 'DEO-TEST-22', 7988, 'PRO017', 'Déodorant TROS ROLL ON WHITENING PROTECT 2222', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .22'),
(24, 'PRO038', 'DEO-TEST-23', 1738, 'PRO038', 'Déodorant TROS ROLL ON WHITENING PROTECT 2323', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .23'),
(25, 'PRO078', 'DEO-TEST-24', 2441, 'PRO078', 'Déodorant TROS ROLL ON WHITENING PROTECT 2424', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .24'),
(26, 'PRO02', 'DEO-TEST-25', 8330, 'PRO02', 'Déodorant TROS ROLL ON WHITENING PROTECT 2525', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .25'),
(27, 'PRO084', 'DEO-TEST-26', 9300, 'PRO084', 'Déodorant TROS ROLL ON WHITENING PROTECT 2626', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .26'),
(28, 'PRO02', 'DEO-TEST-27', 2585, 'PRO02', 'Déodorant TROS ROLL ON WHITENING PROTECT 2727', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .27'),
(29, 'PRO026', 'DEO-TEST-28', 4107, 'PRO026', 'Déodorant TROS ROLL ON WHITENING PROTECT 2828', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .28'),
(30, 'PRO062', 'DEO-TEST-29', 5496, 'PRO062', 'Déodorant TROS ROLL ON WHITENING PROTECT 2929', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .29'),
(31, 'PRO030', 'DEO-TEST-30', 5528, 'PRO030', 'Déodorant TROS ROLL ON WHITENING PROTECT 3030', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .30'),
(32, 'PRO059', 'DEO-TEST-31', 9853, 'PRO059', 'Déodorant TROS ROLL ON WHITENING PROTECT 3131', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .31'),
(33, 'PRO03', 'DEO-TEST-32', 8449, 'PRO03', 'Déodorant TROS ROLL ON WHITENING PROTECT 3232', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .32'),
(34, 'PRO030', 'DEO-TEST-33', 8524, 'PRO030', 'Déodorant TROS ROLL ON WHITENING PROTECT 3333', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .33'),
(35, 'PRO052', 'DEO-TEST-34', 1531, 'PRO052', 'Déodorant TROS ROLL ON WHITENING PROTECT 3434', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .34'),
(36, 'PRO099', 'DEO-TEST-35', 2382, 'PRO099', 'Déodorant TROS ROLL ON WHITENING PROTECT 3535', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .35'),
(37, 'PRO053', 'DEO-TEST-36', 6658, 'PRO053', 'Déodorant TROS ROLL ON WHITENING PROTECT 3636', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .36'),
(38, 'PRO01', 'DEO-TEST-37', 1737, 'PRO01', 'Déodorant TROS ROLL ON WHITENING PROTECT 3737', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .37'),
(39, 'PRO026', 'DEO-TEST-38', 640, 'PRO026', 'Déodorant TROS ROLL ON WHITENING PROTECT 3838', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .38'),
(40, 'PRO067', 'DEO-TEST-39', 2435, 'PRO067', 'Déodorant TROS ROLL ON WHITENING PROTECT 3939', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .39'),
(41, 'PRO036', 'DEO-TEST-40', 5296, 'PRO036', 'Déodorant TROS ROLL ON WHITENING PROTECT 4040', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .40'),
(42, 'PRO021', 'DEO-TEST-41', 6055, 'PRO021', 'Déodorant TROS ROLL ON WHITENING PROTECT 4141', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .41'),
(43, 'PRO064', 'DEO-TEST-42', 1590, 'PRO064', 'Déodorant TROS ROLL ON WHITENING PROTECT 4242', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .42'),
(44, 'PRO042', 'DEO-TEST-43', 3641, 'PRO042', 'Déodorant TROS ROLL ON WHITENING PROTECT 4343', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .43'),
(45, 'PRO086', 'DEO-TEST-44', 8464, 'PRO086', 'Déodorant TROS ROLL ON WHITENING PROTECT 4444', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .44'),
(46, 'PRO024', 'DEO-TEST-45', 2935, 'PRO024', 'Déodorant TROS ROLL ON WHITENING PROTECT 4545', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .45'),
(47, 'PRO084', 'DEO-TEST-46', 3027, 'PRO084', 'Déodorant TROS ROLL ON WHITENING PROTECT 4646', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .46'),
(48, 'PRO034', 'DEO-TEST-47', 6380, 'PRO034', 'Déodorant TROS ROLL ON WHITENING PROTECT 4747', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .47'),
(49, 'PRO081', 'DEO-TEST-48', 9627, 'PRO081', 'Déodorant TROS ROLL ON WHITENING PROTECT 4848', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .48'),
(50, 'PRO074', 'DEO-TEST-49', 3677, 'PRO074', 'Déodorant TROS ROLL ON WHITENING PROTECT 4949', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .49');

-- --------------------------------------------------------

--
-- Structure de la table `produit_commande`
--

CREATE TABLE `produit_commande` (
  `id` int(11) NOT NULL,
  `code_produit` varchar(50) NOT NULL,
  `com_livr` varchar(255) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit_commande`
--

INSERT INTO `produit_commande` (`id`, `code_produit`, `com_livr`, `quantite`) VALUES
(1, 'tests', 'com_livr_1638527202039', 1),
(2, 'tests', 'com_livr_1638527707970', 1),
(3, 'tests', 'com_livr_1638527757196', 1),
(4, 'PRO323', 'com_livr_1638527757196', 3),
(5, 'tests', 'com_livr_1638529938919', 4),
(6, 'PRO028', 'com_livr_1638531825878', 3),
(7, 'PRO028', 'com_livr_1638534970957', 3),
(8, 'PRO017', 'com_livr_1638534970957', 3),
(9, 'PRO028', 'com_livr_1638535325448', 1),
(10, 'PRO028', 'com_livr_1638535325448', 4),
(11, 'tests', 'com_livr_1638536203778', 4),
(12, 'PRO028', 'com_livr_1638536203778', 2),
(13, 'PRO028', 'com_livr_1638536787806251', 2),
(14, 'PRO028', 'com_livr_1638536928766867', 5),
(15, 'PRO028', 'com_livr_163853712641474', 3),
(16, 'PRO028', 'com_livr_1638537322311638', 2),
(17, 'PRO028', 'com_livr_1638537527507682', 5),
(18, 'PRO028', 'com_livr_1638537647523257', 4),
(19, 'PRO028', 'com_livr_163853786441639', 1),
(20, 'PRO028', 'com_livr_1638538434529239', 0),
(21, 'PRO028', 'com_livr_1638538434529239', 2),
(22, 'PRO028', 'com_livr_1638538999945185', 6),
(23, 'PRO028', 'com_livr_1638539102273207', 3),
(24, 'PRO028', 'com_livr_1638539102273207', 5),
(25, 'PRO028', 'com_livr_1638539282246220', 2),
(26, 'PRO028', 'com_livr_1638539282246220', 3),
(27, 'PRO028', 'com_livr_1638539425611809', 2),
(28, 'PRO028', 'com_livr_1638539425611809', 3),
(29, 'PRO028', 'com_livr_163854010950983', 2),
(30, 'PRO028', 'com_livr_163854010950983', 3),
(31, 'PRO028', 'com_livr_163854042767234', 3),
(32, 'PRO028', 'com_livr_163854042767234', 2),
(33, 'PRO028', 'com_livr_1638540625510587', 10),
(34, 'PRO028', 'com_livr_1638540814427872', 2),
(35, 'PRO028', 'com_livr_1638540940188682', 4),
(36, 'PRO028', 'com_livr_1638541197609509', 5),
(37, 'PRO028', 'com_livr_1638541495886610', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Index pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id_discussion`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`id_f`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`id_livraison`),
  ADD UNIQUE KEY `com_livr` (`com_livr`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id_p`),
  ADD UNIQUE KEY `matricule_p` (`matricule_p`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `produit_commande`
--
ALTER TABLE `produit_commande`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id_discussion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `id_livraison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `produit_commande`
--
ALTER TABLE `produit_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
