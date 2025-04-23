-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 01 avr. 2025 à 12:37
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mon_artisan`
--

-- --------------------------------------------------------

--
-- Structure de la table `artisan`
--

CREATE TABLE `artisan` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `artisan`
--

INSERT INTO `artisan` (`id`, `nom`) VALUES
(1, 'Boucherie Dumont'),
(2, 'Au pain chaud'),
(3, 'Chocolaterie Labbé'),
(4, 'Traiteur Truchon'),
(5, 'Orville Salmons'),
(6, 'Mont Blanc Eléctricité'),
(7, 'Boutot & fils'),
(8, 'Vallis Bellemare'),
(9, 'Claude Quinn'),
(10, 'Amitee Lécuyer'),
(11, 'Ernest Carignan'),
(12, 'Royden Charbonneau'),
(13, 'Leala Dennis'),
(14, 'C\'est sup\'hair'),
(15, 'Le monde des fleurs'),
(16, 'Valérie Laderoute'),
(17, 'CM Graphisme');

-- --------------------------------------------------------

--
-- Structure de la table `branche`
--

CREATE TABLE `branche` (
  `id` int(11) NOT NULL,
  `categorie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `branche`
--

INSERT INTO `branche` (`id`, `categorie`) VALUES
(1, 'Alimentation'),
(2, 'Bâtiment'),
(3, 'Fabrication'),
(4, 'Services');

-- --------------------------------------------------------

--
-- Structure de la table `coordonnees`
--

