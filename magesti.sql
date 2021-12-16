-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 16 déc. 2021 à 09:04
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
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `Id` int(20) NOT NULL,
  `famille` varchar(50) NOT NULL,
  `groupe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`Id`, `famille`, `groupe`) VALUES
(1, 'LESSIVE', 'ADOUCISSANT'),
(2, 'BEAUTE', 'BEAUTY'),
(3, 'DEO & PARFUM', 'DEODORANT'),
(4, 'SOINS CAPILLAIRE', 'TREATMENT'),
(5, 'HYGIENE BUCO-DENTAIRE', 'TOOTHPASTE'),
(6, 'AUTRES', 'SHOES'),
(7, 'DEO & PARFUM', 'PARFUM-POCKET');

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
  `status` varchar(10) NOT NULL,
  `date_livraison_reporte` date DEFAULT NULL,
  `motif` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'VB00001', 'RAKOTO', 'Diane', 'diane00', NULL, 'femme', 1),
(2, 'SC00001', 'Rakotosoa', 'Melanie', 'melanie00', NULL, 'femme', 2);

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
  `moded_emploi_produit` text DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Structure de la table `urgence`
--

CREATE TABLE `urgence` (
  `id_urgence` int(11) NOT NULL,
  `code_urgence` varchar(50) NOT NULL,
  `contenu_urgence` text NOT NULL,
  `sender_urgence` varchar(50) NOT NULL,
  `traiter_urgence` varchar(50) DEFAULT NULL,
  `send_at` date DEFAULT NULL,
  `traiter_at` date DEFAULT NULL,
  `send_time_at` time DEFAULT NULL,
  `traite_time_at` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `urgence`
--

INSERT INTO `urgence` (`id_urgence`, `code_urgence`, `contenu_urgence`, `sender_urgence`, `traiter_urgence`, `send_at`, `traiter_at`, `send_time_at`, `traite_time_at`, `status`) VALUES
(1, 'URG010', 'Test d\'ajout d\'urgence, les ventes d\'ajourd\'hui sont tous urgent', 'VB00001', 'SC00001', '2021-12-15', '2021-12-15', '16:08:18', '16:59:17', 'traiter'),
(2, 'URG010', 'fklsdjflqsdjf', 'VB00001', NULL, '2021-12-15', NULL, '17:00:25', NULL, 'en_cours');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`Id`);

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
-- Index pour la table `urgence`
--
ALTER TABLE `urgence`
  ADD PRIMARY KEY (`id_urgence`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id_discussion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `id_livraison` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit_commande`
--
ALTER TABLE `produit_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `urgence`
--
ALTER TABLE `urgence`
  MODIFY `id_urgence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
