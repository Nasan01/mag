-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 déc. 2021 à 09:07
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
(50, 'Avo nitsuaf 000', 'CMT-KOMONE-1638368931850', 'new2', '0340133099', NULL, '2021-12-01', 'VB00001');

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
(39, 'VB00001', 'CMT-KOMONE-1638345289783', 'sfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsfsfqqsdfsdfdsfsf', '2021-12-02', '10:47:36', 1);

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
  `photo_produit` varchar(125) DEFAULT NULL,
  `description_produit` varchar(255) DEFAULT NULL,
  `moded_emploi_produit` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `code_produit`, `nom_produit`, `photo_produit`, `description_produit`, `moded_emploi_produit`) VALUES
(1, 'PRO084', 'DEO-TEST-0', 'PRO084', 'Déodorant TROS ROLL ON WHITENING PROTECT 00', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .0'),
(2, 'PRO046', 'DEO-TEST-1', 'PRO046', 'Déodorant TROS ROLL ON WHITENING PROTECT 11', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .1'),
(3, 'PRO022', 'DEO-TEST-2', 'PRO022', 'Déodorant TROS ROLL ON WHITENING PROTECT 22', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .2'),
(4, 'PRO087', 'DEO-TEST-3', 'PRO087', 'Déodorant TROS ROLL ON WHITENING PROTECT 33', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .3'),
(5, 'PRO065', 'DEO-TEST-4', 'PRO065', 'Déodorant TROS ROLL ON WHITENING PROTECT 44', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .4'),
(6, 'PRO070', 'DEO-TEST-5', 'PRO070', 'Déodorant TROS ROLL ON WHITENING PROTECT 55', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .5'),
(7, 'PRO053', 'DEO-TEST-6', 'PRO053', 'Déodorant TROS ROLL ON WHITENING PROTECT 66', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .6'),
(8, 'PRO075', 'DEO-TEST-7', 'PRO075', 'Déodorant TROS ROLL ON WHITENING PROTECT 77', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .7'),
(9, 'PRO040', 'DEO-TEST-8', 'PRO040', 'Déodorant TROS ROLL ON WHITENING PROTECT 88', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .8'),
(10, 'PRO070', 'DEO-TEST-9', 'PRO070', 'Déodorant TROS ROLL ON WHITENING PROTECT 99', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .9'),
(11, 'PRO034', 'DEO-TEST-10', 'PRO034', 'Déodorant TROS ROLL ON WHITENING PROTECT 1010', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .10'),
(12, 'PRO099', 'DEO-TEST-11', 'PRO099', 'Déodorant TROS ROLL ON WHITENING PROTECT 1111', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .11'),
(13, 'PRO094', 'DEO-TEST-12', 'PRO094', 'Déodorant TROS ROLL ON WHITENING PROTECT 1212', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .12'),
(14, 'PRO092', 'DEO-TEST-13', 'PRO092', 'Déodorant TROS ROLL ON WHITENING PROTECT 1313', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .13'),
(15, 'PRO068', 'DEO-TEST-14', 'PRO068', 'Déodorant TROS ROLL ON WHITENING PROTECT 1414', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .14'),
(16, 'PRO064', 'DEO-TEST-15', 'PRO064', 'Déodorant TROS ROLL ON WHITENING PROTECT 1515', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .15'),
(17, 'PRO026', 'DEO-TEST-16', 'PRO026', 'Déodorant TROS ROLL ON WHITENING PROTECT 1616', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .16'),
(18, 'PRO063', 'DEO-TEST-17', 'PRO063', 'Déodorant TROS ROLL ON WHITENING PROTECT 1717', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .17'),
(19, 'PRO024', 'DEO-TEST-18', 'PRO024', 'Déodorant TROS ROLL ON WHITENING PROTECT 1818', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .18'),
(20, 'PRO059', 'DEO-TEST-19', 'PRO059', 'Déodorant TROS ROLL ON WHITENING PROTECT 1919', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .19'),
(21, 'PRO084', 'DEO-TEST-20', 'PRO084', 'Déodorant TROS ROLL ON WHITENING PROTECT 2020', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .20'),
(22, 'PRO074', 'DEO-TEST-21', 'PRO074', 'Déodorant TROS ROLL ON WHITENING PROTECT 2121', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .21'),
(23, 'PRO088', 'DEO-TEST-22', 'PRO088', 'Déodorant TROS ROLL ON WHITENING PROTECT 2222', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .22'),
(24, 'PRO065', 'DEO-TEST-23', 'PRO065', 'Déodorant TROS ROLL ON WHITENING PROTECT 2323', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .23'),
(25, 'PRO011', 'DEO-TEST-24', 'PRO011', 'Déodorant TROS ROLL ON WHITENING PROTECT 2424', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .24'),
(26, 'PRO087', 'DEO-TEST-25', 'PRO087', 'Déodorant TROS ROLL ON WHITENING PROTECT 2525', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .25'),
(27, 'PRO02', 'DEO-TEST-26', 'PRO02', 'Déodorant TROS ROLL ON WHITENING PROTECT 2626', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .26'),
(28, 'PRO045', 'DEO-TEST-27', 'PRO045', 'Déodorant TROS ROLL ON WHITENING PROTECT 2727', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .27'),
(29, 'PRO033', 'DEO-TEST-28', 'PRO033', 'Déodorant TROS ROLL ON WHITENING PROTECT 2828', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .28'),
(30, 'PRO096', 'DEO-TEST-29', 'PRO096', 'Déodorant TROS ROLL ON WHITENING PROTECT 2929', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .29'),
(31, 'PRO020', 'DEO-TEST-30', 'PRO020', 'Déodorant TROS ROLL ON WHITENING PROTECT 3030', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .30'),
(32, 'PRO098', 'DEO-TEST-31', 'PRO098', 'Déodorant TROS ROLL ON WHITENING PROTECT 3131', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .31'),
(33, 'PRO099', 'DEO-TEST-32', 'PRO099', 'Déodorant TROS ROLL ON WHITENING PROTECT 3232', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .32'),
(34, 'PRO02', 'DEO-TEST-33', 'PRO02', 'Déodorant TROS ROLL ON WHITENING PROTECT 3333', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .33'),
(35, 'PRO026', 'DEO-TEST-34', 'PRO026', 'Déodorant TROS ROLL ON WHITENING PROTECT 3434', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .34'),
(36, 'PRO059', 'DEO-TEST-35', 'PRO059', 'Déodorant TROS ROLL ON WHITENING PROTECT 3535', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .35'),
(37, 'PRO043', 'DEO-TEST-36', 'PRO043', 'Déodorant TROS ROLL ON WHITENING PROTECT 3636', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .36'),
(38, 'PRO046', 'DEO-TEST-37', 'PRO046', 'Déodorant TROS ROLL ON WHITENING PROTECT 3737', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .37'),
(39, 'PRO010', 'DEO-TEST-38', 'PRO010', 'Déodorant TROS ROLL ON WHITENING PROTECT 3838', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .38'),
(40, 'PRO053', 'DEO-TEST-39', 'PRO053', 'Déodorant TROS ROLL ON WHITENING PROTECT 3939', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .39'),
(41, 'PRO031', 'DEO-TEST-40', 'PRO031', 'Déodorant TROS ROLL ON WHITENING PROTECT 4040', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .40'),
(42, 'PRO010', 'DEO-TEST-41', 'PRO010', 'Déodorant TROS ROLL ON WHITENING PROTECT 4141', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .41'),
(43, 'PRO012', 'DEO-TEST-42', 'PRO012', 'Déodorant TROS ROLL ON WHITENING PROTECT 4242', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .42'),
(44, 'PRO099', 'DEO-TEST-43', 'PRO099', 'Déodorant TROS ROLL ON WHITENING PROTECT 4343', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .43'),
(45, 'PRO041', 'DEO-TEST-44', 'PRO041', 'Déodorant TROS ROLL ON WHITENING PROTECT 4444', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .44'),
(46, 'PRO065', 'DEO-TEST-45', 'PRO065', 'Déodorant TROS ROLL ON WHITENING PROTECT 4545', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .45'),
(47, 'PRO086', 'DEO-TEST-46', 'PRO086', 'Déodorant TROS ROLL ON WHITENING PROTECT 4646', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .46'),
(48, 'PRO058', 'DEO-TEST-47', 'PRO058', 'Déodorant TROS ROLL ON WHITENING PROTECT 4747', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .47'),
(49, 'PRO073', 'DEO-TEST-48', 'PRO073', 'Déodorant TROS ROLL ON WHITENING PROTECT 4848', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .48'),
(50, 'PRO099', 'DEO-TEST-49', 'PRO099', 'Déodorant TROS ROLL ON WHITENING PROTECT 4949', 'Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles .49');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_c`);

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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id_discussion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
