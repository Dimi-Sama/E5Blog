-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 04 mai 2023 à 05:36
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

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

-- -------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) DEFAULT NULL,
  `contenu` varchar(20000) DEFAULT NULL,
  `datePublication` datetime DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `idCate` smallint DEFAULT NULL,
  `idUser` smallint DEFAULT NULL,
  `likeTotal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_art` (`idCate`),
  KEY `fk_arti` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `datePublication`, `image`, `idCate`, `idUser`, `likeTotal`) VALUES
(10, 'Héros, le personnage le plus polyvalent de Super Smash Bros Utimate', '<p><strong>Super Smash Bros. Ultimate </strong>est l\'un des jeux de combat les plus populaires de tous les temps, avec un large &eacute;ventail de personnages jouables issus de diff&eacute;rentes franchises de jeux vid&eacute;o. Parmi ces personnages, <strong>H&eacute;ros de Dragon Quest</strong> est l\'un des combattants <em>les plus polyvalents et les plus puissants</em> du jeu.</p>\n<p><strong>H&eacute;ros</strong> est un personnage de <strong>type &eacute;p&eacute;iste</strong> qui a &eacute;t&eacute; ajout&eacute; &agrave; Super Smash Bros. Ultimate en juillet 2019 en tant que<strong> DLC</strong>. Il est issu de la s&eacute;rie Dragon Quest, qui est une franchise de jeux de r&ocirc;le tr&egrave;s populaire au Japon et dans le monde entier. En tant que personnage jouable, H&eacute;ros poss&egrave;de une vari&eacute;t&eacute; d\'attaques qui sont <em>bas&eacute;es sur les sorts magiques et les comp&eacute;tences sp&eacute;ciales de Dragon Quest</em>.</p>\n<p>H&eacute;ros est &eacute;galement &eacute;quip&eacute; de plusieurs sorts magiques, tels que Frizz, Zap, Woosh et Kamikaze, qui peuvent &ecirc;tre utilis&eacute;s pour infliger des d&eacute;g&acirc;ts &agrave; distance ou pour cr&eacute;er des situations favorables pour les combos. En outre, sa capacit&eacute; &agrave; acc&eacute;der &agrave; un <strong>coup critique</strong> lui permet d\'infliger des d&eacute;g&acirc;ts suppl&eacute;mentaires ou de <em>mettre ses adversaires KO plus rapidement</em>.</p>\n<p>En termes de jouabilit&eacute;, H&eacute;ros est un personnage tr&egrave;s technique qui n&eacute;cessite <em>une bonne connaissance de ses mouvements et de ses sorts pour &ecirc;tre utilis&eacute; efficacement.</em> Cependant, une fois que les joueurs ma&icirc;trisent son gameplay, H&eacute;ros peut &ecirc;tre l\'un des personnages <strong>les plus redoutables</strong> de Super Smash Bros. Ultimate.</p>\n<p>En conclusion, H&eacute;ros est un personnage tr&egrave;s polyvalent et puissant de Super Smash Bros. Ultimate qui offre <em>une vari&eacute;t&eacute; d\'options de jeu et de styles de combat.</em> Avec son menu de commandes et ses sorts magiques, H&eacute;ros peut s\'adapter &agrave; toutes sortes de situations et &ecirc;tre utilis&eacute; <strong>efficacement</strong> dans les mains d\'un joueur exp&eacute;riment&eacute;.</p>', '2023-03-16 23:35:19', 'maxresdefault.jpg', 1, 1, 0),
(12, 'Suzume : Découvre le film en avant-première', '<p>Crunchyroll et Eurozoom organisent une vague d\'avant-premi&egrave;res le <strong>24 mars 2023</strong>, soit 3 semaines avant la sortie nationale du film <strong><em>Suzume</em></strong> &agrave; travers toute la France. Le dernier film de Makoto Shinkai sera diffus&eacute; dans plus de 130 cin&eacute;mas et&nbsp;d\'autres cin&eacute;mas s\'ajouteront &agrave; la liste.</p>', '2023-03-17 09:42:41', 'suzume.jpg', 2, 1, 0),
(13, 'Du lourd pour Minecraft en approche ? ', '<h2 id=\"une-nouvelle-mise-a-jour-prometteuse\" class=\"h2-default-jv\">Une nouvelle mise &agrave; jour prometteuse</h2>\r\n<p><strong><a href=\"https://www.jeuxvideo.com/news/1719951/minecraft-1-20-la-nouvelle-mise-a-jour-tant-attendue-donne-enfin-de-ses-nouvelles.htm\">Nous l&rsquo;apprenions au d&eacute;but du mois de mars</a>, la mise &agrave; jour 1.20, tr&egrave;s attendue des joueurs, r&eacute;pond d&eacute;sormais au doux sobriquet de Trails &amp; Tales.</strong> Si nous ne savons pas encore grand chose sur le contenu de cette derni&egrave;re, le premier num&eacute;ro de l&rsquo;&eacute;mission Minecraft Monthly (disponible ci-dessus, malheureusement uniquement en anglais) nous a cependant permis d&rsquo;en apprendre un peu plus sur ce que nous pouvons esp&eacute;rer voir arriver dans les prochains mois.</p>\r\n<p>Parmi les nouveaut&eacute;s, on note par exemple l&rsquo;arriv&eacute;e de nouveaux animaux (dont les chameaux et les Renifleurs), ainsi que d&rsquo;un tout nouveau biome s&rsquo;inspirant des fameux cerisiers en fleurs typiques de l&rsquo;archipel nippon. <strong>Tr&egrave;s tourn&eacute;e sur l&rsquo;exploration et sur les histoires que ces derni&egrave;res peuvent pousser &agrave; raconter, la mise &agrave; jour 1.20 sera &eacute;galement l&rsquo;occasion de red&eacute;couvrir le d&eacute;sert gr&acirc;ce &agrave; quelques art&eacute;facts et autres objets que l&rsquo;on pourra chercher tels de v&eacute;ritables arch&eacute;ologues.</strong> En plus de ces ajouts majeurs, les joueurs de Minecraft pourront &eacute;galement profiter de quelques nouveaux &eacute;l&eacute;ments de construction comme le bambou, les panneaux suspendus et les radeaux. Malheureusement, il est encore impossible de parler d&rsquo;une date de sortie pr&eacute;cise pour tout ce contenu, m&ecirc;me si l&rsquo;on pourrait s&rsquo;attendre &agrave; une sortie pour cet &eacute;t&eacute;.</p>', '2023-03-17 11:24:05', 'minecraft-1.20-update-official-name-minecraft-1.20-trails-and-tales.webp', 1, 1, 0),
(14, 'Build Fischl - Artefacts, Armes et compétences', '<p>Genshin Impact est un RPG solo qui se joue &eacute;galement en mode multijoueurs, un jeu qui fait un carton et qui dispose d\'une grande quantit&eacute; de personnages qu\'il faut &eacute;quiper &agrave; l\'aide d\'artefacts et d\'armes, les comp&eacute;tences sont &eacute;galement importantes et les objets n&eacute;cessaires pas toujours &eacute;vident &agrave; aller chercher. On vous dit donc tout sur l\'&eacute;quipement des personnages jouables de Genshin Impact avec, aujourd\'hui : Fischl !</p>\r\n<p>Cette infographie vous permet de donner une premi&egrave;re orientation &agrave; votre personnage. Am&eacute;liorable en fonction de vos besoins, vous pouvez toutefois commencer par ce type de build, qui vous permettra d\'avancer dans le jeu avec simplicit&eacute;. Ce build est con&ccedil;u pour un niveau d\'aventure moyen entre le niveau 40 et 45, vous pouvez l\'adapter &agrave; plus bas niveau &eacute;videmment, toutefois, au del&agrave; du niveau d\'AR 45, il faudra aller plus dans le d&eacute;tail sur certains artefacts, mais votre personnage, &eacute;quip&eacute; ainsi, est enti&egrave;rement jouable.</p>', '2023-03-17 14:58:34', 'article_build_genshin_impact_fischl.jpg', 1, 1, 0),
(30, 'Une première vidéo promotionnelle pour l\'anime The Girl I Like Forgot Her Glasses', '<p>Une premi&egrave;re vid&eacute;o promotionnelle pour l\'anime Suki na Ko ga Megane wo Wasureta (The Girl I Like Forgot Her Glasses) vient d\'&ecirc;tre d&eacute;voil&eacute;e.<br>De plus, nous apprenons que la s&eacute;rie anim&eacute;e d&eacute;butera sa diffusion en juillet 2023 au Japon.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/NUdOX4W4dxc\" frameborder=\"0\" style=\"display: table; margin-left: auto; margin-right: auto;\" width=\"560\" height=\"315\"></iframe></p>', '2023-03-17 17:32:26', 'TheGirlILikeForgotHerGlasses.jpg', 2, 1, 1),
(32, 'Un nouveau Persona annoncé, les fans vont être aux anges ! ', '<p>Si vous avez aim&eacute; le cinqui&egrave;me &eacute;pisode de la licence Persona, vous risquez d&rsquo;&ecirc;tre on ne peut plus ravi ! C&rsquo;est par le biais de la plateforme sociale chinoise Weibo qu&rsquo;on a d&eacute;couvert l&rsquo;existence d&rsquo;un tout nouveau jeu dans l&rsquo;univers de <strong>Persona 5</strong>. Pour le coup, il va potentiellement faire d&eacute;bat puisque <strong>ce projet annexe ne sera ni plus ni moins qu&rsquo;un jeu de r&ocirc;le en free-to-play, essentiellement disponible sur mobile</strong> (iOS et Android), bien que son lancement chinois (en attendant la confirmation pour les autres pays) soit aussi pr&eacute;vu sur PC Windows. Pour le moment, la fen&ecirc;tre de sortie n&rsquo;a pas &eacute;t&eacute; pr&eacute;cis&eacute;e <strong>mais l&rsquo;on dispose d&rsquo;ores et d&eacute;j&agrave; de quelques informations</strong>.</p>\r\n<p>Comme pour Persona 5 Royal, ce nouveau titre sera &eacute;dit&eacute; par SEGA, sauf qu\'il est, cette fois, le fruit de la collaboration entre Atlus et le studio de d&eacute;veloppement Black Wings Game Studio. Annonc&eacute; en avril 2021, sous la mention &laquo; Code Name : X &raquo; et inclus dans l&rsquo;univers de Persona 5, il portera le nom de Persona 5 : The Phantom X. Les joueurs chinois auront rapidement la chance de mettre les mains dessus puisqu&rsquo;une b&ecirc;ta sera lanc&eacute;e le 29 mars prochain. Malheureusement pour nous, nous n&rsquo;aurons que le concept trailer mis &agrave; disposition ci-dessus, ainsi qu&rsquo;un extrait de gameplay (en t&ecirc;te d\'article), pour ronger notre frein en attendant des nouvelles d&rsquo;une potentielle localisation. Concernant l&rsquo;intrigue, articul&eacute;e autour du &laquo; d&eacute;sir &raquo;, on retrouvera de nouveaux personnages, capables d&rsquo;&eacute;veiller leur propre Persona, d&rsquo;ores et d&eacute;j&agrave; d&eacute;taill&eacute;s sur le site officiel.</p>\r\n<p>&nbsp;</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/upvfxp00Bv4\" frameborder=\"0\" style=\"display: table; margin-left: auto; margin-right: auto;\" width=\"560\" height=\"315\"></iframe></p>', '2023-03-17 22:24:30', 'R.jpg', 1, 1, 1),
(34, 'Du lourd pour Minecraft en approche ? ', '<h2 id=\"une-nouvelle-mise-a-jour-prometteuse\" class=\"h2-default-jv\">Une nouvelle mise &agrave; jour prometteuse</h2>\r\n<p><strong><a href=\"https://www.jeuxvideo.com/news/1719951/minecraft-1-20-la-nouvelle-mise-a-jour-tant-attendue-donne-enfin-de-ses-nouvelles.htm\">Nous l&rsquo;apprenions au d&eacute;but du mois de mars</a>, la mise &agrave; jour 1.20, tr&egrave;s attendue des joueurs, r&eacute;pond d&eacute;sormais au doux sobriquet de Trails &amp; Tales.</strong> Si nous ne savons pas encore grand chose sur le contenu de cette derni&egrave;re, le premier num&eacute;ro de l&rsquo;&eacute;mission Minecraft Monthly (disponible ci-dessus, malheureusement uniquement en anglais) nous a cependant permis d&rsquo;en apprendre un peu plus sur ce que nous pouvons esp&eacute;rer voir arriver dans les prochains mois.</p>\r\n<p>Parmi les nouveaut&eacute;s, on note par exemple l&rsquo;arriv&eacute;e de nouveaux animaux (dont les chameaux et les Renifleurs), ainsi que d&rsquo;un tout nouveau biome s&rsquo;inspirant des fameux cerisiers en fleurs typiques de l&rsquo;archipel nippon. <strong>Tr&egrave;s tourn&eacute;e sur l&rsquo;exploration et sur les histoires que ces derni&egrave;res peuvent pousser &agrave; raconter, la mise &agrave; jour 1.20 sera &eacute;galement l&rsquo;occasion de red&eacute;couvrir le d&eacute;sert gr&acirc;ce &agrave; quelques art&eacute;facts et autres objets que l&rsquo;on pourra chercher tels de v&eacute;ritables arch&eacute;ologues.</strong> En plus de ces ajouts majeurs, les joueurs de Minecraft pourront &eacute;galement profiter de quelques nouveaux &eacute;l&eacute;ments de construction comme le bambou, les panneaux suspendus et les radeaux. Malheureusement, il est encore impossible de parler d&rsquo;une date de sortie pr&eacute;cise pour tout ce contenu, m&ecirc;me si l&rsquo;on pourrait s&rsquo;attendre &agrave; une sortie pour cet &eacute;t&eacute;.</p>', '2023-03-17 11:24:05', 'minecraft-1.20-update-official-name-minecraft-1.20-trails-and-tales.webp', 1, 1, 0),
(35, 'Héros, le personnage le plus polyvalent de Super Smash Bros Utimate', '<p><strong>Super Smash Bros. Ultimate </strong>est l\'un des jeux de combat les plus populaires de tous les temps, avec un large &eacute;ventail de personnages jouables issus de diff&eacute;rentes franchises de jeux vid&eacute;o. Parmi ces personnages, <strong>H&eacute;ros de Dragon Quest</strong> est l\'un des combattants <em>les plus polyvalents et les plus puissants</em> du jeu.</p>\r\n<p><strong>H&eacute;ros</strong> est un personnage de <strong>type &eacute;p&eacute;iste</strong> qui a &eacute;t&eacute; ajout&eacute; &agrave; Super Smash Bros. Ultimate en juillet 2019 en tant que<strong> DLC</strong>. Il est issu de la s&eacute;rie Dragon Quest, qui est une franchise de jeux de r&ocirc;le tr&egrave;s populaire au Japon et dans le monde entier. En tant que personnage jouable, H&eacute;ros poss&egrave;de une vari&eacute;t&eacute; d\'attaques qui sont <em>bas&eacute;es sur les sorts magiques et les comp&eacute;tences sp&eacute;ciales de Dragon Quest</em>.</p>\r\n<p>H&eacute;ros est &eacute;galement &eacute;quip&eacute; de plusieurs sorts magiques, tels que Frizz, Zap, Woosh et Kamikaze, qui peuvent &ecirc;tre utilis&eacute;s pour infliger des d&eacute;g&acirc;ts &agrave; distance ou pour cr&eacute;er des situations favorables pour les combos. En outre, sa capacit&eacute; &agrave; acc&eacute;der &agrave; un <strong>coup critique</strong> lui permet d\'infliger des d&eacute;g&acirc;ts suppl&eacute;mentaires ou de <em>mettre ses adversaires KO plus rapidement</em>.</p>\r\n<p>En termes de jouabilit&eacute;, H&eacute;ros est un personnage tr&egrave;s technique qui n&eacute;cessite <em>une bonne connaissance de ses mouvements et de ses sorts pour &ecirc;tre utilis&eacute; efficacement.</em> Cependant, une fois que les joueurs ma&icirc;trisent son gameplay, H&eacute;ros peut &ecirc;tre l\'un des personnages <strong>les plus redoutables</strong> de Super Smash Bros. Ultimate.</p>\r\n<p>En conclusion, H&eacute;ros est un personnage tr&egrave;s polyvalent et puissant de Super Smash Bros. Ultimate qui offre <em>une vari&eacute;t&eacute; d\'options de jeu et de styles de combat.</em> Avec son menu de commandes et ses sorts magiques, H&eacute;ros peut s\'adapter &agrave; toutes sortes de situations et &ecirc;tre utilis&eacute; <strong>efficacement</strong> dans les mains d\'un joueur exp&eacute;riment&eacute;.</p>', '2023-03-16 23:35:19', 'maxresdefault.jpg', 1, 1, 0),
(36, 'Suzume : Découvre le film en avant-première', '<p>Crunchyroll et Eurozoom organisent une vague d\'avant-premi&egrave;res le <strong>24 mars 2023</strong>, soit 3 semaines avant la sortie nationale du film <strong><em>Suzume</em></strong> &agrave; travers toute la France. Le dernier film de Makoto Shinkai sera diffus&eacute; dans plus de 130 cin&eacute;mas et&nbsp;d\'autres cin&eacute;mas s\'ajouteront &agrave; la liste.</p>', '2023-03-17 09:42:41', 'suzume.jpg', 2, 1, 1),
(37, 'Build Fischl - Artefacts, Armes et compétences', '<p>Genshin Impact est un RPG solo qui se joue &eacute;galement en mode multijoueurs, un jeu qui fait un carton et qui dispose d\'une grande quantit&eacute; de personnages qu\'il faut &eacute;quiper &agrave; l\'aide d\'artefacts et d\'armes, les comp&eacute;tences sont &eacute;galement importantes et les objets n&eacute;cessaires pas toujours &eacute;vident &agrave; aller chercher. On vous dit donc tout sur l\'&eacute;quipement des personnages jouables de Genshin Impact avec, aujourd\'hui : Fischl !</p>\r\n<p>Cette infographie vous permet de donner une premi&egrave;re orientation &agrave; votre personnage. Am&eacute;liorable en fonction de vos besoins, vous pouvez toutefois commencer par ce type de build, qui vous permettra d\'avancer dans le jeu avec simplicit&eacute;. Ce build est con&ccedil;u pour un niveau d\'aventure moyen entre le niveau 40 et 45, vous pouvez l\'adapter &agrave; plus bas niveau &eacute;videmment, toutefois, au del&agrave; du niveau d\'AR 45, il faudra aller plus dans le d&eacute;tail sur certains artefacts, mais votre personnage, &eacute;quip&eacute; ainsi, est enti&egrave;rement jouable.</p>', '2023-03-17 14:58:34', 'Control-V.png', 1, 1, 1),
(41, 'Oshi no Ko le meilleur animé printemps 2023 ?', '<p style=\"text-align: center;\">Hier soir est sorti le 1er &eacute;pisode de l\'adaptation anim&eacute; d\'Oshi no Ko sur ADN d\'une dur&eacute;e de 1h30.<br>Actuellement, les retours sont tr&egrave;s positifs au point de finir dans le top 1 en vote sur le site MyAnimeList (ce qui est assez rare pour le coup).</p>\r\n<p style=\"text-align: center;\"><br>Concernant le manga, l\'auteur et sc&eacute;nariste et Akasaka Aka (notamment connue pour son manga Kaguya-sama Love is War qui c\'est termin&eacute; en d&eacute;cembre 2022 et adapt&eacute; en anim&eacute; en 2018 ), et la dessinatrice est Yokoyari Mengo.</p>\r\n<p style=\"text-align: center;\"><em>Pour info Akasaka Aka &agrave; &eacute;crit Oshi no Ko en m&ecirc;me temps que Kaguya-sama d\'o&ugrave; le faite qu\'il n\'est pas illustrateur des planches du manga.</em><br><br><strong>- De quoi &ccedil;a parle ? -</strong><br><br><u>Synopsis : </u><br>Le docteur Gor&ocirc; est obst&eacute;tricien dans un h&ocirc;pital de campagne. Il est loin du monde de paillettes dans lequel &eacute;volue Ai Hoshino, une chanteuse au succ&egrave;s grandissant dont il est \"un fan absolu\". Ces deux-l&agrave; vont peut-&ecirc;tre se rencontrer dans des circonstances peu favorables, mais cet &eacute;v&eacute;nement changera leur vie &agrave; jamais !<br><br>Le Synopsis r&eacute;sume le strict minimum comme tous les trailers sortis &agrave; ce jour qui en montre tr&egrave;s peu ne d&eacute;voilent que les premi&egrave;res minutes du 1er &eacute;pisode.</p>\r\n<p style=\"text-align: center;\">Cependant, pour avoir vu l\'&eacute;pisode je trouve &ccedil;a totalement normal comme il s&rsquo;agit d\'une grosse introduction et que <strong>la vraie intrigue</strong> se met en place &agrave; la fin du premi&egrave;re &eacute;pisode. &Ccedil;a reste assez compliqu&eacute; de faire un r&eacute;sum&eacute; sans se g&acirc;cher la surprise comme les derni&egrave;res minutes sont tr&egrave;s surprenantes et inattendues.<br><br>Malgr&eacute; une direction artistique color&eacute;e, Oshi no Ko c\'est un seinen, drame psychologique r&eacute;aliste m&ecirc;lant show-business et qu&ecirc;te de vengeance.<br><br></p>\r\n<div id=\"player_hover\" style=\"text-align: center;\"></div>\r\n<div id=\"standard_3\" class=\"st-placement standard_3 inVideo\" style=\"border-block: initial !important; border-inline: initial !important; border-start-start-radius: initial !important; border-start-end-radius: initial !important; border-end-start-radius: initial !important; border-end-end-radius: initial !important; overflow-inline: initial !important; overflow-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior-block: initial !important; margin-block: initial !important; margin-inline: initial !important; scroll-margin-block: initial !important; scroll-margin-inline: initial !important; padding-block: initial !important; padding-inline: initial !important; scroll-padding-block: initial !important; scroll-padding-inline: initial !important; inset-block: initial !important; inset-inline: initial !important; block-size: initial !important; min-block-size: initial !important; max-block-size: initial !important; inline-size: initial !important; min-inline-size: initial !important; max-inline-size: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-inline-size: initial !important; background: initial !important; background-blend-mode: initial !important; border: initial !important; border-radius: initial !important; box-decoration-break: initial !important; -moz-float-edge: initial !important; display: initial !important; position: initial !important; float: initial !important; clear: initial !important; vertical-align: initial !important; overflow: initial !important; overflow-anchor: initial !important; transform: initial !important; rotate: initial !important; scale: initial !important; translate: initial !important; offset: initial !important; scroll-behavior: initial !important; scroll-snap-align: initial !important; scroll-snap-type: initial !important; scroll-snap-stop: initial !important; overscroll-behavior: initial !important; isolation: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; resize: initial !important; perspective: initial !important; perspective-origin: initial !important; backface-visibility: initial !important; transform-box: initial !important; transform-style: initial !important; transform-origin: initial !important; contain: initial !important; container: initial !important; appearance: initial !important; -moz-orient: initial !important; will-change: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; touch-action: initial !important; -webkit-line-clamp: initial !important; scrollbar-gutter: initial !important; columns: initial !important; column-fill: initial !important; column-rule: initial !important; column-span: initial !important; content: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; opacity: initial !important; box-shadow: initial !important; clip: initial !important; filter: initial !important; backdrop-filter: initial !important; mix-blend-mode: initial !important; font: initial !important; font-synthesis: initial !important; font-palette: initial !important; visibility: initial !important; writing-mode: initial !important; text-orientation: initial !important; print-color-adjust: initial !important; image-rendering: initial !important; image-orientation: initial !important; dominant-baseline: initial !important; text-anchor: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; shape-rendering: initial !important; stroke: initial !important; stroke-width: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; clip-rule: initial !important; marker: initial !important; paint-order: initial !important; border-collapse: initial !important; empty-cells: initial !important; caption-side: initial !important; border-spacing: initial !important; color: initial !important; text-transform: initial !important; hyphens: initial !important; -moz-text-size-adjust: initial !important; text-indent: initial !important; overflow-wrap: initial !important; word-break: initial !important; text-justify: initial !important; text-align-last: initial !important; letter-spacing: initial !important; word-spacing: initial !important; white-space: initial !important; text-shadow: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; tab-size: initial !important; line-break: initial !important; -webkit-text-fill-color: initial !important; -webkit-text-stroke: initial !important; ruby-align: initial !important; ruby-position: initial !important; text-combine-upright: initial !important; text-rendering: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; text-decoration-skip-ink: initial !important; hyphenate-character: initial !important; forced-color-adjust: initial !important; cursor: initial !important; pointer-events: initial !important; -moz-user-input: initial !important; -moz-user-modify: initial !important; -moz-user-focus: initial !important; caret-color: initial !important; accent-color: initial !important; color-scheme: initial !important; scrollbar-color: initial !important; list-style: initial !important; quotes: initial !important; margin: initial !important; overflow-clip-margin: initial !important; scroll-margin: initial !important; outline: initial !important; outline-offset: initial !important; page: initial !important; padding: initial !important; scroll-padding: initial !important; inset: initial !important; z-index: initial !important; flex-flow: initial !important; place-content: initial !important; place-items: initial !important; flex: initial !important; place-self: initial !important; order: initial !important; width: initial !important; min-width: initial !important; max-width: initial !important; height: initial !important; min-height: initial !important; max-height: initial !important; box-sizing: initial !important; object-fit: initial !important; object-position: initial !important; grid-area: initial !important; grid: initial !important; gap: initial !important; aspect-ratio: initial !important; contain-intrinsic-size: initial !important; vector-effect: initial !important; stop-color: initial !important; stop-opacity: initial !important; flood-color: initial !important; flood-opacity: initial !important; lighting-color: initial !important; mask-type: initial !important; clip-path: initial !important; mask: initial !important; x: initial !important; y: initial !important; cx: initial !important; cy: initial !important; rx: initial !important; ry: initial !important; r: initial !important; d: initial !important; table-layout: initial !important; text-overflow: initial !important; text-decoration: initial !important; ime-mode: initial !important; scrollbar-width: initial !important; user-select: initial !important; -moz-window-dragging: initial !important; -moz-force-broken-image-icon: initial !important; transition: initial !important; animation: initial !important; -moz-box-align: initial !important; -moz-box-direction: initial !important; -moz-box-flex: initial !important; -moz-box-orient: initial !important; -moz-box-pack: initial !important; -moz-box-ordinal-group: initial !important; direction: ltr; text-align: center;\">\r\n<div class=\"st-adunit st-show st-reset\" style=\"border: 0px none; display: block; font-size: 14px; height: 0px; left: 0px; line-height: normal; margin: 0px; max-width: none; padding: 0px; text-align: left; top: 0px; vertical-align: baseline; visibility: visible; width: 0px; transform: none; position: absolute; z-index: 2147483647;\">&nbsp;</div>\r\n</div>\r\n<div id=\"standard_4\" class=\"st-placement standard_4 inPlayer\" style=\"border-block: initial !important; border-inline: initial !important; border-start-start-radius: initial !important; border-start-end-radius: initial !important; border-end-start-radius: initial !important; border-end-end-radius: initial !important; overflow-inline: initial !important; overflow-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior-block: initial !important; margin-block: initial !important; margin-inline: initial !important; scroll-margin-block: initial !important; scroll-margin-inline: initial !important; padding-block: initial !important; padding-inline: initial !important; scroll-padding-block: initial !important; scroll-padding-inline: initial !important; inset-block: initial !important; inset-inline: initial !important; block-size: initial !important; min-block-size: initial !important; max-block-size: initial !important; inline-size: initial !important; min-inline-size: initial !important; max-inline-size: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-inline-size: initial !important; background: initial !important; background-blend-mode: initial !important; border: initial !important; border-radius: initial !important; box-decoration-break: initial !important; -moz-float-edge: initial !important; display: initial !important; position: initial !important; float: initial !important; clear: initial !important; vertical-align: initial !important; overflow: initial !important; overflow-anchor: initial !important; transform: initial !important; rotate: initial !important; scale: initial !important; translate: initial !important; offset: initial !important; scroll-behavior: initial !important; scroll-snap-align: initial !important; scroll-snap-type: initial !important; scroll-snap-stop: initial !important; overscroll-behavior: initial !important; isolation: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; resize: initial !important; perspective: initial !important; perspective-origin: initial !important; backface-visibility: initial !important; transform-box: initial !important; transform-style: initial !important; transform-origin: initial !important; contain: initial !important; container: initial !important; appearance: initial !important; -moz-orient: initial !important; will-change: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; touch-action: initial !important; -webkit-line-clamp: initial !important; scrollbar-gutter: initial !important; columns: initial !important; column-fill: initial !important; column-rule: initial !important; column-span: initial !important; content: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; opacity: initial !important; box-shadow: initial !important; clip: initial !important; filter: initial !important; backdrop-filter: initial !important; mix-blend-mode: initial !important; font: initial !important; font-synthesis: initial !important; font-palette: initial !important; visibility: initial !important; writing-mode: initial !important; text-orientation: initial !important; print-color-adjust: initial !important; image-rendering: initial !important; image-orientation: initial !important; dominant-baseline: initial !important; text-anchor: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; shape-rendering: initial !important; stroke: initial !important; stroke-width: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; clip-rule: initial !important; marker: initial !important; paint-order: initial !important; border-collapse: initial !important; empty-cells: initial !important; caption-side: initial !important; border-spacing: initial !important; color: initial !important; text-transform: initial !important; hyphens: initial !important; -moz-text-size-adjust: initial !important; text-indent: initial !important; overflow-wrap: initial !important; word-break: initial !important; text-justify: initial !important; text-align-last: initial !important; letter-spacing: initial !important; word-spacing: initial !important; white-space: initial !important; text-shadow: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; tab-size: initial !important; line-break: initial !important; -webkit-text-fill-color: initial !important; -webkit-text-stroke: initial !important; ruby-align: initial !important; ruby-position: initial !important; text-combine-upright: initial !important; text-rendering: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; text-decoration-skip-ink: initial !important; hyphenate-character: initial !important; forced-color-adjust: initial !important; cursor: initial !important; pointer-events: initial !important; -moz-user-input: initial !important; -moz-user-modify: initial !important; -moz-user-focus: initial !important; caret-color: initial !important; accent-color: initial !important; color-scheme: initial !important; scrollbar-color: initial !important; list-style: initial !important; quotes: initial !important; margin: initial !important; overflow-clip-margin: initial !important; scroll-margin: initial !important; outline: initial !important; outline-offset: initial !important; page: initial !important; padding: initial !important; scroll-padding: initial !important; inset: initial !important; z-index: initial !important; flex-flow: initial !important; place-content: initial !important; place-items: initial !important; flex: initial !important; place-self: initial !important; order: initial !important; width: initial !important; min-width: initial !important; max-width: initial !important; height: initial !important; min-height: initial !important; max-height: initial !important; box-sizing: initial !important; object-fit: initial !important; object-position: initial !important; grid-area: initial !important; grid: initial !important; gap: initial !important; aspect-ratio: initial !important; contain-intrinsic-size: initial !important; vector-effect: initial !important; stop-color: initial !important; stop-opacity: initial !important; flood-color: initial !important; flood-opacity: initial !important; lighting-color: initial !important; mask-type: initial !important; clip-path: initial !important; mask: initial !important; x: initial !important; y: initial !important; cx: initial !important; cy: initial !important; rx: initial !important; ry: initial !important; r: initial !important; d: initial !important; table-layout: initial !important; text-overflow: initial !important; text-decoration: initial !important; ime-mode: initial !important; scrollbar-width: initial !important; user-select: initial !important; -moz-window-dragging: initial !important; -moz-force-broken-image-icon: initial !important; transition: initial !important; animation: initial !important; -moz-box-align: initial !important; -moz-box-direction: initial !important; -moz-box-flex: initial !important; -moz-box-orient: initial !important; -moz-box-pack: initial !important; -moz-box-ordinal-group: initial !important; direction: ltr; text-align: center;\">\r\n<div class=\"st-adunit st-adunit-tagged st-reset st-show\" style=\"height: 0px; left: 0px; position: absolute; top: 0px; width: 0px; z-index: 2147483647;\">&nbsp;</div>\r\n</div>\r\n<div class=\"st-ad-slot st-swap-ad-slot st-invideo-youtube-player\" style=\"z-index: 0 !important; right: initial; bottom: initial; left: 751px !important; top: 1491px !important; width: 560px !important; height: 315px !important; text-align: center; padding-left: 160px;\"><iframe src=\"https://www.youtube.com/embed/ZRtdQ81jPUQ\" frameborder=\"0\" width=\"560\" height=\"315\"></iframe></div>', '2023-04-21 11:13:31', 'Oshi-no-kono-visual-clave-edited.webp', 2, 1, 1);

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
  `texte` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comm` (`idArticle`),
  KEY `fk_co` (`idUser`) USING BTREE
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

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`idUser`, `idArticle`) VALUES
(1, 30),
(1, 32),
(1, 36),
(1, 37),
(1, 41);

--
-- Déclencheurs `likes`
--
DROP TRIGGER IF EXISTS `updateLike`;
DELIMITER $$
CREATE TRIGGER `updateLike` AFTER INSERT ON `likes` FOR EACH ROW begin
DECLARE count INT;
  set count = ( select count(*) from likes where idArticle = new.idArticle );

 update article set likeTotal = count where id = new.idArticle;
end
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `updateLike2`;
DELIMITER $$
CREATE TRIGGER `updateLike2` AFTER DELETE ON `likes` FOR EACH ROW begin
DECLARE count INT;
  set count = ( select count(*) from likes where idArticle = old.idArticle );

 update article set likeTotal = count where id = old.idArticle;
end
$$
DELIMITER ;

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
(1),
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
  ADD CONSTRAINT `fk_com` FOREIGN KEY (`idUser`) REFERENCES `membres` (`idUser`),
  ADD CONSTRAINT `fk_comm` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
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
