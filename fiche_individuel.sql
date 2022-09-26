-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 26 sep. 2022 à 16:34
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fiche_individuel`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation_actuel`
--

CREATE TABLE `affectation_actuel` (
  `direction` varchar(100) NOT NULL,
  `date_debut_direction` varchar(12) NOT NULL,
  `service` varchar(100) NOT NULL,
  `fonction_exerce` varchar(100) NOT NULL,
  `id_personnel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `affectation_et_fonction_successive`
--

CREATE TABLE `affectation_et_fonction_successive` (
  `id_affectation` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Direction` varchar(100) NOT NULL,
  `service_affectation` varchar(100) NOT NULL,
  `fonction_exerce_affectation` varchar(100) NOT NULL,
  `periode_affectation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `distinction_honorifique`
--

CREATE TABLE `distinction_honorifique` (
  `grade` varchar(50) NOT NULL,
  `obtention` varchar(50) NOT NULL,
  `NDateDecre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `info_enfant`
--

CREATE TABLE `info_enfant` (
  `id_info_enfant` int(11) NOT NULL,
  `numero_enfant` int(11) NOT NULL,
  `nom_enfant` varchar(100) NOT NULL,
  `prenom_enfant` varchar(150) NOT NULL,
  `date_nais_enfant` varchar(12) NOT NULL,
  `lieu_nais_enfant` varchar(150) NOT NULL,
  `sexe` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

CREATE TABLE `personnels` (
  `id_personnel` int(11) NOT NULL,
  `Photo` text NOT NULL,
  `statut` varchar(15) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `matricule` int(11) NOT NULL,
  `date_nais` date NOT NULL,
  `lieu_nais` varchar(150) NOT NULL,
  `NumCIN` int(11) NOT NULL,
  `date_delivre` date NOT NULL,
  `duplicata` date NOT NULL,
  `nomPere` varchar(250) NOT NULL,
  `nomMere` varchar(250) NOT NULL,
  `adresse` text NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnels`
--

INSERT INTO `personnels` (`id_personnel`, `Photo`, `statut`, `nom`, `prenom`, `matricule`, `date_nais`, `lieu_nais`, `NumCIN`, `date_delivre`, `duplicata`, `nomPere`, `nomMere`, `adresse`, `tel`) VALUES
(7, 'IMG630e77f4e72f59.46895140.jpg', 'Fonctionnaire', 'Rakoto', 'Joany', 123456, '1992-09-24', 'Ampahidrano', 2147483647, '2010-10-12', '2020-10-26', 'Ampahidrano', '301568985456', 'Anolaka', '0323265498');

-- --------------------------------------------------------

--
-- Structure de la table `situation_administrative`
--

CREATE TABLE `situation_administrative` (
  `Date_entrer_administration` varchar(12) NOT NULL,
  `Corps` varchar(150) NOT NULL,
  `date_corps` varchar(12) NOT NULL,
  `grade_actuel` varchar(50) NOT NULL,
  `date_effet` varchar(12) NOT NULL,
  `programme` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `stage_et_formation`
--

CREATE TABLE `stage_et_formation` (
  `nature` varchar(100) NOT NULL,
  `objet_et_domain_concerne` varchar(150) NOT NULL,
  `lieu` varchar(150) NOT NULL,
  `duree` varchar(50) NOT NULL,
  `annee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `titre_ou_diplome_obtenu`
--

CREATE TABLE `titre_ou_diplome_obtenu` (
  `Diplome_certificat_attestation` varchar(150) NOT NULL,
  `etab_lieu_obtention` varchar(150) NOT NULL,
  `annee_obtention` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUser` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Prenom` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUser`, `Username`, `Nom`, `Prenom`, `email`, `mdp`) VALUES
(3, 'rojo', 'Andrianina', 'Rojovolatiana', 'rojoandrianina512@gmail.com', 'boxeuse');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation_et_fonction_successive`
--
ALTER TABLE `affectation_et_fonction_successive`
  ADD PRIMARY KEY (`id_affectation`);

--
-- Index pour la table `info_enfant`
--
ALTER TABLE `info_enfant`
  ADD PRIMARY KEY (`id_info_enfant`);

--
-- Index pour la table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id_personnel`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `affectation_et_fonction_successive`
--
ALTER TABLE `affectation_et_fonction_successive`
  MODIFY `id_affectation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `info_enfant`
--
ALTER TABLE `info_enfant`
  MODIFY `id_info_enfant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id_personnel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
