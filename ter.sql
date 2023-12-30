-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 30 déc. 2023 à 21:13
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ter`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `lundi_debut` time DEFAULT NULL,
  `lundi_fin` time DEFAULT NULL,
  `mardi_debut` time DEFAULT NULL,
  `mardi_fin` time DEFAULT NULL,
  `mercredi_debut` time DEFAULT NULL,
  `mercredi_fin` time DEFAULT NULL,
  `jeudi_debut` time DEFAULT NULL,
  `jeudi_fin` time DEFAULT NULL,
  `vendredi_debut` time DEFAULT NULL,
  `vendredi_fin` time DEFAULT NULL,
  `samedi_debut` time DEFAULT NULL,
  `samedi_fin` time DEFAULT NULL,
  `dimanche_debut` time DEFAULT NULL,
  `dimanche_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `calendrier`
--

INSERT INTO `calendrier` (`id`, `service_id`, `lundi_debut`, `lundi_fin`, `mardi_debut`, `mardi_fin`, `mercredi_debut`, `mercredi_fin`, `jeudi_debut`, `jeudi_fin`, `vendredi_debut`, `vendredi_fin`, `samedi_debut`, `samedi_fin`, `dimanche_debut`, `dimanche_fin`) VALUES
(19, 19, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(20, 20, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(21, 21, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(22, 22, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(23, 23, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(24, 24, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(25, 25, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(26, 26, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00'),
(27, 27, '10:00:00', '17:00:00', '08:00:00', '16:00:00', '09:00:00', '17:00:00', '10:00:00', '18:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00', '08:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `politique` varchar(255) NOT NULL,
  `frais` int(11) DEFAULT NULL,
  `note_moyenne` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `email`, `password`, `nom`, `prenom`, `politique`, `frais`, `note_moyenne`) VALUES
(19, 'Fournisseur1@gmail.com', 'Fournisseur1', 'Fournisseur1', 'Prenom1', 'Politique1', NULL, NULL),
(20, 'Fournisseur2@gmail.com', 'Fournisseur2', 'Fournisseur2', 'Prenom2', 'Politique2', NULL, NULL),
(21, 'Fournisseur3@gmail.com', 'Fournisseur3', 'Fournisseur3', 'Prenom3', 'Politique3', NULL, NULL),
(22, 'Fournisseur4@gmail.com', 'Fournisseur4', 'Fournisseur4', 'Prenom4', 'Politique4', NULL, NULL),
(23, 'Fournisseur5@gmail.com', 'Fournisseur5', 'Fournisseur5', 'Prenom5', 'Politique5', NULL, NULL),
(24, 'Fournisseur6@gmail.com', 'Fournisseur6', 'Fournisseur6', 'Prenom6', 'Politique6', NULL, NULL),
(25, 'Fournisseur7@gmail.com', 'Fournisseur7', 'Fournisseur7', 'Prenom7', 'Politique7', NULL, NULL),
(26, 'Fournisseur8@gmail.com', 'Fournisseur8', 'Fournisseur8', 'Prenom8', 'Politique8', NULL, NULL),
(27, 'Fournisseur9@gmail.com', 'Fournisseur9', 'Fournisseur9', 'Prenom9', 'Politique9', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `probleme_rdv` int(11) NOT NULL,
  `prix_service` int(11) NOT NULL,
  `niveau_satisfaction` int(11) NOT NULL,
  `utiliszer_service` int(11) NOT NULL,
  `commentaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id`, `fournisseur_id`, `client_id`, `probleme_rdv`, `prix_service`, `niveau_satisfaction`, `utiliszer_service`, `commentaire`) VALUES
(19, 19, 30, 1, 1, 6, 1, 'C\'est l\'avis du client '),
(20, 20, 31, 2, 1, 7, 2, 'C\'est l\'avis du client '),
(21, 21, 32, 3, 1, 8, 3, 'C\'est l\'avis du client '),
(22, 22, 33, 4, 1, 9, 4, 'C\'est l\'avis du client '),
(23, 23, 34, 5, 1, 10, 5, 'C\'est l\'avis du client '),
(24, 24, 35, 6, 1, 11, 6, 'C\'est l\'avis du client '),
(25, 25, 36, 7, 1, 12, 7, 'C\'est l\'avis du client '),
(26, 26, 37, 8, 1, 13, 8, 'C\'est l\'avis du client '),
(27, 27, 38, 9, 1, 14, 9, 'C\'est l\'avis du client ');

-- --------------------------------------------------------

--
-- Structure de la table `pins`
--

CREATE TABLE `pins` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `validee_par_fournisseur` tinyint(1) DEFAULT NULL,
  `jour` date DEFAULT NULL,
  `heure` varchar(255) DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `frais` int(11) DEFAULT NULL,
  `est_honore` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `service_id`, `fournisseur_id`, `client_id`, `validee_par_fournisseur`, `jour`, `heure`, `duree`, `frais`, `est_honore`) VALUES
(19, 19, 19, 30, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(20, 20, 20, 31, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(21, 21, 21, 32, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(22, 22, 22, 33, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(23, 23, 23, 34, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(24, 24, 24, 35, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(25, 25, 25, 36, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(26, 26, 26, 37, 1, '2021-06-04', '10:00', NULL, NULL, NULL),
(27, 27, 27, 38, 1, '2021-06-04', '10:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) NOT NULL,
  `hashed_token` varchar(100) NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `valide_par_admin` tinyint(1) DEFAULT NULL,
  `titre` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `creneau_base` int(11) NOT NULL,
  `tarif` double NOT NULL,
  `ville` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `type_id`, `fournisseur_id`, `valide_par_admin`, `titre`, `telephone`, `adresse`, `creneau_base`, `tarif`, `ville`) VALUES
(19, 19, 19, NULL, 'Service1', 7700001, 'AdresseService1', 15, 10, 'Paris'),
(20, 20, 20, NULL, 'Service2', 7700002, 'AdresseService2', 30, 20, NULL),
(21, 21, 21, NULL, 'Service3', 7700003, 'AdresseService3', 45, 30, NULL),
(22, 22, 22, NULL, 'Service4', 7700004, 'AdresseService4', 60, 40, NULL),
(23, 23, 23, NULL, 'Service5', 7700005, 'AdresseService5', 75, 50, NULL),
(24, 24, 24, NULL, 'Service6', 7700006, 'AdresseService6', 90, 60, NULL),
(25, 25, 25, NULL, 'Service7', 7700007, 'AdresseService7', 105, 70, NULL),
(26, 26, 26, NULL, 'Service8', 7700008, 'AdresseService8', 120, 80, NULL),
(27, 27, 27, NULL, 'Service9', 7700009, 'AdresseService9', 135, 90, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `type_service`
--

CREATE TABLE `type_service` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_service`
--

INSERT INTO `type_service` (`id`, `type`) VALUES
(19, 'Plombier'),
(20, 'Type2'),
(21, 'Type3'),
(22, 'Type4'),
(23, 'Type5'),
(24, 'Type6'),
(25, 'Type7'),
(26, 'Type8'),
(27, 'Type9');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `uuid`, `roles`, `password`, `email`, `is_verified`) VALUES
(29, 'Admin1', '[\"ROLE_ADMIN\"]', '$2y$13$XYhC3g53fL4O7i7EkengQ.UYFlcqLNR/Jj/36ZvUiPRBg7rvDHAy.', 'Admin1@gmail.com', 0),
(30, 'PseudoClient1', '[\"ROLE_USER\"]', '$2y$13$bHJN0HIhdt94mS4nCC6lw.0fg2Z3M7Y2EBX1.3oFS4sn9pwsxbrye', 'Client1@gmail.com', 0),
(31, 'PseudoClient2', '[\"ROLE_USER\"]', '$2y$13$idFqUPhEgNCqApWjRztIT.UYa8twiDmnCx3Xtf/d873yqwbBJ8U3a', 'Client2@gmail.com', 0),
(32, 'PseudoClient3', '[\"ROLE_USER\"]', '$2y$13$imc6iRuU.JvCOL/60wMd3O.owLVD1MI8IQl8sJWjxGxr9J3NGeCzG', 'Client3@gmail.com', 0),
(33, 'PseudoClient4', '[\"ROLE_USER\"]', '$2y$13$4gA.9tFoQXYucDqkmWdNmufkThkEkYl7EN94v.sHkPLSauI5WiK52', 'Client4@gmail.com', 0),
(34, 'PseudoClient5', '[\"ROLE_USER\"]', '$2y$13$XJOdARMqfSsbwLEfpPbureIkcWs1jhEGNnYnrxa78QF.rnHFEYWlu', 'Client5@gmail.com', 0),
(35, 'PseudoClient6', '[\"ROLE_USER\"]', '$2y$13$aLlMveypwjxM95ocvYOAz.mcqpeg09b/zMxfJofq3bklUaDg6m9Fq', 'Client6@gmail.com', 0),
(36, 'PseudoClient7', '[\"ROLE_USER\"]', '$2y$13$X1q3BYM7dBUyYyBk39/1QOPkBQQggWzpg85fO.I4nUJupi5y5Ndjm', 'Client7@gmail.com', 0),
(37, 'PseudoClient8', '[\"ROLE_USER\"]', '$2y$13$YggQEHbC/rtOVsC6XQ2EQuiOcxcTjEDh1dZhZDHziIg7iWOuAGFd2', 'Client8@gmail.com', 0),
(38, 'PseudoClient9', '[\"ROLE_USER\"]', '$2y$13$DY5teNb2RgV3tAU7k28rkO..q3PAVgJwudf2VxJJph/dvYoGPBvQm', 'Client9@gmail.com', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B2753CB9ED5CA9E6` (`service_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_11BA68C670C757F` (`fournisseur_id`),
  ADD KEY `IDX_11BA68C19EB6921` (`client_id`);

--
-- Index pour la table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_42C84955ED5CA9E6` (`service_id`),
  ADD KEY `IDX_42C84955670C757F` (`fournisseur_id`),
  ADD KEY `IDX_42C8495519EB6921` (`client_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E19D9AD2670C757F` (`fournisseur_id`),
  ADD KEY `IDX_E19D9AD2C54C8C93` (`type_id`);

--
-- Index pour la table `type_service`
--
ALTER TABLE `type_service`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `calendrier`
--
ALTER TABLE `calendrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `pins`
--
ALTER TABLE `pins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `type_service`
--
ALTER TABLE `type_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD CONSTRAINT `FK_B2753CB9ED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `FK_11BA68C19EB6921` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_11BA68C670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C8495519EB6921` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_42C84955670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FK_42C84955ED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_E19D9AD2670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FK_E19D9AD2C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_service` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
