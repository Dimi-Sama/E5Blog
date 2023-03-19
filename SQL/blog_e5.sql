-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 18 mars 2023 à 07:32
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_e5`
--

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `addNewUser`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addNewUser` (`v_nom` VARCHAR(50), `v_prenom` VARCHAR(50), `v_email` VARCHAR(150), `v_adrRue` VARCHAR(50), `v_codePostal` VARCHAR(50), `v_ville` VARCHAR(50), `v_username` VARCHAR(50), `v_mdp` VARCHAR(255))   BEGIN

INSERT INTO utilisateurs VALUE (NULL,v_nom,v_prenom,v_email,CURDATE(),v_adrRue,
v_ville,v_codePostal,v_username,v_mdp);

INSERT INTO membres VALUE (LAST_INSERT_ID());

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `contenu` varchar(20000) DEFAULT NULL,
  `datePublication` datetime DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `idCate` smallint DEFAULT NULL,
  `idUser` smallint DEFAULT NULL,
  `likeTotal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_art` (`idCate`),
  KEY `fk_arti` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `datePublication`, `image`, `idCate`, `idUser`, `likeTotal`) VALUES
(10, 'Héros, le personnage le plus polyvalent de Super Smash Bros Utimate', '<p><strong>Super Smash Bros. Ultimate </strong>est l\'un des jeux de combat les plus populaires de tous les temps, avec un large &eacute;ventail de personnages jouables issus de diff&eacute;rentes franchises de jeux vid&eacute;o. Parmi ces personnages, <strong>H&eacute;ros de Dragon Quest</strong> est l\'un des combattants <em>les plus polyvalents et les plus puissants</em> du jeu.</p>\n<p><strong>H&eacute;ros</strong> est un personnage de <strong>type &eacute;p&eacute;iste</strong> qui a &eacute;t&eacute; ajout&eacute; &agrave; Super Smash Bros. Ultimate en juillet 2019 en tant que<strong> DLC</strong>. Il est issu de la s&eacute;rie Dragon Quest, qui est une franchise de jeux de r&ocirc;le tr&egrave;s populaire au Japon et dans le monde entier. En tant que personnage jouable, H&eacute;ros poss&egrave;de une vari&eacute;t&eacute; d\'attaques qui sont <em>bas&eacute;es sur les sorts magiques et les comp&eacute;tences sp&eacute;ciales de Dragon Quest</em>.</p>\n<p>H&eacute;ros est &eacute;galement &eacute;quip&eacute; de plusieurs sorts magiques, tels que Frizz, Zap, Woosh et Kamikaze, qui peuvent &ecirc;tre utilis&eacute;s pour infliger des d&eacute;g&acirc;ts &agrave; distance ou pour cr&eacute;er des situations favorables pour les combos. En outre, sa capacit&eacute; &agrave; acc&eacute;der &agrave; un <strong>coup critique</strong> lui permet d\'infliger des d&eacute;g&acirc;ts suppl&eacute;mentaires ou de <em>mettre ses adversaires KO plus rapidement</em>.</p>\n<p>En termes de jouabilit&eacute;, H&eacute;ros est un personnage tr&egrave;s technique qui n&eacute;cessite <em>une bonne connaissance de ses mouvements et de ses sorts pour &ecirc;tre utilis&eacute; efficacement.</em> Cependant, une fois que les joueurs ma&icirc;trisent son gameplay, H&eacute;ros peut &ecirc;tre l\'un des personnages <strong>les plus redoutables</strong> de Super Smash Bros. Ultimate.</p>\n<p>En conclusion, H&eacute;ros est un personnage tr&egrave;s polyvalent et puissant de Super Smash Bros. Ultimate qui offre <em>une vari&eacute;t&eacute; d\'options de jeu et de styles de combat.</em> Avec son menu de commandes et ses sorts magiques, H&eacute;ros peut s\'adapter &agrave; toutes sortes de situations et &ecirc;tre utilis&eacute; <strong>efficacement</strong> dans les mains d\'un joueur exp&eacute;riment&eacute;.</p>', '2023-03-16 23:35:19', 'maxresdefault.jpg', 1, 1, 0),
(12, 'Suzume : Découvre le film en avant-première', '<p>Crunchyroll et Eurozoom organisent une vague d\'avant-premi&egrave;res le <strong>24 mars 2023</strong>, soit 3 semaines avant la sortie nationale du film <strong><em>Suzume</em></strong> &agrave; travers toute la France. Le dernier film de Makoto Shinkai sera diffus&eacute; dans plus de 130 cin&eacute;mas et&nbsp;d\'autres cin&eacute;mas s\'ajouteront &agrave; la liste.</p>', '2023-03-17 09:42:41', 'suzume.jpg', 2, 1, 0),
(13, 'Du lourd pour Minecraft en approche ? ', '<h2 id=\"une-nouvelle-mise-a-jour-prometteuse\" class=\"h2-default-jv\">Une nouvelle mise &agrave; jour prometteuse</h2>\r\n<p><strong><a href=\"https://www.jeuxvideo.com/news/1719951/minecraft-1-20-la-nouvelle-mise-a-jour-tant-attendue-donne-enfin-de-ses-nouvelles.htm\">Nous l&rsquo;apprenions au d&eacute;but du mois de mars</a>, la mise &agrave; jour 1.20, tr&egrave;s attendue des joueurs, r&eacute;pond d&eacute;sormais au doux sobriquet de Trails &amp; Tales.</strong> Si nous ne savons pas encore grand chose sur le contenu de cette derni&egrave;re, le premier num&eacute;ro de l&rsquo;&eacute;mission Minecraft Monthly (disponible ci-dessus, malheureusement uniquement en anglais) nous a cependant permis d&rsquo;en apprendre un peu plus sur ce que nous pouvons esp&eacute;rer voir arriver dans les prochains mois.</p>\r\n<p>Parmi les nouveaut&eacute;s, on note par exemple l&rsquo;arriv&eacute;e de nouveaux animaux (dont les chameaux et les Renifleurs), ainsi que d&rsquo;un tout nouveau biome s&rsquo;inspirant des fameux cerisiers en fleurs typiques de l&rsquo;archipel nippon. <strong>Tr&egrave;s tourn&eacute;e sur l&rsquo;exploration et sur les histoires que ces derni&egrave;res peuvent pousser &agrave; raconter, la mise &agrave; jour 1.20 sera &eacute;galement l&rsquo;occasion de red&eacute;couvrir le d&eacute;sert gr&acirc;ce &agrave; quelques art&eacute;facts et autres objets que l&rsquo;on pourra chercher tels de v&eacute;ritables arch&eacute;ologues.</strong> En plus de ces ajouts majeurs, les joueurs de Minecraft pourront &eacute;galement profiter de quelques nouveaux &eacute;l&eacute;ments de construction comme le bambou, les panneaux suspendus et les radeaux. Malheureusement, il est encore impossible de parler d&rsquo;une date de sortie pr&eacute;cise pour tout ce contenu, m&ecirc;me si l&rsquo;on pourrait s&rsquo;attendre &agrave; une sortie pour cet &eacute;t&eacute;.</p>', '2023-03-17 11:24:05', 'minecraft-1.20-update-official-name-minecraft-1.20-trails-and-tales.webp', 1, 1, 0),
(14, 'Build Fischl - Artefacts, Armes et compétences', '<p>Genshin Impact est un RPG solo qui se joue &eacute;galement en mode multijoueurs, un jeu qui fait un carton et qui dispose d\'une grande quantit&eacute; de personnages qu\'il faut &eacute;quiper &agrave; l\'aide d\'artefacts et d\'armes, les comp&eacute;tences sont &eacute;galement importantes et les objets n&eacute;cessaires pas toujours &eacute;vident &agrave; aller chercher. On vous dit donc tout sur l\'&eacute;quipement des personnages jouables de Genshin Impact avec, aujourd\'hui : Fischl !</p>\r\n<p>Cette infographie vous permet de donner une premi&egrave;re orientation &agrave; votre personnage. Am&eacute;liorable en fonction de vos besoins, vous pouvez toutefois commencer par ce type de build, qui vous permettra d\'avancer dans le jeu avec simplicit&eacute;. Ce build est con&ccedil;u pour un niveau d\'aventure moyen entre le niveau 40 et 45, vous pouvez l\'adapter &agrave; plus bas niveau &eacute;videmment, toutefois, au del&agrave; du niveau d\'AR 45, il faudra aller plus dans le d&eacute;tail sur certains artefacts, mais votre personnage, &eacute;quip&eacute; ainsi, est enti&egrave;rement jouable.</p>', '2023-03-17 14:58:34', 'article_build_genshin_impact_fischl.jpg', 1, 1, 0),
(15, 'Un second trailer pour Hikikomari Kyuuketsuki no Monmon', '<p>Une nouvelle vid&eacute;o promotionnelle pour l\'anime Hikikomari Kyuuketsuki no Monmon <span style=\"color: #888;\"><strong>(The Vexations of a Shut-In Vampire Princess)</strong></span> vient d\'&ecirc;tre d&eacute;voil&eacute;e. On apprend par ce biais que la s&eacute;rie anim&eacute;e d&eacute;butera <strong>en octobre 2023</strong> au Japon.<br></p>\r\n<p><strong>Synopsis: </strong></p>\r\n<div class=\"quote1\"><strong>Terakomari</strong>, aussi surnomm&eacute;e <strong>Komari</strong> , une jeune fille qui vit en recluse, se r&eacute;veille et d&eacute;couvre qu\'elle a &eacute;t&eacute; s&eacute;lectionn&eacute;e pour &ecirc;tre un g&eacute;n&eacute;ral de l\'Empire. Bien qu\'elle soit n&eacute;e dans une famille prestigieuse de vampires, <strong>Komari</strong> est athl&eacute;tique, de petite taille et incapable d\'utiliser la magie en raison de son aversion pour le sang. Elle ne savait quoi r&eacute;pondre lorsque sa confidente et suppos&eacute;e domestique, <strong>Ville</strong>, lui a annonc&eacute; la nouvelle. Pas le choix : afin de survivre dans ce nouvel environnement, elle va tout miser sur le bluff !</div><br> <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sgXzmjaSQQI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2023-03-17 17:01:14', 'Hikikomari Kyuuketsuki no Monmon.png', 2, 1, 0),
(30, 'Une première vidéo promotionnelle pour l\'anime The Girl I Like Forgot Her Glasses', '<p>Une premi&egrave;re vid&eacute;o promotionnelle pour l\'anime Suki na Ko ga Megane wo Wasureta (The Girl I Like Forgot Her Glasses) vient d\'&ecirc;tre d&eacute;voil&eacute;e.<br>De plus, nous apprenons que la s&eacute;rie anim&eacute;e d&eacute;butera sa diffusion en juillet 2023 au Japon.&nbsp;</p>\n<p></p><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NUdOX4W4dxc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2023-03-17 17:32:26', 'TheGirlILikeForgotHerGlasses.jpg', 2, 1, 0),
(31, 'Un nouveau jeu vidéo Persona annoncé, les fans vont être aux anges ! ', '<p>Si vous avez aim&eacute; le cinqui&egrave;me &eacute;pisode de la licence Persona, vous risquez d&rsquo;&ecirc;tre on ne peut plus ravi ! C&rsquo;est par le biais de la plateforme sociale chinoise Weibo qu&rsquo;on a d&eacute;couvert l&rsquo;existence d&rsquo;un tout nouveau jeu dans l&rsquo;univers de <strong>Persona 5</strong>. Pour le coup, il va potentiellement faire d&eacute;bat puisque <strong>ce projet annexe ne sera ni plus ni moins qu&rsquo;un jeu de r&ocirc;le en free-to-play, essentiellement disponible sur mobile</strong> (iOS et Android), bien que son lancement chinois (en attendant la confirmation pour les autres pays) soit aussi pr&eacute;vu sur PC Windows. Pour le moment, la fen&ecirc;tre de sortie n&rsquo;a pas &eacute;t&eacute; pr&eacute;cis&eacute;e <strong>mais l&rsquo;on dispose d&rsquo;ores et d&eacute;j&agrave; de quelques informations</strong>.</p>\r\n<p>Comme pour Persona 5 Royal, ce nouveau titre sera &eacute;dit&eacute; par SEGA, sauf qu\'il est, cette fois, le fruit de la collaboration entre Atlus et le studio de d&eacute;veloppement Black Wings Game Studio. Annonc&eacute; en avril 2021, sous la mention &laquo; Code Name : X &raquo; et inclus dans l&rsquo;univers de Persona 5, il portera le nom de Persona 5 : The Phantom X. Les joueurs chinois auront rapidement la chance de mettre les mains dessus puisqu&rsquo;une b&ecirc;ta sera lanc&eacute;e le 29 mars prochain. Malheureusement pour nous, nous n&rsquo;aurons que le concept trailer mis &agrave; disposition ci-dessus, ainsi qu&rsquo;un extrait de gameplay (en t&ecirc;te d\'article), pour ronger notre frein en attendant des nouvelles d&rsquo;une potentielle localisation. Concernant l&rsquo;intrigue, articul&eacute;e autour du &laquo; d&eacute;sir &raquo;, on retrouvera de nouveaux personnages, capables d&rsquo;&eacute;veiller leur propre Persona, d&rsquo;ores et d&eacute;j&agrave; d&eacute;taill&eacute;s sur le site officiel.</p>\r\n<p>&nbsp;</p>', '2023-03-17 22:24:30', 'persona-5-the-phantom-x-key-art_0001017410.jpg', 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'Gaming'),
(2, 'Anime'),
(3, 'Twitch'),
(4, 'Youtube'),
(5, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `idUser` smallint DEFAULT NULL,
  `idArticle` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_co` (`idUser`),
  KEY `fk_comm` (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `idUser` smallint NOT NULL,
  `idArticle` smallint NOT NULL,
  PRIMARY KEY (`idUser`,`idArticle`),
  KEY `fk_like` (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `idUser` smallint NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`idUser`) VALUES
(2);

-- --------------------------------------------------------

--
-- Structure de la table `moderateurs`
--

DROP TABLE IF EXISTS `moderateurs`;
CREATE TABLE IF NOT EXISTS `moderateurs` (
  `idUser` smallint NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `moderateurs`
--

INSERT INTO `moderateurs` (`idUser`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `dateInscription` date DEFAULT NULL,
  `adrRue` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `codePostal` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `mdp` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `dateInscription`, `adrRue`, `ville`, `codePostal`, `username`, `mdp`) VALUES
(1, 'Sosuke', 'Chizu', 'test@gmail.com', '2023-03-16', '9 rue des', 'City', '97490', 'ChizuSama', '$argon2i$v=19$m=65536,t=4,p=1$TWlOYWVrZ2pFMmR0MTVNYg$Wi/yDsYdye1CwvO2PIrlxLVHrotAaTlq/N4Urks/9A0'),
(2, 'Kujo', 'Jotaro', 'testt@gmail.com', '2023-03-17', '21 avions', 'jap', '65420', 'Destroy', '$argon2i$v=19$m=65536,t=4,p=1$M2FPQlg3QXdjcVVpNkhDTw$I7NsGCKtpagdyu1J4wuZWULMRf3baWKPZhJqIbUdZ+0');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_art` FOREIGN KEY (`idCate`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `fk_arti` FOREIGN KEY (`idUser`) REFERENCES `moderateurs` (`idUser`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `fk_co` FOREIGN KEY (`idUser`) REFERENCES `moderateurs` (`idUser`),
  ADD CONSTRAINT `fk_com` FOREIGN KEY (`idUser`) REFERENCES `membres` (`idUser`),
  ADD CONSTRAINT `fk_comm` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_li` FOREIGN KEY (`idUser`) REFERENCES `moderateurs` (`idUser`),
  ADD CONSTRAINT `fk_lik` FOREIGN KEY (`idUser`) REFERENCES `membres` (`idUser`),
  ADD CONSTRAINT `fk_like` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `membres`
--
ALTER TABLE `membres`
  ADD CONSTRAINT `fk_memb` FOREIGN KEY (`idUser`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `moderateurs`
--
ALTER TABLE `moderateurs`
  ADD CONSTRAINT `fk_modo` FOREIGN KEY (`idUser`) REFERENCES `utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