CREATE TABLE `coordonnees` (
  `id` int(11) NOT NULL,
  `artisan_id` int(11) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site_web` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `coordonnees`
--

INSERT INTO `coordonnees` (`id`, `artisan_id`, `ville`, `email`, `site_web`) VALUES
(1, 1, 'Lyon', 'boucherie.dumond@gmail.com', NULL),
(2, 2, 'Montélimar', 'aupainchaud@hotmail.com', NULL),
(3, 3, 'Lyon', 'chocolaterie-labbe@gmail.com', 'https://chocolaterie-labbe.fr'),
(4, 4, 'Lyon', 'contact@truchon-traiteur.fr', 'https://truchon-traiteur.fr'),
(5, 5, 'Evian', 'o-salmons@live.com', NULL),
(6, 6, 'Chamonix', 'contact@mont-blanc-electricite.com', 'https://mont-blanc-electricite.com'),
(7, 7, 'Bourg-en-bresse', 'boutot-menuiserie@gmail.com', 'https://boutot-menuiserie.com'),
(8, 8, 'Vienne', 'v.bellemare@gmail.com', 'https://plomberie-bellemare.com'),
(9, 9, 'Aix-les-bains', 'claude.quinn@gmail.com', NULL),
(10, 10, 'Annecy', 'a.amitee@hotmail.com', 'https://lecuyer-couture.com'),
(11, 11, 'Le Puy-en-Velay', 'e-carigan@hotmail.com', NULL),
(12, 12, 'Saint-Priest', 'r.charbonneau@gmail.com', NULL),
(13, 13, 'Chambéry', 'l.dennos@hotmail.fr', 'https://coiffure-leala-chambery.fr'),
(14, 14, 'Romans-sur-Isère', 'sup-hair@gmail.com', 'https://sup-hair.fr'),
(15, 15, 'Annonay', 'contact@le-monde-des-fleurs-annonay.fr', 'https://le-monde-des-fleurs-annonay.fr'),
(16, 16, 'Valence', 'v-laredoute@gmail.com', NULL),
(17, 17, 'Valence', 'contact@cm-graphisme.com', 'https://cm-graphisme.com');

-- --------------------------------------------------------

--
-- Structure de la table `infos`
--

CREATE TABLE `infos` (
  `id` int(11) NOT NULL,
  `artisan_id` int(11) DEFAULT NULL,
  `note` float DEFAULT NULL,
  `a_propos` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `top` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `infos`
--

INSERT INTO `infos` (`id`, `artisan_id`, `note`, `a_propos`, `image`, `top`) VALUES
(1, 1, 4.5, 'Boucher avec plus de 15 ans d\'expérience, je vous propose une large gamme de viandes sélectionnées avec soin. Mon savoir-faire artisanal garantit des produits frais et de qualité supérieure. Toujours à l\'écoute de vos besoins, je vous offre un service personnalisé et une viande savoureuse, idéale pour vos repas quotidiens.', 'artisan_1.jpg', 1),
(2, 2, 4.8, 'Boulanger passionné, je prépare des pains artisanaux avec des ingrédients de qualité et des techniques traditionnelles. Mon expertise garantit une croûte dorée, une mie légère et une variété de pains adaptés à tous les goûts. Chaque jour, je vous propose des viennoiseries fraîches, qui vous offriront une expérience gustative unique.', 'artisan_2.jpg', 0),
(3, 3, 4.9, 'Chocolatier d\'exception, j\'utilise uniquement les meilleurs cacaos pour créer des chocolats fins aux saveurs riches et subtiles. Ma passion pour le chocolat me pousse à inventer de nouvelles créations qui sauront éveiller vos papilles. Que ce soit pour une occasion spéciale ou simplement pour vous faire plaisir, mes chocolats vous séduiront à chaque bouchée.', 'artisan_3.jpg', 1),
(4, 4, 4.1, 'Traiteur depuis plus de 10 ans, je vous propose une cuisine raffinée et sur mesure pour tous vos événements. Des buffets savoureux aux plats gastronomiques, chaque création est pensée pour émerveiller vos invités. Fort de mon expérience, je vous offre un service de qualité, alliant professionnalisme et attention aux détails.', 'artisan_4.jpg', 1),
(5, 5, 5, 'Chauffagiste avec plus de 20 ans d\'expérience dans la région, je propose des services d\'installation, d\'entretien et de réparation de systèmes de chauffage. Expert en solutions efficaces et durables, je garantis un service de qualité rapide et fiable. Faites confiance à un professionnel local reconnu pour son savoir-faire et son engagement envers la satisfaction des clients.', 'artisan_5.jpg', 0),
(6, 6, 4.5, 'Électricien qualifié, je vous accompagne dans tous vos projets électriques, que ce soit pour des installations neuves ou des réparations. Mon expertise garantit la sécurité de vos installations et leur conformité aux normes en vigueur. Je mets un point d\'honneur à vous offrir des solutions efficaces et rapides pour votre confort quotidien.', 'artisan_6.jpg', 1),
(7, 7, 4.7, 'Menuisier passionné, je crée des meubles sur mesure et réalise des travaux de menuiserie intérieure de haute qualité. Que ce soit pour des escaliers, des fenêtres ou des aménagements personnalisés, je mets tout mon savoir-faire au service de vos projets. Mon objectif est de vous offrir des produits durables, esthétiques et fonctionnels.', 'artisan_7.jpg', 0),
(8, 8, 4, 'Plombier expérimenté, je m\'occupe de l\'installation, de la réparation et de l\'entretien de vos équipements sanitaires et de chauffage. Spécialiste des problèmes de plomberie, je propose des solutions rapides et durables. Pour tous vos travaux, je vous assure un service soigné et respectueux de vos délais.', 'artisan_8.jpg', 0),
(9, 9, 4.2, 'Bijoutier d\'exception, je vous propose des créations uniques, faites à la main, pour sublimer chaque moment de votre vie. Spécialiste des bijoux personnalisés, j\'allie tradition et modernité pour réaliser des pièces sur mesure, selon vos envies. Mon atelier est dédié à la qualité, à l\'élégance et à l\'originalité.', 'artisan_9.jpg', 0),
(10, 10, 4.5, 'Couturier et styliste passionnée, je crée des vêtements sur mesure qui allient confort, élégance et modernité. Chaque création est unique, pensée pour s\'adapter à votre silhouette et vos goûts. Que ce soit pour une occasion spéciale ou pour votre quotidien, je vous propose un service personnalisé, mettant en avant votre style.', 'artisan_10.jpg', 0),
(11, 11, 5, 'Ferronnier, depuis 15 ans j\'allie tradition et innovation pour créer des pièces métalliques sur mesure qui allient robustesse et esthétique. De la ferronnerie d\'art à l\'agencement métallique, mon travail est une véritable passion. Je vous propose des créations uniques qui enrichiront l\'esthétique de votre intérieur ou extérieur, tout en garantissant leur longévité.', 'artisan_11.jpg', 0),
(12, 12, 3.8, 'Coiffeur expert, je vous offre des coupes modernes et des coiffures adaptées à votre style. Avec des années d\'expérience, je suis à même de vous proposer des conseils personnalisés pour sublimer votre visage et mettre en valeur votre personnalité. Mes services sont pensés pour vous offrir une expérience de détente et de beauté.', 'artisan_12.jpg', 0),
(13, 13, 3.8, 'Coiffeur talentueux, je mets à votre disposition mon savoir-faire pour des coiffures sur mesure, que ce soit pour des coupes tendance ou des coiffures plus classiques. Mon objectif est de vous offrir une coiffure qui vous correspond et qui vous met en valeur, tout en vous offrant un moment de bien-être.', 'artisan_13.jpg', 0),
(14, 14, 4.1, 'Coiffeur créatif, spécialisé dans les coupes modernes et les couleurs tendances. Je vous propose des prestations sur mesure, adaptées à votre type de cheveux et à votre style personnel. Mon objectif est de vous offrir une coiffure unique qui vous ressemble, avec une attention particulière aux détails pour un résultat impeccable.', 'artisan_14.jpg', 0),
(15, 15, 4.6, 'Fleuriste, je crée des arrangements floraux pour toutes occasions, en alliant esthétisme et émotion. Chaque bouquet est réalisé avec soin et créativité pour exprimer vos sentiments. Que ce soit pour un mariage, un anniversaire ou simplement pour faire plaisir, je vous propose des compositions florales uniques qui sauront émerveiller vos proches.', 'artisan_15.jpg', 0),
(16, 16, 4.5, 'Toiletteur professionnel, je prends soin de vos animaux avec douceur et expertise. Spécialisé dans les coupes, les soins et l\'hygiène, je veille à ce que votre compagnon soit bien traité. Mon service est adapté à chaque type d\'animal, avec des produits de qualité pour garantir leur confort et leur bien-être.', 'artisan_16.jpg', 0),
(17, 17, 4.4, 'Webdesigner, je crée des sites internet modernes et fonctionnels, adaptés à vos besoins professionnels ou personnels. Mon expertise en design web me permet de créer des interfaces attractives et ergonomiques pour offrir une expérience utilisateur optimale. Vous souhaitez un site internet unique et performant ? Je vous accompagne à chaque étape de votre projet.', 'artisan_17.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `metier`
--

CREATE TABLE `metier` (
  `id` int(11) NOT NULL,
  `artisan_id` int(11) DEFAULT NULL,
  `branche_id` int(11) DEFAULT NULL,
  `specialite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `metier`
--

INSERT INTO `metier` (`id`, `artisan_id`, `branche_id`, `specialite`) VALUES
(1, 1, 1, 'Boucher'),
(2, 2, 1, 'Boulanger'),
(3, 3, 1, 'Chocolatier'),
(4, 4, 1, 'Traiteur'),
(5, 5, 2, 'Chauffagiste'),
(6, 6, 2, 'Electricien'),
(7, 7, 2, 'Menuisier'),
(8, 8, 2, 'Plombier'),
(9, 9, 3, 'Bijoutier'),
(10, 10, 3, 'Couturier'),
(11, 11, 3, 'Ferronier'),
(12, 12, 4, 'Coiffeur'),
(13, 13, 4, 'Coiffeur'),
(14, 14, 4, 'Coiffeur'),
(15, 15, 4, 'Fleuriste'),
(16, 16, 4, 'Toiletteur'),
(17, 17, 4, 'Webdesign');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `artisan`
--
ALTER TABLE `artisan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `branche`
--
ALTER TABLE `branche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coordonnees`
--
ALTER TABLE `coordonnees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artisan_id` (`artisan_id`);

--
-- Index pour la table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artisan_id` (`artisan_id`);

--
-- Index pour la table `metier`
--
ALTER TABLE `metier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artisan_id` (`artisan_id`),
  ADD KEY `branche_id` (`branche_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artisan`
--
ALTER TABLE `artisan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `branche`
--
ALTER TABLE `branche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `coordonnees`
--
ALTER TABLE `coordonnees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `metier`
--
ALTER TABLE `metier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `coordonnees`
--
ALTER TABLE `coordonnees`
  ADD CONSTRAINT `coordonnees_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`);

--
-- Contraintes pour la table `infos`
--
ALTER TABLE `infos`
  ADD CONSTRAINT `infos_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`);

--
-- Contraintes pour la table `metier`
--
ALTER TABLE `metier`
  ADD CONSTRAINT `metier_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  ADD CONSTRAINT `metier_ibfk_2` FOREIGN KEY (`branche_id`) REFERENCES `branche` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
