-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 24 mai 2021 à 23:26
-- Version du serveur :  10.3.27-MariaDB-0+deb10u1
-- Version de PHP : 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `NOM DE VOTRE BASE DE Donées`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`NOM DE VOTRE BASE DE Donées`@`%` PROCEDURE `ADD_COLUMN_IF_NOT_EXISTS` (IN `dbName` TINYTEXT, IN `tableName` TINYTEXT, IN `fieldName` TINYTEXT, IN `fieldDef` TEXT)  BEGIN
  IF NOT EXISTS (
    SELECT * FROM information_schema.COLUMNS
    WHERE `column_name`  = fieldName
    AND   `table_name`   = tableName
    AND   `table_schema` = dbName
  )
  THEN
    SET @ddl=CONCAT('ALTER TABLE ', dbName, '.', tableName, ' ADD COLUMN ', fieldName, ' ', fieldDef);
    PREPARE stmt from @ddl;
    EXECUTE stmt;
  END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property_black_money', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ballas', 'ballas', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cardealerluxe', 'Concessionnaire', 1),
('society_cardealermotorbike', 'Concessionnaire Moto Bike', 1),
('society_cardealersports', 'Concessionnaire Sports', 1),
('society_cardealertruck', 'Concessionnaire Truck', 1),
('society_carteldecali', 'carteldecali', 1),
('society_families', 'families', 1),
('society_mafia', 'Mafia', 1),
('society_Marabunta', 'mara', 1),
('society_mechanic', 'Mécano', 1),
('society_motorcycle', 'Moto', 1),
('society_ms13', 'MS13', 1),
('societ_police', 'Police', 1),
('societ_realestateagent', 'Agent immobilier', 1),
('societ_taxi', 'Taxi', 1),
('societ_test', 'test', 1),
('society_unicorn', 'unicorn', 1),
('society_Vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_cardealer', 6178520, NULL),
(3, 'society_mechanic', 807254, NULL),
(4, 'society_taxi', 0, NULL),
(5, 'caution', 0, 'steam:11000013e74a9b9'),
(6, 'society_police', 1, NULL),
(7, 'society_Marabunta', 0, NULL),
(8, 'society_vigne', 0, NULL),
(9, 'society_test', 0, NULL),
(10, 'society_dq', 0, NULL),
(11, 'property_black_money', 100, 'steam:11000013e74a9b9'),
(12, 'society_ballas', 0, NULL),
(13, 'caution', 0, 'steam:1100001329e1807'),
(14, 'property_black_money', 0, 'steam:1100001329e1807'),
(15, 'society_unicorn', 0, NULL),
(16, 'caution', 0, 'steam:11000010c113c89'),
(17, 'property_black_money', 0, 'steam:11000010c113c89'),
(18, 'caution', 0, 'steam:11000013ec2b6b1'),
(19, 'property_black_money', 0, 'steam:11000013ec2b6b1'),
(20, 'caution', 0, 'steam:1100001400bcf91'),
(21, 'property_black_money', 0, 'steam:1100001400bcf91'),
(22, 'caution', 0, 'steam:11000013f089a2a'),
(23, 'property_black_money', 0, 'steam:11000013f089a2a'),
(24, 'caution', 0, 'steam:1100001438e7c0a'),
(25, 'property_black_money', 0, 'steam:1100001438e7c0a'),
(26, 'society_cardealerluxe', 1660112, NULL),
(27, 'society_cardealermotorbike', 0, NULL),
(28, 'society_cardealersports', 0, NULL),
(29, 'society_cardealertruck', 0, NULL),
(30, 'society_motorcycle', 961900, NULL),
(31, 'caution', 0, 'steam:11000013d0f8906'),
(32, 'property_black_money', 0, 'steam:11000013d0f8906'),
(33, 'society_Vagos', 0, NULL),
(34, 'caution', 0, 'steam:1100001454ba550'),
(35, 'property_black_money', 0, 'steam:1100001454ba550'),
(36, 'caution', 0, 'steam:110000144de223c'),
(37, 'property_black_money', 0, 'steam:110000144de223c'),
(38, 'caution', 0, 'steam:1100001415ae8d2'),
(39, 'property_black_money', 0, 'steam:1100001415ae8d2'),
(40, 'society_realestateagent', 33500, NULL),
(41, 'society_families', 0, NULL),
(42, 'society_carteldecali', 0, NULL),
(43, 'society_mafia', 0, NULL),
(44, 'society_ms13', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_inventory`                                                                                                                                                                                                                                                                                       
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ballas', 'ballas', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_cardealerluxe', 'Concesionnaire', 1),
('society_cardealermotorbike', 'Concesionnaire Moto Bike', 1),
('society_cardealersports', 'Concessionnaire Sports', 1),
('society_cardealertruck', 'Concesionnaire Truck', 1),
('society_carteldecali', 'carteldecali', 1),
('society_dq', 'sk', 1),
('society_families', 'families', 1),
('society_mafia', 'Mafia', 1),
('society_Marabunta', 'mara', 1),
('society_mechanic', 'Mécano', 1),
('society_motorcycle', 'Moto', 1),
('society_ms13', 'MS13', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('society_test', 'test', 1),
('society_unicorn', 'unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_Vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(3, 'society_ballas', 'icetea', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bike`
--

CREATE TABLE `bike` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bike`
--

INSERT INTO `bike` (`name`, `model`, `price`, `category`) VALUES
('Honda 450 CRF', '450crf', 16800, 'bikeimport'),
('Yamaha Nitro', 'aeroxr', 2850, 'bikeimport'),
('Akuma', 'akuma', 4500, 'motos'),
('Avarus', 'avarus', 10000, 'motos'),
('Bagger', 'bagger', 5500, 'motos'),
('Bati 801', 'bati', 4000, 'motos'),
('Bati 801 RR', 'bati2', 7500, 'motos'),
('BF 400', 'bf400', 4000, 'motos'),
('BMW S1000 RR', 'bmws', 50000, 'bikeimport'),
('Honda 650 repsol', 'cb650fr', 50000, 'bikeimport'),
('Chimera', 'chimera', 35000, 'motos'),
('Cliffhanger', 'cliffhanger', 6500, 'motos'),
('Daemon', 'daemon', 5500, 'motos'),
('Daemon', 'daemon2', 7000, 'motos'),
('Defiler', 'Defiler', 6800, 'motos'),
('Diabolus', 'diablous', 15000, 'motos'),
('Diabolus Custom', 'diablous2', 25000, 'motos'),
('Double - T', 'double', 10000, 'motos'),
('Enduro', 'enduro', 5000, 'motos'),
('Esskey', 'esskey', 4200, 'motos'),
('KTM EXC530 SM', 'exc530sm', 19000, 'bikeimport'),
('Faggio Sport', 'faggio', 1000, 'motos'),
('Faggio Mod', 'faggio3', 2500, 'motos'),
('FCR 1000', 'fcr', 24000, 'motos'),
('FCR 1000 Custom', 'fcr2', 26000, 'motos'),
('Gargoyle', 'gargoyle', 7500, 'motos'),
('Hakuchou', 'hakuchou', 18000, 'motos'),
('Hexer', 'hexer', 12000, 'motos'),
('Innovation', 'innovation', 5000, 'motos'),
('Kawasaki KX 450 F', 'kx450f', 25000, 'bikeimport'),
('Lectro', 'lectro', 5000, 'motos'),
('Manchez', 'manchez', 5300, 'motos'),
('Nemesis', 'nemesis', 5800, 'motos'),
('Kawasaki H2R', 'nh2r', 45000, 'bikeimport'),
('Nightblade', 'nightblade', 35000, 'motos'),
('PCJ 600', 'pcj', 6200, 'motos'),
('Yamaha R1', 'r1', 35000, 'bikeimport'),
('Yamaha R6', 'r6', 25000, 'bikeimport'),
('Rat Bike', 'ratbike', 5000, 'motos'),
('Ruffian', 'ruffian', 2000, 'motos'),
('Sanchez V2', 'sanchez', 4000, 'motos'),
('Sanctus', 'sanctus', 4500, 'motos'),
('Lambo sc18', 'sc18', 150000, 'importcar'),
('Sovereign', 'sovereign', 25000, 'motos'),
('Thrust', 'thrust', 9000, 'motos'),
('tmax', 'tmax', 14000, 'bikeimport'),
('Vader', 'vader', 25000, 'motos'),
('Vindicator', 'vindicator', 12000, 'motos'),
('Vortex', 'vortex', 5000, 'motos'),
('Wolfsbane', 'wolfsbane', 45000, 'motos'),
('yamaha 450 raptor', 'yz450', 15000, 'bikeimport'),
('Zombie Bobber', 'zombiea', 10000, 'motos'),
('Zombie Chopper', 'zombieb', 15000, 'motos'),
('zx10r', 'zx10r', 55000, 'bikeimport');

-- --------------------------------------------------------

--
-- Structure de la table `bike_categories`
--

CREATE TABLE `bike_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bike_categories`
--

INSERT INTO `bike_categories` (`name`, `label`) VALUES
('bikeimport', 'Moto Importées'),
('motos', 'Motos');

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(1, 'steam:1100001415ae8d2', 'steam:1100001329e1807', 'society', 'society_police', 'police', 10),
(2, 'steam:1100001329e1807', 'steam:1100001415ae8d2', 'society', 'society_police', 'police', 100000000),
(4, 'steam:1100001415ae8d2', 'steam:1100001329e1807', 'society', 'society_police', 'police', 1),
(6, 'steam:1100001415ae8d2', 'steam:1100001329e1807', 'society', 'society_police', 'police', 1),
(8, 'steam:110000144de223c', 'steam:1100001329e1807', 'society', 'society_police', 'Amende: Usage abusif du klaxon', 30);

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
('steam:110000112a69b9e', 'Yanis', 'Breezi', '19841212', 'M', '96'),
('steam:11000013e74a9b9', 'Suarez', 'Rodriguez', '20/05/2007', 'F', '45'),
('steam:11000010c113c89', 'Sharko', 'Ellwood', '02/06/1996', 'h', '180'),
('steam:1100001329e1807', 'Lucas', 'Fremaux', '10/09/2003', 'h', '180'),
('steam:11000013ec2b6b1', 'Yan', 'Neil', '2004/01/27', 'h', '189'),
('steam:11000013d0f8906', 'Rulio', 'Perez', '1998-03-04', 'h', '190'),
('steam:1100001454ba550', 'Drs', 'Julien', '24/10/1975', 'h', '180'),
('steam:110000144de223c', 'Matsu', 'Fondateur', '29/09/1943', 'h', '180'),
('steam:1100001415ae8d2', 'Tom', 'Clark', '26/05/1994', 'h', '198'),
('steam:1100001415ae8d2', 'Tom', 'Clark', '26/05/1994', 'h', '198'),
('steam:1100001329e1807', 'Lucas', 'Fremaux', '10/09/2003', 'h', '180');

-- --------------------------------------------------------

--
-- Structure de la table `crew_phone_bank`
--

CREATE TABLE `crew_phone_bank` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `crew_phone_news`
--

CREATE TABLE `crew_phone_news` (
  `id` int(11) NOT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ballas', 'ballas', 1),
('society_carteldecali', 'carteldecali', 1),
('society_dq', 'sk', 1),
('society_families', 'families', 1),
('society_mafia', 'Mafia', 1),
('society_Marabunta', 'mara', 1),
('society_mechanic', 'Mécano', 1),
('society_ms13', 'MS13', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('society_test', 'test', 1),
('society_unicorn', 'unicorn', 1),
('society_Vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_mechanic', NULL, '{}'),
(3, 'society_taxi', NULL, '{}'),
(4, 'society_police', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":0,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_PISTOL50\"},{\"count\":0,\"name\":\"WEAPON_SMG\"},{\"count\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_BZGAS\"},{\"count\":0,\"name\":\"WEAPON_STUNGUN\"},{\"count\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":0,\"name\":\"WEAPON_FLARE\"}]}'),
(5, 'society_Marabunta', NULL, '{}'),
(6, 'society_vigne', NULL, '{}'),
(7, 'society_test', NULL, '{}'),
(8, 'society_dq', NULL, '{}'),
(9, 'property', 'steam:11000013e74a9b9', '{\"dressing\":[{\"label\":\"bgg\",\"skin\":{\"beard_3\":0,\"pants_2\":0,\"blush_1\":0,\"arms_2\":0,\"decals_1\":0,\"shoes_1\":1,\"mask_1\":0,\"chest_2\":0,\"beard_1\":0,\"pants_1\":4,\"blush_2\":0,\"age_2\":0,\"watches_1\":-1,\"eyebrows_2\":0,\"eyebrows_3\":0,\"moles_2\":0,\"makeup_4\":0,\"helmet_1\":3,\"blush_3\":0,\"tshirt_2\":0,\"bags_1\":0,\"decals_2\":0,\"complexion_2\":0,\"complexion_1\":0,\"torso_1\":82,\"hair_color_2\":0,\"eye_color\":0,\"beard_4\":0,\"eyebrows_4\":0,\"hair_1\":0,\"skin\":0,\"bodyb_2\":0,\"lipstick_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"chest_3\":0,\"eyebrows_1\":0,\"ears_1\":-1,\"shoes_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bracelets_1\":-1,\"chest_1\":0,\"arms\":19,\"sun_1\":0,\"tshirt_1\":15,\"glasses_2\":0,\"hair_color_1\":0,\"sex\":0,\"lipstick_3\":0,\"hair_2\":0,\"helmet_2\":1,\"ears_2\":0,\"beard_2\":0,\"lipstick_4\":0,\"face\":0,\"watches_2\":0,\"sun_2\":0,\"chain_2\":0,\"torso_2\":0,\"chain_1\":17,\"bproof_1\":0,\"moles_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"bags_2\":0,\"bodyb_1\":0,\"age_1\":0,\"glasses_1\":5,\"mask_2\":0}}]}'),
(10, 'society_ballas', NULL, '{\"garage\":[],\"weapons\":[]}'),
(11, 'property', 'steam:1100001329e1807', '{\"dressing\":[{\"label\":\"Casa de Papel\",\"skin\":{\"complexion_1\":0,\"glasses_2\":0,\"chain_2\":0,\"beard_4\":0,\"arms\":31,\"chest_3\":0,\"blush_3\":0,\"torso_1\":66,\"ears_1\":-1,\"lipstick_4\":0,\"tshirt_2\":0,\"makeup_4\":0,\"shoes_2\":0,\"bproof_2\":0,\"eyebrows_1\":0,\"skin\":0,\"eyebrows_3\":0,\"bodyb_1\":0,\"hair_color_2\":0,\"helmet_1\":-1,\"glasses_1\":0,\"blemishes_2\":0,\"sex\":0,\"sun_2\":0,\"blush_2\":0,\"ears_2\":0,\"moles_2\":0,\"pants_2\":0,\"bproof_1\":0,\"chain_1\":0,\"eyebrows_2\":0,\"beard_2\":0,\"eye_color\":0,\"blush_1\":0,\"hair_color_1\":0,\"torso_2\":0,\"lipstick_2\":0,\"beard_3\":0,\"mask_1\":0,\"hair_1\":10,\"decals_1\":0,\"face\":0,\"watches_1\":-1,\"arms_2\":0,\"age_2\":0,\"beard_1\":0,\"decals_2\":0,\"moles_1\":0,\"makeup_2\":0,\"bodyb_2\":0,\"chest_2\":0,\"complexion_2\":0,\"bags_1\":0,\"shoes_1\":25,\"lipstick_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"chest_1\":0,\"pants_1\":39,\"eyebrows_4\":0,\"tshirt_1\":15,\"makeup_3\":0,\"lipstick_3\":0,\"hair_2\":0,\"sun_1\":0,\"makeup_1\":0,\"age_1\":0,\"bags_2\":0,\"helmet_2\":0,\"blemishes_1\":0,\"watches_2\":0,\"mask_2\":0}},{\"label\":\"Police\",\"skin\":{\"complexion_1\":0,\"glasses_2\":0,\"chain_2\":0,\"beard_4\":0,\"arms\":32,\"chest_3\":0,\"watches_1\":-1,\"torso_1\":92,\"ears_1\":-1,\"lipstick_4\":0,\"tshirt_2\":0,\"makeup_4\":0,\"shoes_2\":0,\"bproof_2\":0,\"eyebrows_1\":0,\"skin\":0,\"eyebrows_3\":0,\"bodyb_1\":0,\"decals_2\":0,\"helmet_1\":-1,\"glasses_1\":0,\"blemishes_2\":0,\"sex\":0,\"sun_2\":0,\"blush_2\":0,\"chest_2\":0,\"moles_2\":0,\"pants_2\":0,\"bproof_1\":0,\"chain_1\":1,\"eyebrows_2\":0,\"beard_2\":0,\"eye_color\":0,\"blush_1\":0,\"hair_color_1\":0,\"torso_2\":0,\"beard_3\":0,\"decals_1\":0,\"bracelets_1\":-1,\"chest_1\":0,\"moles_1\":0,\"face\":0,\"hair_color_2\":0,\"arms_2\":0,\"age_2\":0,\"beard_1\":0,\"hair_1\":10,\"complexion_2\":0,\"makeup_2\":0,\"bodyb_2\":0,\"bracelets_2\":0,\"shoes_1\":25,\"bags_1\":0,\"blush_3\":0,\"lipstick_1\":0,\"hair_2\":0,\"age_1\":0,\"eyebrows_4\":0,\"pants_1\":52,\"mask_1\":0,\"tshirt_1\":105,\"makeup_3\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"sun_1\":0,\"makeup_1\":0,\"helmet_2\":0,\"bags_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"watches_2\":0,\"mask_2\":0}},{\"label\":\"SWAT\",\"skin\":{\"beard_3\":0,\"glasses_2\":0,\"chain_2\":0,\"age_1\":0,\"arms\":41,\"chest_3\":0,\"blush_3\":0,\"torso_1\":2,\"ears_1\":12,\"lipstick_4\":0,\"tshirt_2\":0,\"makeup_4\":0,\"shoes_2\":0,\"hair_1\":10,\"eyebrows_1\":0,\"skin\":0,\"eyebrows_3\":0,\"bodyb_1\":0,\"decals_2\":0,\"helmet_1\":-1,\"glasses_1\":0,\"blemishes_2\":0,\"sex\":0,\"sun_2\":0,\"blush_2\":0,\"watches_2\":0,\"moles_2\":0,\"pants_2\":1,\"bproof_1\":0,\"chain_1\":0,\"eyebrows_2\":0,\"beard_2\":0,\"eye_color\":0,\"blush_1\":0,\"hair_color_1\":0,\"torso_2\":3,\"lipstick_2\":0,\"complexion_1\":0,\"bproof_2\":0,\"watches_1\":-1,\"decals_1\":0,\"face\":0,\"shoes_1\":25,\"arms_2\":0,\"age_2\":0,\"beard_1\":0,\"hair_color_2\":0,\"moles_1\":0,\"makeup_2\":0,\"bodyb_2\":0,\"chest_1\":0,\"complexion_2\":0,\"bags_1\":0,\"bracelets_1\":-1,\"lipstick_1\":0,\"bracelets_2\":0,\"hair_2\":0,\"beard_4\":0,\"pants_1\":52,\"eyebrows_4\":0,\"tshirt_1\":105,\"makeup_3\":0,\"lipstick_3\":0,\"mask_1\":0,\"sun_1\":0,\"makeup_1\":0,\"helmet_2\":0,\"bags_2\":0,\"blemishes_1\":0,\"chest_2\":0,\"ears_2\":3,\"mask_2\":0}},{\"label\":\"SWAT + SAC\",\"skin\":{\"complexion_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"beard_4\":0,\"arms\":41,\"chest_3\":0,\"watches_1\":-1,\"torso_1\":2,\"ears_1\":12,\"lipstick_4\":0,\"tshirt_2\":0,\"makeup_4\":0,\"shoes_2\":0,\"hair_1\":10,\"eyebrows_1\":0,\"skin\":0,\"eyebrows_3\":0,\"bodyb_1\":0,\"hair_color_2\":0,\"helmet_1\":-1,\"glasses_1\":0,\"blemishes_2\":0,\"sex\":0,\"sun_2\":0,\"blush_2\":0,\"watches_2\":0,\"moles_2\":0,\"pants_2\":1,\"bproof_1\":0,\"chain_1\":0,\"eyebrows_2\":0,\"beard_2\":0,\"eye_color\":0,\"blush_1\":0,\"hair_color_1\":0,\"torso_2\":3,\"beard_3\":0,\"bproof_2\":0,\"mask_1\":0,\"decals_1\":0,\"decals_2\":0,\"face\":0,\"moles_1\":0,\"arms_2\":0,\"age_2\":0,\"beard_1\":0,\"complexion_2\":0,\"shoes_1\":25,\"makeup_2\":0,\"bodyb_2\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"bags_1\":21,\"blush_3\":0,\"lipstick_1\":0,\"chest_1\":0,\"hair_2\":0,\"age_1\":0,\"pants_1\":52,\"glasses_2\":0,\"tshirt_1\":105,\"makeup_3\":0,\"lipstick_3\":0,\"helmet_2\":0,\"sun_1\":0,\"makeup_1\":0,\"blemishes_1\":0,\"bags_2\":0,\"chest_2\":0,\"eyebrows_4\":0,\"ears_2\":3,\"mask_2\":0}},{\"label\":\"Police Intervention\",\"skin\":{\"beard_3\":0,\"lipstick_2\":0,\"chain_2\":0,\"beard_4\":0,\"bracelets_1\":-1,\"chest_3\":0,\"watches_1\":-1,\"torso_1\":92,\"ears_1\":12,\"lipstick_4\":0,\"tshirt_2\":0,\"makeup_4\":0,\"shoes_2\":0,\"hair_1\":10,\"eyebrows_1\":0,\"skin\":0,\"eyebrows_3\":0,\"helmet_2\":0,\"hair_color_2\":0,\"helmet_1\":117,\"glasses_1\":0,\"blemishes_2\":0,\"sex\":0,\"sun_2\":0,\"blush_2\":0,\"watches_2\":0,\"moles_2\":0,\"pants_2\":1,\"bproof_1\":16,\"chain_1\":0,\"eyebrows_2\":0,\"beard_2\":0,\"eye_color\":0,\"blush_1\":0,\"hair_color_1\":0,\"torso_2\":3,\"bodyb_1\":0,\"mask_1\":35,\"decals_1\":0,\"bproof_2\":2,\"glasses_2\":0,\"face\":0,\"complexion_1\":0,\"arms_2\":0,\"age_2\":0,\"beard_1\":0,\"moles_1\":0,\"chest_1\":0,\"makeup_2\":0,\"bodyb_2\":0,\"arms\":41,\"bracelets_2\":0,\"bags_1\":21,\"shoes_1\":25,\"lipstick_1\":0,\"blush_3\":0,\"decals_2\":0,\"age_1\":0,\"hair_2\":0,\"pants_1\":52,\"tshirt_1\":105,\"makeup_3\":0,\"lipstick_3\":0,\"complexion_2\":0,\"sun_1\":0,\"makeup_1\":0,\"blemishes_1\":0,\"bags_2\":0,\"chest_2\":0,\"eyebrows_4\":0,\"ears_2\":3,\"mask_2\":0}}]}'),
(12, 'society_unicorn', NULL, '{}'),
(13, 'property', 'steam:11000010c113c89', '{}'),
(14, 'property', 'steam:11000013ec2b6b1', '{}'),
(15, 'property', 'steam:1100001400bcf91', '{}'),
(16, 'property', 'steam:11000013f089a2a', '{}'),
(17, 'property', 'steam:1100001438e7c0a', '{}'),
(18, 'property', 'steam:11000013d0f8906', '{}'),
(19, 'society_Vagos', NULL, '{}'),
(20, 'property', 'steam:1100001454ba550', '{}'),
(21, 'property', 'steam:110000144de223c', '{}'),
(22, 'property', 'steam:1100001415ae8d2', '{}'),
(23, 'society_families', NULL, '{}'),
(24, 'society_carteldecali', NULL, '{}'),
(25, 'society_mafia', NULL, '{}'),
(26, 'society_ms13', NULL, '{}');

-- --------------------------------------------------------

--
-- Structure de la table `doors`
--

CREATE TABLE `doors` (
  `index` int(11) NOT NULL,
  `door` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:1100001329e1807', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001454ba550', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000144de223c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001415ae8d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ballas`
--

CREATE TABLE `fine_types_ballas` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_ballas`
--

INSERT INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('bag', 'Sac', 1, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('bread', 'Pain', 10, 0, 1),
('champagne', 'Champagne Bottle', -1, 0, 1),
('cles', 'Clés véhicules', 50, 0, 1),
('clothe', 'Vêtement', 40, 0, 1),
('coke', 'Coke', 50, 0, 1),
('coke_pooch', 'Pochon de coke', 10, 0, 1),
('compo', 'Composants', 50, 0, 1),
('copper', 'Cuivre', 56, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('diamond', 'Diamant', 50, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('gold', 'Or', 21, 0, 1),
('gps', 'GPS', -1, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('hamburger', 'Hamburger', -1, 0, 10),
('icetea', 'Ice-Tea', -1, 0, 10),
('iron', 'Fer', 42, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('kevlar', 'Kevlar', 20, 0, 1),
('keys_master_key', 'Master Key', -1, 0, 1),
('keys_master_key_single_use', 'Master Key (Single Use)', -1, 0, 1),
('keys_missionrow_pd_front', 'Mission Row PD Key (Front)', -1, 0, 1),
('medikit', 'Medikit', 20, 0, 1),
('meth', 'Meth', 50, 0, 1),
('meth_pooch', 'Pochon de meth', 10, 0, 1),
('opium', 'Opium', 50, 0, 1),
('opium_pooch', 'Pochon de opium', 10, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('sim', 'Sim', 5, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('stone', 'Pierre', 7, 0, 1),
('sw', 'Sandwich', -1, 0, 10),
('vine', 'Vin Blanc', -1, 0, 1),
('vinr', 'Vin Rouge', 5, 0, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1),
('water', 'Eau', 5, 0, 1),
('weed', 'Weed', 50, 0, 1),
('weed_pooch', 'Pochon de weed', 10, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `SecondaryJob` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `SecondaryJob`) VALUES
('ambulance', 'Ambulance', 0),
('ballas', 'Ballas', 0),
('cardealer', 'Concessionnaire', 0),
('cardealerluxe', 'Concessionnaire', 0),
('cardealermotorbike', 'Concessionnaire Moto Bike', 0),
('cardealersports', 'Concessionnaire Sports', 0),
('cardealertruck', 'Concessionnaire Truck', 0),
('fisherman', 'Pêcheur', 0),
('fueler', 'Raffineur', 0),
('lumberjack', 'Bûcheron', 0),
('mechanic', 'Mécano', 0),
('miner', 'Mineur', 0),
('motorcycle', 'Motorcycle', 0),
('police', 'LSPD', 0),
('realestateagent', 'Agent immobilier', 0),
('reporter', 'Journaliste', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0),
('unemployed2', 'Sans emplois', 0),
('vigne', 'Vigneron', 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'unemployed2', 0, 'rsa', 'Secondaire', 50, '{}', '{}'),
(3, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(4, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(5, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(6, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(7, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(8, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(9, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(10, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":9,\"shoes\":25,\"hair_color_2\":0,\"glasses_1\":20,\"skin\":13,\"face\":6,\"pants_2\":2,\"tshirt_1\":17,\"pants_1\":61,\"helmet_1\":-1,\"torso_2\":2,\"arms\":98,\"sex\":1,\"glasses_2\":5,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(11, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(12, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(13, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(14, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(15, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(16, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(17, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(18, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(19, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(20, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(21, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(22, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(23, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(24, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(25, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(26, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(27, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(28, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(29, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(30, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(31, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(32, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(33, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(34, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(35, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(36, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(37, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(38, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(39, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(40, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(41, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(42, 'ballas', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(43, 'ballas', 1, 'gangster', 'Gangster', 40, '{}', '{}'),
(44, 'ballas', 2, 'bandit', 'Bandit', 60, '{}', '{}'),
(45, 'ballas', 3, 'boss', 'Chef du Gang', 100, '{}', '{}'),
(46, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(47, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(48, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(49, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(50, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(51, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(52, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(53, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(54, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(55, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(56, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(57, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(58, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(59, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":9,\"shoes\":25,\"hair_color_2\":0,\"glasses_1\":20,\"skin\":13,\"face\":6,\"pants_2\":2,\"tshirt_1\":17,\"pants_1\":61,\"helmet_1\":-1,\"torso_2\":2,\"arms\":98,\"sex\":1,\"glasses_2\":5,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(60, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(61, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(62, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(63, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":9,\"shoes\":25,\"hair_color_2\":0,\"glasses_1\":20,\"skin\":13,\"face\":6,\"pants_2\":2,\"tshirt_1\":17,\"pants_1\":61,\"helmet_1\":-1,\"torso_2\":2,\"arms\":98,\"sex\":1,\"glasses_2\":5,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(64, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(65, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(66, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(67, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":9,\"shoes\":25,\"hair_color_2\":0,\"glasses_1\":20,\"skin\":13,\"face\":6,\"pants_2\":2,\"tshirt_1\":17,\"pants_1\":61,\"helmet_1\":-1,\"torso_2\":2,\"arms\":98,\"sex\":1,\"glasses_2\":5,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(68, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(69, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(70, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(71, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":9,\"shoes\":25,\"hair_color_2\":0,\"glasses_1\":20,\"skin\":13,\"face\":6,\"pants_2\":2,\"tshirt_1\":17,\"pants_1\":61,\"helmet_1\":-1,\"torso_2\":2,\"arms\":98,\"sex\":1,\"glasses_2\":5,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(72, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(73, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(74, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(75, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(76, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(77, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(78, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(79, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(80, 'cardealerluxe', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(81, 'cardealerluxe', 1, 'novice', 'Novice', 25, '{}', '{}'),
(82, 'cardealerluxe', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(83, 'cardealerluxe', 3, 'boss', 'Patron', 0, '{}', '{}'),
(84, 'cardealermotorbike', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(85, 'cardealermotorbike', 1, 'novice', 'Novice', 25, '{}', '{}'),
(86, 'cardealermotorbike', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(87, 'cardealermotorbike', 3, 'boss', 'Patron', 0, '{}', '{}'),
(88, 'cardealersports', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(89, 'cardealersports', 1, 'novice', 'Novice', 25, '{}', '{}'),
(90, 'cardealersports', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(91, 'cardealersports', 3, 'boss', 'Patron', 0, '{}', '{}'),
(92, 'cardealertruck', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(93, 'cardealertruck', 1, 'novice', 'Novice', 25, '{}', '{}'),
(94, 'cardealertruck', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(95, 'cardealertruck', 3, 'boss', 'Patron', 0, '{}', '{}'),
(96, 'motorcycle', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(97, 'motorcycle', 1, 'novice', 'Novice', 25, '{}', '{}'),
(98, 'motorcycle', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(99, 'motorcycle', 3, 'boss', 'Patron', 0, '{}', '{}'),
(100, 'motorcycle', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(101, 'motorcycle', 1, 'novice', 'Novice', 25, '{}', '{}'),
(102, 'motorcycle', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(103, 'motorcycle', 3, 'boss', 'Patron', 0, '{}', '{}'),
(104, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(105, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(106, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(107, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(108, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(109, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(110, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(111, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(112, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(113, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(114, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(115, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(116, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(117, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(118, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(119, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(120, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(121, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(122, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(123, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(124, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(125, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(126, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(127, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(128, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(129, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(130, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(131, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(132, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(133, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(134, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(135, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(136, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(137, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(138, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(139, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(140, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(141, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(142, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(143, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(144, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(145, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(146, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(147, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(148, 'vagos', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(149, 'vagos', 1, 'capo', 'Braqueur', 400, 'null', 'null'),
(150, 'vagos', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(151, 'vagos', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(152, 'realestateagent', 0, 'location', 'Location', 10, '{}', '{}'),
(153, 'realestateagent', 1, 'vendeur', 'Vendeur', 25, '{}', '{}'),
(154, 'realestateagent', 2, 'gestion', 'Gestion', 40, '{}', '{}'),
(155, 'realestateagent', 3, 'boss', 'Patron', 0, '{}', '{}'),
(156, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(157, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(158, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(159, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(160, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(161, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(162, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(163, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(164, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(165, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(166, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(167, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(168, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(169, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(170, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(171, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(172, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(173, 'families', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(174, 'families', 1, 'capo', 'Braqueur', 400, 'null', 'null'),
(175, 'families', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(176, 'families', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(177, 'marabunta', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(178, 'marabunta', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(179, 'marabunta', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
(180, 'marabunta', 3, 'boss', 'Parain', 2700, '{}', '{}'),
(181, 'vagos', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(182, 'vagos', 1, 'capo', 'Braqueur', 400, 'null', 'null'),
(183, 'vagos', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(184, 'vagos', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(185, 'vagos', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(186, 'vagos', 1, 'capo', 'Braqueur', 400, 'null', 'null'),
(187, 'vagos', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(188, 'vagos', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(189, 'carteldecali', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(190, 'carteldecali', 1, 'capo', 'Braqueur', 400, 'null', 'null'),
(191, 'carteldecali', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(192, 'carteldecali', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(193, 'ms13', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(194, 'ms13', 1, 'capo', 'Braqueur', 400, 'null', 'null'),
(195, 'ms13', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(196, 'ms13', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(197, 'mafia', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(198, 'mafia', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(199, 'mafia', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
(200, 'mafia', 3, 'boss', 'Parain', 2700, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

-- --------------------------------------------------------

--
-- Structure de la table `motor_sold`
--

CREATE TABLE `motor_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `open_car`
--

INSERT INTO `open_car` (`id`, `identifier`, `label`, `value`, `got`, `NB`) VALUES
(43, 'steam:11000013e74a9b9', 'Cles', 'FSQ 427', 'true', 1),
(44, 'steam:11000013e74a9b9', 'Cles', 'NTV 178', 'true', 1),
(45, 'steam:11000013e74a9b9', 'Cles', 'TAX 821', 'true', 2),
(46, 'steam:11000013e74a9b9', 'Cles', 'TAX 608', 'true', 2),
(47, 'steam:11000013e74a9b9', 'Cles', 'TAX 240', 'true', 2),
(48, 'steam:11000013e74a9b9', 'Cles', 'TAX 541', 'true', 2),
(49, 'steam:1100001329e1807', 'Cles', 'TAX 414', 'true', 2),
(50, 'steam:1100001329e1807', 'Cles', 'CUR 189', 'true', 1),
(51, 'steam:1100001329e1807', 'Cles', 'ELU 735', 'true', 1),
(52, 'steam:1100001329e1807', 'Cles', 'FFJ 013', 'true', 1),
(53, 'steam:1100001329e1807', 'Cles', 'GGR 032', 'true', 1),
(54, 'steam:1100001329e1807', 'Cles', 'NDL 054', 'true', 1),
(55, 'steam:1100001329e1807', 'Cles', 'REO 429', 'true', 1),
(56, 'steam:1100001329e1807', 'Cles', 'PEV 211', 'true', 1),
(57, 'steam:1100001329e1807', 'Cles', 'JRD 502', 'true', 1),
(58, 'steam:1100001329e1807', 'Cles', 'PVL 344', 'true', 1),
(59, 'steam:1100001329e1807', 'Cles', 'SWY 617', 'true', 1),
(60, 'steam:1100001329e1807', 'Cles', 'COS 950', 'true', 1),
(61, 'steam:1100001329e1807', 'Cles', 'EGQ 625', 'true', 1),
(62, 'steam:1100001329e1807', 'Cles', 'EGQ 625', 'true', 1),
(63, 'steam:1100001329e1807', 'Cles', 'ERK 597', 'true', 1),
(64, 'steam:1100001329e1807', 'Cles', 'FZF 306', 'true', 1),
(65, 'steam:1100001329e1807', 'Cles', 'FZF 306', 'true', 1),
(66, 'steam:1100001329e1807', 'Cles', 'FZX 136', 'true', 1),
(67, 'steam:1100001329e1807', 'Cles', 'FZX 136', 'true', 1),
(68, 'steam:1100001329e1807', 'Cles', 'RSB 557', 'true', 1),
(69, 'steam:1100001329e1807', 'Cles', 'RSB 557', 'true', 1),
(70, 'steam:1100001329e1807', 'Cles', 'SUE 553', 'true', 1),
(71, 'steam:1100001329e1807', 'Cles', 'SUE 553', 'true', 1),
(72, 'steam:1100001329e1807', 'Cles', 'VEY 329', 'true', 1),
(73, 'steam:1100001329e1807', 'Cles', 'YZV 314', 'true', 1),
(74, 'steam:1100001329e1807', 'Cles', 'YZV 314', 'true', 1),
(75, 'steam:1100001329e1807', 'Cles', 'ZSR 546', 'true', 1),
(76, 'steam:110000144de223c', 'Cles', 'IZP 440', 'true', 1),
(77, 'steam:1100001415ae8d2', 'Cles', 'ERK 597', 'true', 2),
(78, 'steam:1100001329e1807', 'Cles', 'LUQ 225', 'true', 1),
(79, 'steam:1100001329e1807', 'Cles', 'ACP 542', 'true', 1),
(80, 'steam:1100001329e1807', 'Cles', 'CSQ 378', 'true', 1),
(81, 'steam:1100001329e1807', 'Cles', 'CYN 554', 'true', 1),
(82, 'steam:1100001329e1807', 'Cles', 'LNW 781', 'true', 1),
(83, 'steam:1100001329e1807', 'Cles', 'QTP 411', 'true', 1),
(84, 'steam:1100001329e1807', 'Cles', 'YPE 046', 'true', 1),
(85, 'steam:1100001329e1807', 'Cles', 'YPE 046', 'true', 1),
(86, 'steam:110000144de223c', 'Cles', 'WYT 362', 'true', 1),
(87, 'steam:110000144de223c', 'Cles', 'CII 049', 'true', 1);

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(1, 'OldSpiceClassical', 25000, 1, 'steam:11000013e74a9b9'),
(2, 'TinselTowersApt12', 8500, 1, 'steam:11000013e74a9b9'),
(3, 'MBWOldSpiceWarm', 2700000, 0, 'steam:1100001329e1807');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:1100001454ba550', 0, 'ACN 897', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modSmokeEnabled\":false,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"pearlescentColor\":120,\"modEngine\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":112,\"model\":-1835937232,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"modGrille\":-1,\"modWindows\":-1,\"modHood\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"plate\":\"ACN 897\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":false},\"color2\":64,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'ACP 542', '{\"modSeats\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modArchCover\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"health\":1000,\"modTrimA\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":1,\"modSideSkirt\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"model\":-101696514,\"modTank\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"windowTint\":-1,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":2,\"modRoof\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modFender\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modLivery\":0,\"modHood\":-1,\"modGrille\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"wheelColor\":156,\"color1\":2,\"modRightFender\":-1,\"modFrame\":-1,\"wheels\":7,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"dirtLevel\":7.26098728179931,\"modWindows\":-1,\"extras\":{\"1\":false,\"2\":true},\"modRearBumper\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"plate\":\"ACP 542\",\"modEngine\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"color2\":70}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'AEO 666', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":147,\"modFrame\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":0,\"model\":1934093517,\"wheelColor\":147,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"AEO 666\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":[],\"color2\":27,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":147}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'AJA 629', '{\"modSuspension\":-1,\"wheelColor\":147,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":147,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":147,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"AJA 629\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":1934093517,\"color2\":27,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'AQO 562', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":19,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":31,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"AQO 562\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":29976887,\"color2\":35,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'BJF 796', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"BJF 796\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'BPN 534', '{\"extras\":[],\"modAerials\":-1,\"pearlescentColor\":55,\"modSeats\":-1,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"health\":1000,\"modArchCover\":-1,\"modXenon\":false,\"modTrunk\":-1,\"color1\":50,\"modSuspension\":-1,\"modDashboard\":-1,\"modVanityPlate\":-1,\"wheelColor\":92,\"modTransmission\":-1,\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modTurbo\":false,\"model\":1549126457,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modDial\":-1,\"modFender\":-1,\"modAPlate\":-1,\"plate\":\"BPN 534\",\"plateIndex\":0,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"windowTint\":-1,\"modFrontBumper\":-1,\"modBrakes\":-1,\"dirtLevel\":7.0,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"wheels\":5,\"modRoof\":-1,\"modHydrolic\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modTrimA\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modHood\":-1,\"modSpoilers\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'BVB 049', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":0,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":63,\"modFrame\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":0,\"model\":980885719,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"BVB 049\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"2\":false},\"color2\":70,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":63}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'BWL 196', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true,\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":29,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"BWL 196\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1637862878,\"color2\":29,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'BZD 843', '{\"modEngineBlock\":-1,\"modLivery\":0,\"pearlescentColor\":2,\"modExhaust\":-1,\"modAerials\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modAPlate\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"BZD 843\",\"modBrakes\":-1,\"wheels\":7,\"modSuspension\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"color1\":2,\"modSpeakers\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"health\":1000,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"color2\":70,\"modXenon\":false,\"extras\":{\"2\":true,\"1\":false},\"modAirFilter\":-1,\"dirtLevel\":5.0,\"model\":-101696514,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'BZI 435', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"BZI 435\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CDY 741', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"CDY 741\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CFW 440', '{\"modSeats\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modArchCover\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"health\":1000,\"modTrimA\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":1,\"modSideSkirt\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"model\":-101696514,\"modTank\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"windowTint\":-1,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":2,\"modRoof\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modFender\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modLivery\":1,\"modHood\":-1,\"modGrille\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"wheelColor\":156,\"color1\":2,\"modRightFender\":-1,\"modFrame\":-1,\"wheels\":7,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"dirtLevel\":4.28035402297973,\"modWindows\":-1,\"extras\":{\"1\":true,\"2\":false},\"modRearBumper\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"plate\":\"CFW 440\",\"modEngine\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"color2\":70}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'CII 049', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"model\":-101696514,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"pearlescentColor\":2,\"modWindows\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":0,\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"modHood\":-1,\"wheels\":7,\"modArmor\":-1,\"modSuspension\":-1,\"color1\":2,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"plate\":\"CII 049\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":true},\"color2\":70,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'COS 950', '{\"model\":1549126457,\"plate\":\"COS 950\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CSQ 378', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":9.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"pearlescentColor\":24,\"modAirFilter\":-1,\"modFender\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"extras\":{\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":4,\"modTrimA\":-1,\"wheels\":7,\"modHood\":-1,\"modSideSkirt\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modAerials\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"windowTint\":-1,\"modGrille\":-1,\"model\":-1293596973,\"modTank\":-1,\"modBackWheels\":-1,\"plate\":\"CSQ 378\",\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modEngine\":-1,\"color2\":32,\"modXenon\":false}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CUA 062', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"CUA 062\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CUR 189', '{\"modTrimA\":-1,\"windowTint\":3,\"modHood\":-1,\"modFrontWheels\":-1,\"wheels\":12,\"modSpeakers\":-1,\"tyreSmokeColor\":[0,0,0],\"modRearBumper\":-1,\"modGrille\":-1,\"modTank\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"color1\":0,\"modLivery\":-1,\"modArchCover\":-1,\"modHydrolic\":-1,\"health\":1000,\"modWindows\":-1,\"modXenon\":1,\"plate\":\"CUR 189\",\"modSteeringWheel\":-1,\"extras\":{\"10\":false,\"1\":true,\"12\":false},\"modOrnaments\":-1,\"modArmor\":-1,\"dirtLevel\":0.25698059797286,\"modFrame\":-1,\"neonColor\":[0,0,255],\"modBackWheels\":-1,\"modDial\":-1,\"color2\":120,\"modTrunk\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modEngine\":-1,\"modStruts\":-1,\"modFender\":-1,\"plateIndex\":5,\"modDashboard\":-1,\"modRoof\":-1,\"modExhaust\":-1,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":1,\"neonEnabled\":[1,1,1,1],\"model\":-1216765807,\"modTrimB\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"pearlescentColor\":111,\"modTurbo\":1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"wheelColor\":111,\"modPlateHolder\":-1,\"modHorns\":0}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CVN 791', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":4,\"modFrame\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":7,\"model\":-1293596973,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"CVN 791\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true},\"color2\":32,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":24}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CYN 554', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":9.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"pearlescentColor\":24,\"modAirFilter\":-1,\"modFender\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"extras\":{\"1\":false},\"health\":1000,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":4,\"modTrimA\":-1,\"wheels\":7,\"modHood\":-1,\"modSideSkirt\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modAerials\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"windowTint\":-1,\"modGrille\":-1,\"model\":-1293596973,\"modTank\":-1,\"modBackWheels\":-1,\"plate\":\"CYN 554\",\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modEngine\":-1,\"color2\":32,\"modXenon\":false}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'CYW 723', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"CYW 723\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'DDT 313', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"DDT 313\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'DKN 008', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":24,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"DKN 008\",\"modWindows\":-1,\"wheels\":7,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":4,\"modAirFilter\":-1,\"color2\":32,\"modXenon\":false,\"extras\":{\"1\":false},\"modSteeringWheel\":-1,\"dirtLevel\":4.0,\"model\":-1293596973,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'DVV 736', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":147,\"modFrontBumper\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modSmokeEnabled\":false,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"pearlescentColor\":147,\"modEngine\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":147,\"model\":1934093517,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"modGrille\":-1,\"modWindows\":-1,\"modHood\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"plate\":\"DVV 736\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":[],\"color2\":27,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'EGQ 625', '{\"model\":1549126457,\"plate\":\"EGQ 625\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'ELU 735', '{\"modFrontWheels\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"color2\":4,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plate\":\"ELU 735\",\"modSmokeEnabled\":false,\"modExhaust\":-1,\"pearlescentColor\":111,\"modBackWheels\":-1,\"modArmor\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modDial\":-1,\"model\":970598228,\"plateIndex\":3,\"modRoof\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"color1\":4,\"modTransmission\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"wheels\":0,\"modFender\":-1,\"modFrontBumper\":-1,\"health\":1000,\"modHood\":-1,\"modRearBumper\":-1,\"wheelColor\":156,\"modTurbo\":false,\"modSuspension\":-1,\"dirtLevel\":4.0,\"modDashboard\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"modHorns\":-1,\"extras\":{\"10\":false,\"12\":true}}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'EQN 148', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"EQN 148\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'ERK 597', '{\"model\":11251904,\"plate\":\"ERK 597\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'FFJ 013', '{\"modFrontWheels\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"color2\":0,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plate\":\"FFJ 013\",\"modSmokeEnabled\":false,\"modExhaust\":-1,\"pearlescentColor\":7,\"modBackWheels\":-1,\"modArmor\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modDial\":-1,\"model\":-1216765807,\"plateIndex\":0,\"modRoof\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"color1\":1,\"modTransmission\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"wheels\":7,\"modFender\":-1,\"modFrontBumper\":-1,\"health\":1000,\"modHood\":-1,\"modRearBumper\":-1,\"wheelColor\":156,\"modTurbo\":false,\"modSuspension\":-1,\"dirtLevel\":4.0,\"modDashboard\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"modHorns\":-1,\"extras\":{\"1\":true,\"10\":true,\"12\":false}}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'FIA 461', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"FIA 461\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'FIH 651', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"model\":29976887,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"pearlescentColor\":19,\"modWindows\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":1,\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"modHood\":-1,\"wheels\":7,\"modArmor\":-1,\"modSuspension\":-1,\"color1\":31,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"plate\":\"FIH 651\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":true},\"color2\":35,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'FIK 782', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"FIK 782\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:11000013e74a9b9', 1, 'FSQ 427', '{\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modExhaust\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":1,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"plate\":\"FSQ 427\",\"windowTint\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"modSeats\":-1,\"modHorns\":-1,\"modDial\":-1,\"health\":994,\"modBackWheels\":-1,\"modGrille\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modStruts\":-1,\"wheels\":6,\"modLivery\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modDashboard\":-1,\"modTank\":-1,\"modTrunk\":-1,\"dirtLevel\":0.56768822669982,\"extras\":[],\"modFrontBumper\":-1,\"model\":-114291515,\"modShifterLeavers\":-1,\"modFender\":-1,\"modOrnaments\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"wheelColor\":27,\"plateIndex\":3,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modHood\":-1,\"pearlescentColor\":0,\"modWindows\":-1,\"color2\":27,\"modArmor\":-1,\"color1\":27,\"modEngine\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'FTK 708', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":147,\"modFrontBumper\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modSmokeEnabled\":false,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"pearlescentColor\":147,\"modEngine\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":147,\"model\":1934093517,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"modGrille\":-1,\"modWindows\":-1,\"modHood\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"plate\":\"FTK 708\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":[],\"color2\":27,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'FXD 905', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":24,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":4,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"FXD 905\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1293596973,\"color2\":32,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'FZF 306', '{\"model\":330661258,\"plate\":\"FZF 306\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'FZX 136', '{\"model\":1549126457,\"plate\":\"FZX 136\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'GGR 032', '{\"modBackWheels\":-1,\"modVanityPlate\":-1,\"extras\":{\"12\":false,\"10\":true,\"1\":true},\"modTurbo\":1,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modTank\":-1,\"modTrimA\":-1,\"pearlescentColor\":111,\"color1\":0,\"color2\":120,\"health\":1000,\"modRightFender\":-1,\"dirtLevel\":0.60457730293273,\"modSuspension\":-1,\"modEngine\":-1,\"modHood\":-1,\"modSeats\":-1,\"neonColor\":[0,0,255],\"modSpeakers\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":1,\"modArmor\":-1,\"tyreSmokeColor\":[0,0,0],\"modTransmission\":-1,\"wheelColor\":111,\"modFrontWheels\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"plate\":\"GGR 032\",\"modWindows\":-1,\"modHorns\":-1,\"modRoof\":-1,\"neonEnabled\":[1,1,1,1],\"modRearBumper\":-1,\"modFrame\":-1,\"modFender\":-1,\"modOrnaments\":-1,\"modShifterLeavers\":-1,\"modDashboard\":-1,\"modXenon\":1,\"modLivery\":-1,\"model\":-1216765807,\"modExhaust\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"windowTint\":3,\"modBrakes\":-1,\"modSpoilers\":-1,\"plateIndex\":5,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modTrimB\":-1,\"wheels\":12,\"modTrunk\":-1}', 'car', NULL, 1),
('steam:1100001329e1807', 0, 'GGX 003', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"GGX 003\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'GJJ 622', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"GJJ 622\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'GPY 725', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":24,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"GPY 725\",\"modWindows\":-1,\"wheels\":7,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":4,\"modAirFilter\":-1,\"color2\":32,\"modXenon\":false,\"extras\":{\"1\":false},\"modSteeringWheel\":-1,\"dirtLevel\":0.0,\"model\":-1293596973,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'GSD 805', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"GSD 805\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'HID 042', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"HID 042\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'HQR 000', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":0,\"modFrame\":-1,\"dirtLevel\":9.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":0,\"model\":1674460262,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"HQR 000\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":true},\"color2\":29,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":120}', 'car', NULL, 0);
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:1100001329e1807', 0, 'HZZ 716', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"HZZ 716\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'ICM 256', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"model\":980885719,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"pearlescentColor\":63,\"modWindows\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":0,\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"modHood\":-1,\"wheels\":0,\"modArmor\":-1,\"modSuspension\":-1,\"color1\":63,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"plate\":\"ICM 256\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"2\":false},\"color2\":70,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'IKB 683', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"IKB 683\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'ILK 981', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true,\"1\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":112,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"ILK 981\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1835937232,\"color2\":64,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'ISR 838', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":64,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":64,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"ISR 838\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1381125554,\"color2\":64,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'IZP 440', '{\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"modSideSkirt\":-1,\"modSteeringWheel\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"plateIndex\":0,\"modRoof\":-1,\"modSeats\":-1,\"plate\":\"IZP 440\",\"windowTint\":-1,\"modRightFender\":-1,\"modDial\":-1,\"modArmor\":-1,\"wheelColor\":1,\"modShifterLeavers\":-1,\"modAerials\":-1,\"model\":1392481335,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modTrunk\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"modFender\":-1,\"dirtLevel\":7.0,\"color2\":1,\"modPlateHolder\":-1,\"pearlescentColor\":158,\"modTank\":-1,\"extras\":[],\"modSpeakers\":-1,\"modHood\":-1,\"modEngineBlock\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modSpoilers\":-1,\"color1\":34,\"modArchCover\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"wheels\":7,\"health\":1000,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modXenon\":false,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modBackWheels\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'JHK 513', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"model\":29976887,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"pearlescentColor\":19,\"modWindows\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":0,\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"modHood\":-1,\"wheels\":7,\"modArmor\":-1,\"modSuspension\":-1,\"color1\":31,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"plate\":\"JHK 513\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":false},\"color2\":35,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'JNM 681', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"JNM 681\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'JQL 873', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"JQL 873\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'JRD 502', '{\"modFrontWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modPlateHolder\":-1,\"modRoof\":-1,\"wheels\":12,\"modDial\":-1,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"12\":false,\"10\":true},\"modArmor\":-1,\"color2\":120,\"modShifterLeavers\":-1,\"modTurbo\":1,\"windowTint\":3,\"modBackWheels\":-1,\"modTrunk\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modXenon\":1,\"tyreSmokeColor\":[0,0,0],\"modAPlate\":-1,\"plateIndex\":5,\"modVanityPlate\":-1,\"pearlescentColor\":111,\"modBrakes\":-1,\"modHood\":-1,\"model\":970598228,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modLivery\":-1,\"modSpoilers\":-1,\"health\":1000,\"modSpeakers\":-1,\"modHorns\":-1,\"modFender\":-1,\"color1\":0,\"modArchCover\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modSideSkirt\":-1,\"dirtLevel\":0.00423581246286,\"plate\":\"JRD 502\",\"modEngine\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"wheelColor\":111,\"modAerials\":-1,\"modSuspension\":-1,\"neonColor\":[0,0,255],\"modSmokeEnabled\":1,\"modFrame\":-1,\"modWindows\":-1,\"modSeats\":-1,\"modExhaust\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'JSE 288', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"model\":8880015,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":3,\"pearlescentColor\":120,\"modWindows\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"dirtLevel\":9.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"modHood\":-1,\"wheels\":1,\"modArmor\":-1,\"modSuspension\":-1,\"color1\":0,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"plate\":\"JSE 288\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":false},\"color2\":1,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'JWR 037', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"JWR 037\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'KAP 597', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":0,\"modFrame\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":0,\"model\":1674460262,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"KAP 597\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":false},\"color2\":29,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":120}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'KGP 773', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"KGP 773\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'KLA 374', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"KLA 374\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'KLI 962', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":1.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":64,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"health\":998,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":64,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"KLI 962\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1381125554,\"color2\":64,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'KRD 999', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":0,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":31,\"modFrame\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":7,\"model\":29976887,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"KRD 999\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":false},\"color2\":35,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":19}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'KTY 418', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"KTY 418\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'KXH 076', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"KXH 076\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LAY 838', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"LAY 838\",\"modWindows\":-1,\"wheels\":1,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":0,\"modAirFilter\":-1,\"color2\":1,\"modXenon\":false,\"extras\":{\"2\":false,\"1\":false},\"modSteeringWheel\":-1,\"dirtLevel\":2.0,\"model\":8880015,\"modBackWheels\":3,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LHD 407', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":1.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":2,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":false},\"health\":953,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":2,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"LHD 407\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-101696514,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'LIO 628', '{\"modEngineBlock\":-1,\"modLivery\":1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modWindows\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"LIO 628\",\"modTrunk\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"extras\":{\"2\":true,\"1\":false},\"modSpeakers\":-1,\"dirtLevel\":5.0,\"model\":1674460262,\"modHydrolic\":-1,\"modTurbo\":false,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":29,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"color1\":0,\"windowTint\":-1,\"wheels\":0}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LLJ 324', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"LLJ 324\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LNQ 612', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"LNQ 612\",\"modWindows\":-1,\"wheels\":0,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":112,\"modAirFilter\":-1,\"color2\":64,\"modXenon\":false,\"extras\":{\"2\":false,\"1\":false},\"modSteeringWheel\":-1,\"dirtLevel\":5.0,\"model\":-1835937232,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LNW 781', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modLivery\":0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"pearlescentColor\":19,\"modAirFilter\":-1,\"modFender\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":false},\"health\":1000,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":31,\"modTrimA\":-1,\"wheels\":7,\"modHood\":-1,\"modSideSkirt\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modAerials\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"windowTint\":-1,\"modGrille\":-1,\"model\":29976887,\"modTank\":-1,\"modBackWheels\":-1,\"plate\":\"LNW 781\",\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modEngine\":-1,\"color2\":35,\"modXenon\":false}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LOP 380', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"LOP 380\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LUQ 225', '{\"modTurbo\":false,\"modTransmission\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"model\":1934093517,\"modAPlate\":-1,\"modTank\":-1,\"modTrimB\":-1,\"modXenon\":false,\"modArmor\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modRearBumper\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modSteeringWheel\":-1,\"wheelColor\":147,\"modPlateHolder\":-1,\"dirtLevel\":6.34711742401123,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"color1\":147,\"modSeats\":-1,\"health\":1000,\"modTrunk\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"modAerials\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modSuspension\":-1,\"windowTint\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"modFender\":-1,\"modGrille\":-1,\"pearlescentColor\":147,\"modFrontBumper\":-1,\"modEngine\":-1,\"plateIndex\":0,\"color2\":27,\"tyreSmokeColor\":[255,255,255],\"modDashboard\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modArchCover\":-1,\"modTrimA\":-1,\"plate\":\"LUQ 225\",\"modHood\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LUV 406', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"LUV 406\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'LXX 541', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":64,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":64,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"LXX 541\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1381125554,\"color2\":64,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'MAN 603', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"MAN 603\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'MRY 957', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":112,\"modFrame\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":0,\"model\":-1835937232,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"MRY 957\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":false},\"color2\":64,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":120}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'MWJ 215', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":2,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":2,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"MWJ 215\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-101696514,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'MZP 965', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":19,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":31,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"MZP 965\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":29976887,\"color2\":35,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'NDL 054', '{\"modFrontWheels\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"color2\":12,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plate\":\"NDL 054\",\"modOrnaments\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modArmor\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modDial\":-1,\"model\":-1216765807,\"plateIndex\":0,\"modRoof\":-1,\"wheelColor\":156,\"modSuspension\":-1,\"color1\":4,\"modFrontBumper\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"pearlescentColor\":111,\"modAerials\":-1,\"modSmokeEnabled\":false,\"wheels\":7,\"modFender\":-1,\"modTrimB\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modTrunk\":-1,\"modAirFilter\":-1,\"modTurbo\":false,\"modPlateHolder\":-1,\"dirtLevel\":7.0,\"modDashboard\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modRightFender\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"health\":1000,\"modTransmission\":-1,\"modHorns\":-1,\"extras\":{\"12\":true,\"10\":false,\"1\":true}}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'NNP 771', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"NNP 771\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:11000013e74a9b9', 0, 'NTV 178', '{\"modEngineBlock\":-1,\"modDial\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modFrame\":-1,\"modTank\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modSmokeEnabled\":false,\"windowTint\":-1,\"dirtLevel\":11.0,\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modFender\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modTrunk\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"plate\":\"NTV 178\",\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"3\":true,\"4\":true,\"5\":true,\"1\":true,\"2\":true},\"wheels\":5,\"model\":-431692672,\"modShifterLeavers\":-1,\"plateIndex\":3,\"color2\":3,\"modAPlate\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modSeats\":-1,\"color1\":3,\"modAirFilter\":-1,\"modSpeakers\":-1,\"modEngine\":-1,\"modFrontWheels\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"health\":1000,\"modBrakes\":-1,\"modStruts\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"modExhaust\":-1,\"wheelColor\":156,\"pearlescentColor\":0,\"modTransmission\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"modLivery\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'NXK 211', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"NXK 211\",\"modWindows\":-1,\"wheels\":7,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":29,\"modAirFilter\":-1,\"color2\":29,\"modXenon\":false,\"extras\":{\"2\":true,\"1\":true},\"modSteeringWheel\":-1,\"dirtLevel\":3.0,\"model\":-1637862878,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'OFC 835', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"OFC 835\",\"modWindows\":-1,\"wheels\":0,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":112,\"modAirFilter\":-1,\"color2\":64,\"modXenon\":false,\"extras\":{\"2\":true,\"1\":false},\"modSteeringWheel\":-1,\"dirtLevel\":7.0,\"model\":-1835937232,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'OKW 134', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":0,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":31,\"modFrame\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":7,\"model\":29976887,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"OKW 134\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":false},\"color2\":35,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":19}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'OMH 677', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"OMH 677\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0);
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:11000013e74a9b9', 0, 'OZH 185', '{\"dirtLevel\":8.0,\"modFrame\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modWindows\":-1,\"modOrnaments\":-1,\"modShifterLeavers\":-1,\"color1\":37,\"modHydrolic\":-1,\"modSpoilers\":-1,\"pearlescentColor\":0,\"wheels\":5,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modSteeringWheel\":-1,\"modHood\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"modTrimB\":-1,\"modAirFilter\":-1,\"modAerials\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modArchCover\":-1,\"modXenon\":false,\"modBrakes\":-1,\"modTransmission\":-1,\"modTank\":-1,\"model\":-431692672,\"modTrunk\":-1,\"extras\":{\"5\":true,\"4\":true,\"3\":true,\"2\":true,\"1\":true},\"modSpeakers\":-1,\"modGrille\":-1,\"modPlateHolder\":-1,\"color2\":37,\"plateIndex\":3,\"plate\":\"OZH 185\",\"modFrontBumper\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modDashboard\":-1,\"modDial\":-1,\"neonColor\":[255,0,255],\"wheelColor\":156,\"modSuspension\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"health\":1000,\"modStruts\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modRoof\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'PEV 211', '{\"pearlescentColor\":111,\"modWindows\":-1,\"wheelColor\":111,\"plateIndex\":5,\"wheels\":12,\"modFrame\":-1,\"modEngineBlock\":-1,\"neonEnabled\":[1,1,1,1],\"modTransmission\":-1,\"modTrimB\":-1,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"tyreSmokeColor\":[0,0,0],\"modFender\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modHorns\":0,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modSpeakers\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"plate\":\"PEV 211\",\"modDial\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modHood\":-1,\"modAerials\":-1,\"modXenon\":1,\"color1\":0,\"modSideSkirt\":-1,\"modLivery\":0,\"modFrontWheels\":-1,\"windowTint\":3,\"modDashboard\":-1,\"health\":997,\"modBrakes\":-1,\"model\":335404415,\"modAirFilter\":-1,\"modTrunk\":-1,\"modTank\":-1,\"neonColor\":[0,0,255],\"color2\":120,\"modDoorSpeaker\":-1,\"modGrille\":-1,\"dirtLevel\":0.98523086309432,\"modTurbo\":1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"modStruts\":-1,\"modEngine\":-1,\"modRoof\":-1,\"modBackWheels\":-1,\"extras\":[]}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'PFR 490', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"pearlescentColor\":120,\"modExhaust\":-1,\"modAerials\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modAPlate\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"PFR 490\",\"modBrakes\":-1,\"wheels\":7,\"modSuspension\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"color1\":29,\"modSpeakers\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"health\":1000,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"color2\":29,\"modXenon\":false,\"extras\":{\"2\":true,\"1\":true},\"modAirFilter\":-1,\"dirtLevel\":4.0,\"model\":-1637862878,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'PKU 968', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":112,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"PKU 968\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1835937232,\"color2\":64,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'PVL 344', '{\"model\":330661258,\"plate\":\"PVL 344\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'QBG 413', '{\"modEngineBlock\":-1,\"modLivery\":0,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"QBG 413\",\"modWindows\":-1,\"wheels\":0,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":0,\"modAirFilter\":-1,\"color2\":29,\"modXenon\":false,\"extras\":{\"2\":false,\"1\":true},\"modSteeringWheel\":-1,\"dirtLevel\":2.0,\"model\":1674460262,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'QMD 385', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":24,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"1\":false},\"health\":994,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":4,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"QMD 385\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1293596973,\"color2\":32,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'QTP 411', '{\"modDashboard\":-1,\"wheelColor\":147,\"modSmokeEnabled\":false,\"modSpoilers\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":27,\"modStruts\":-1,\"modHood\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modEngine\":-1,\"model\":1934093517,\"dirtLevel\":4.0,\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"plateIndex\":0,\"pearlescentColor\":147,\"modHydrolic\":-1,\"health\":1000,\"modExhaust\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"modRoof\":-1,\"plate\":\"QTP 411\",\"modTrimA\":-1,\"wheels\":0,\"modVanityPlate\":-1,\"modLivery\":-1,\"extras\":[],\"modAirFilter\":-1,\"modRightFender\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"modArmor\":-1,\"modDoorSpeaker\":-1,\"modTank\":-1,\"modDial\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modEngineBlock\":-1,\"modTransmission\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"color1\":147}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'QXS 818', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"QXS 818\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'RBO 943', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":0,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":3,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"RBO 943\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":8880015,\"color2\":1,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'REO 429', '{\"modFrontWheels\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"color2\":27,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plate\":\"REO 429\",\"modOrnaments\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modArmor\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modDial\":-1,\"model\":-1216765807,\"plateIndex\":0,\"modRoof\":-1,\"wheelColor\":156,\"modSuspension\":-1,\"color1\":36,\"modFrontBumper\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"pearlescentColor\":37,\"modAerials\":-1,\"modSmokeEnabled\":false,\"wheels\":7,\"modFender\":-1,\"modTrimB\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modTrunk\":-1,\"modAirFilter\":-1,\"modTurbo\":false,\"modPlateHolder\":-1,\"dirtLevel\":3.0,\"modDashboard\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modRightFender\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"health\":1000,\"modTransmission\":-1,\"modHorns\":-1,\"extras\":{\"12\":true,\"10\":false,\"1\":true}}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'RFN 639', '{\"modEngineBlock\":-1,\"modLivery\":1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modWindows\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"RFN 639\",\"modTrunk\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":2,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"extras\":{\"2\":true,\"1\":false},\"modSpeakers\":-1,\"dirtLevel\":0.0,\"model\":-101696514,\"modHydrolic\":-1,\"modTurbo\":false,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":70,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"color1\":2,\"windowTint\":-1,\"wheels\":7}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'RJC 094', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":0,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"RJC 094\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":1674460262,\"color2\":29,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'RLI 426', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":0,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"RLI 426\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":1674460262,\"color2\":29,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'RSB 557', '{\"model\":1549126457,\"plate\":\"RSB 557\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SDA 450', '{\"modEngineBlock\":-1,\"modLivery\":1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":19,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"SDA 450\",\"modWindows\":-1,\"wheels\":7,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":31,\"modAirFilter\":-1,\"color2\":35,\"modXenon\":false,\"extras\":{\"2\":true,\"1\":false},\"modSteeringWheel\":-1,\"dirtLevel\":4.0,\"model\":29976887,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'SDY 433', '{\"modEngineBlock\":-1,\"modLivery\":0,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modWindows\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"SDY 433\",\"modTrunk\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"extras\":{\"2\":false},\"modSpeakers\":-1,\"dirtLevel\":7.0,\"model\":980885719,\"modHydrolic\":-1,\"modTurbo\":false,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":70,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"color1\":63,\"windowTint\":-1,\"wheels\":0}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SEN 791', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"SEN 791\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SES 113', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"SES 113\",\"modWindows\":-1,\"wheels\":7,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":29,\"modAirFilter\":-1,\"color2\":29,\"modXenon\":false,\"extras\":{\"2\":true,\"1\":true},\"modSteeringWheel\":-1,\"dirtLevel\":9.0,\"model\":-1637862878,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SGM 574', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":29,\"modFrame\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":7,\"model\":-1637862878,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"SGM 574\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":true},\"color2\":29,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":120}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SGQ 744', '{\"modEngineBlock\":-1,\"modLivery\":0,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":2,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"SGQ 744\",\"modWindows\":-1,\"wheels\":7,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":2,\"modAirFilter\":-1,\"color2\":70,\"modXenon\":false,\"extras\":{\"2\":false,\"1\":true},\"modSteeringWheel\":-1,\"dirtLevel\":4.0,\"model\":-101696514,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SIL 037', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"SIL 037\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SLM 390', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"SLM 390\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'SSQ 582', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modSmokeEnabled\":false,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"pearlescentColor\":63,\"modEngine\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":63,\"model\":980885719,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":0,\"modPlateHolder\":-1,\"modXenon\":false,\"modGrille\":-1,\"modWindows\":-1,\"modHood\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"plate\":\"SSQ 582\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"2\":true},\"color2\":70,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SUE 553', '{\"model\":1549126457,\"plate\":\"SUE 553\"}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'SUJ 835', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modWindows\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"SUJ 835\",\"modTrunk\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"extras\":{\"2\":true,\"1\":false},\"modSpeakers\":-1,\"dirtLevel\":5.0,\"model\":-1835937232,\"modHydrolic\":-1,\"modTurbo\":false,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":64,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"color1\":112,\"windowTint\":-1,\"wheels\":0}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SVJ 625', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"SVJ 625\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'SWY 617', '{\"model\":1549126457,\"plate\":\"SWY 617\"}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'SXY 065', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modWindows\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"wheelColor\":147,\"modSpoilers\":-1,\"plate\":\"SXY 065\",\"modTrunk\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":147,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"extras\":[],\"modSpeakers\":-1,\"dirtLevel\":5.0,\"model\":1934093517,\"modHydrolic\":-1,\"modTurbo\":false,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":27,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"color1\":147,\"windowTint\":-1,\"wheels\":0}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'TAQ 132', '{\"modSuspension\":-1,\"wheelColor\":147,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":147,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":147,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"TAQ 132\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":1934093517,\"color2\":27,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'TDI 736', '{\"modSideSkirt\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modPlateHolder\":-1,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"wheels\":5,\"modAerials\":-1,\"modTrimB\":-1,\"plate\":\"TDI 736\",\"dirtLevel\":6.0,\"modWindows\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modGrille\":-1,\"modRoof\":-1,\"modSpeakers\":-1,\"modHood\":-1,\"modFender\":-1,\"pearlescentColor\":55,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"color2\":0,\"modHorns\":-1,\"modArmor\":-1,\"health\":1000,\"modExhaust\":-1,\"modSeats\":-1,\"wheelColor\":92,\"modShifterLeavers\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"extras\":[],\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modSmokeEnabled\":false,\"modAPlate\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"color1\":50,\"modFrontWheels\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modArchCover\":-1,\"plateIndex\":0,\"modStruts\":-1,\"modLivery\":-1,\"modEngine\":-1,\"model\":1549126457,\"modFrontBumper\":-1,\"modDial\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'TEO 100', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":2,\"modFrame\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":7,\"model\":-101696514,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"TEO 100\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":false},\"color2\":70,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":2}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'TOY 185', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"TOY 185\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'TWW 547', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modWindows\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"TWW 547\",\"modTrunk\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":24,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"extras\":{\"1\":true},\"modSpeakers\":-1,\"dirtLevel\":3.0,\"model\":-1293596973,\"modHydrolic\":-1,\"modTurbo\":false,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":32,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"color1\":4,\"windowTint\":-1,\"wheels\":7}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'TZJ 091', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true,\"1\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":29,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"TZJ 091\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1637862878,\"color2\":29,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'UDV 452', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"UDV 452\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'UHP 332', '{\"modEngineBlock\":-1,\"modLivery\":1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"modAirFilter\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"UHP 332\",\"modFender\":-1,\"pearlescentColor\":2,\"modSuspension\":-1,\"modSteeringWheel\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAPlate\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"color2\":70,\"modXenon\":false,\"extras\":{\"2\":false,\"1\":false},\"wheels\":7,\"dirtLevel\":5.0,\"model\":-101696514,\"modHydrolic\":-1,\"modHood\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"color1\":2,\"neonEnabled\":[false,false,false,false],\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modRoof\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"modBackWheels\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'UIW 157', '{\"extras\":[],\"modAerials\":-1,\"pearlescentColor\":18,\"modSeats\":-1,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"health\":1000,\"modArchCover\":-1,\"modXenon\":false,\"modTrunk\":-1,\"color1\":0,\"modSuspension\":-1,\"modDashboard\":-1,\"modVanityPlate\":-1,\"wheelColor\":156,\"modTransmission\":-1,\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modTurbo\":false,\"model\":989294410,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modDial\":-1,\"modFender\":-1,\"modAPlate\":-1,\"plate\":\"UIW 157\",\"plateIndex\":0,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"color2\":6,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"windowTint\":-1,\"modFrontBumper\":-1,\"modBrakes\":-1,\"dirtLevel\":4.0,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"wheels\":0,\"modRoof\":-1,\"modHydrolic\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modTrimA\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modHood\":-1,\"modSpoilers\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'UQM 276', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"UQM 276\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'VCO 080', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"model\":-1637862878,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"pearlescentColor\":120,\"modWindows\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"modHood\":-1,\"wheels\":7,\"modArmor\":-1,\"modSuspension\":-1,\"color1\":29,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"plate\":\"VCO 080\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":true},\"color2\":29,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'VEY 329', '{\"model\":1549126457,\"plate\":\"VEY 329\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'VOY 637', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"VOY 637\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'VQF 839', '{\"extras\":[],\"modAerials\":-1,\"pearlescentColor\":3,\"modSeats\":-1,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"health\":1000,\"modArchCover\":-1,\"modXenon\":false,\"modTrunk\":-1,\"color1\":1,\"modSuspension\":-1,\"modDashboard\":-1,\"modVanityPlate\":-1,\"wheelColor\":156,\"modTransmission\":-1,\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modTurbo\":false,\"model\":330661258,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modDial\":-1,\"modFender\":-1,\"modAPlate\":-1,\"plate\":\"VQF 839\",\"plateIndex\":0,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"color2\":1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"windowTint\":-1,\"modFrontBumper\":-1,\"modBrakes\":-1,\"dirtLevel\":9.0,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"wheels\":0,\"modRoof\":-1,\"modHydrolic\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modTrimA\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modHood\":-1,\"modSpoilers\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'VTL 221', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":29,\"modFrame\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":7,\"model\":-1637862878,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"VTL 221\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":true},\"color2\":29,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":120}', 'car', NULL, 0);
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:1100001329e1807', 0, 'VYO 665', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"VYO 665\",\"modWindows\":-1,\"wheels\":0,\"modSuspension\":-1,\"modAerials\":-1,\"health\":938,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":112,\"modAirFilter\":-1,\"color2\":64,\"modXenon\":false,\"extras\":{\"2\":false,\"1\":true},\"modSteeringWheel\":-1,\"dirtLevel\":1.0,\"model\":-1835937232,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001454ba550', 0, 'WHC 141', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modSmokeEnabled\":false,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"pearlescentColor\":19,\"modEngine\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":31,\"model\":29976887,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":1,\"modPlateHolder\":-1,\"modXenon\":false,\"modGrille\":-1,\"modWindows\":-1,\"modHood\":-1,\"wheels\":7,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"plate\":\"WHC 141\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":true,\"2\":false},\"color2\":35,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'WPM 745', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"WPM 745\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'WRH 921', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true,\"1\":true},\"health\":993,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":29,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"WRH 921\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1637862878,\"color2\":29,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'WRV 457', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"WRV 457\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'WUB 615', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"WUB 615\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'WUG 224', '{\"modEngineBlock\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"pearlescentColor\":120,\"modEngine\":-1,\"modTransmission\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"plate\":\"WUG 224\",\"modWindows\":-1,\"wheels\":0,\"modSuspension\":-1,\"modAerials\":-1,\"health\":1000,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":112,\"modAirFilter\":-1,\"color2\":64,\"modXenon\":false,\"extras\":{\"2\":false,\"1\":true},\"modSteeringWheel\":-1,\"dirtLevel\":0.0,\"model\":-1835937232,\"modBackWheels\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'WUI 825', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modBackWheels\":3,\"modRightFender\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modLivery\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"health\":1000,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"color1\":0,\"modFrame\":-1,\"dirtLevel\":4.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimA\":-1,\"modHood\":-1,\"wheels\":1,\"model\":8880015,\"wheelColor\":156,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"plate\":\"WUI 825\",\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":true},\"color2\":1,\"modTransmission\":-1,\"modFender\":-1,\"pearlescentColor\":120}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'WUM 775', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"WUM 775\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:110000144de223c', 0, 'WYT 362', '{\"modTrimB\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"health\":1000,\"modRightFender\":-1,\"model\":1674460262,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"pearlescentColor\":120,\"modWindows\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"dirtLevel\":5.0,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modLivery\":1,\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"windowTint\":-1,\"modHood\":-1,\"wheels\":0,\"modArmor\":-1,\"modSuspension\":-1,\"color1\":0,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"plate\":\"WYT 362\",\"modFrame\":-1,\"neonColor\":[255,0,255],\"extras\":{\"1\":false,\"2\":true},\"color2\":29,\"modTransmission\":-1,\"modFender\":-1,\"modAerials\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'XAI 068', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"XAI 068\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'XAO 241', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"XAO 241\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'XJZ 602', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":120,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false,\"1\":false},\"health\":995,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":0,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":3,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"XJZ 602\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":8880015,\"color2\":1,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'XLU 740', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":64,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"health\":997,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":64,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"XLU 740\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":-1381125554,\"color2\":64,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'XRC 689', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":6.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"XRC 689\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'YDI 576', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":7.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"YDI 576\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'YGS 958', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"YGS 958\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'YPE 046', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":9.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modLivery\":0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"pearlescentColor\":19,\"modAirFilter\":-1,\"modFender\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":true,\"1\":false},\"health\":1000,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":31,\"modTrimA\":-1,\"wheels\":7,\"modHood\":-1,\"modSideSkirt\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modAerials\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"windowTint\":-1,\"modGrille\":-1,\"model\":29976887,\"modTank\":-1,\"modBackWheels\":-1,\"plate\":\"YPE 046\",\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modEngine\":-1,\"color2\":35,\"modXenon\":false}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'YWD 049', '{\"modSuspension\":-1,\"wheelColor\":156,\"modRoof\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":63,\"modAirFilter\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"extras\":{\"2\":false},\"health\":1000,\"modDashboard\":-1,\"modLivery\":0,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":63,\"modTrimA\":-1,\"modHorns\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modTrimB\":-1,\"plate\":\"YWD 049\",\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"model\":980885719,\"color2\":70,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'YZV 314', '{\"model\":1549126457,\"plate\":\"YZV 314\"}', 'car', NULL, 0),
('steam:1100001329e1807', 0, 'ZSR 546', '{\"model\":330661258,\"plate\":\"ZSR 546\"}', 'car', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `incoming` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907}', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_motor`
--

CREATE TABLE `rented_motor` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `society_moneywash`
--

INSERT INTO `society_moneywash` (`id`, `identifier`, `society`, `amount`) VALUES
(2, 'steam:1100001415ae8d2', 'cardealer', 10000);

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory2`
--

CREATE TABLE `truck_inventory2` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `truck_inventory2`
--

INSERT INTO `truck_inventory2` (`id`, `plate`, `data`, `owned`) VALUES
(52, '63LBY013', '{}', 0),
(53, '46JZQ350', '{\"coffre\":[]}', 0),
(54, '00MIQ185', '{}', 0),
(55, '24JXG600', '{\"coffre\":[{\"name\":\"bandage\",\"count\":10}]}', 0),
(56, '46GMF521', '{}', 0),
(57, '81WWJ997', '{}', 0),
(58, '44ZFM992', '{\"coffre\":[{\"name\":\"opium\",\"count\":10}]}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `fivecoin` int(11) NOT NULL DEFAULT 0,
  `lk_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `job2`, `job2_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `isDead`, `phone_number`, `tattoos`, `last_property`, `fivecoin`, `lk_points`) VALUES
('steam:1100001329e1807', 'license:401455b1fec1f5c3e3f078b0208d75b6242006b7', 387000, 'Lucas', '{\"lipstick_3\":0,\"chain_2\":0,\"blush_2\":0,\"hair_1\":0,\"complexion_2\":0,\"lipstick_1\":0,\"torso_2\":0,\"blemishes_1\":0,\"sex\":0,\"hair_color_1\":0,\"chest_1\":0,\"torso_1\":0,\"pants_1\":0,\"shoes_2\":0,\"skin\":0,\"lipstick_2\":0,\"makeup_4\":0,\"shoes_1\":0,\"glasses_1\":0,\"bodyb_1\":0,\"bproof_2\":0,\"sun_1\":0,\"lipstick_4\":0,\"makeup_3\":0,\"bags_2\":0,\"ears_1\":-1,\"chest_2\":0,\"decals_1\":0,\"beard_4\":0,\"arms\":0,\"watches_1\":-1,\"hair_2\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"beard_1\":0,\"moles_1\":0,\"decals_2\":0,\"mask_2\":0,\"sun_2\":0,\"makeup_2\":0,\"bracelets_2\":0,\"pants_2\":0,\"chain_1\":0,\"complexion_1\":0,\"helmet_2\":0,\"helmet_1\":-1,\"face\":0,\"glasses_2\":0,\"blemishes_2\":0,\"eyebrows_1\":0,\"bproof_1\":0,\"hair_color_2\":0,\"eyebrows_2\":0,\"beard_2\":0,\"tshirt_1\":0,\"watches_2\":0,\"eyebrows_4\":0,\"age_2\":0,\"beard_3\":0,\"bodyb_2\":0,\"blush_1\":0,\"eyebrows_3\":0,\"mask_1\":0,\"makeup_1\":0,\"blush_3\":0,\"bags_1\":0,\"ears_2\":0,\"arms_2\":0,\"eye_color\":0,\"age_1\":0,\"moles_2\":0,\"chest_3\":0}', 'police', 4, 'ballas', 3, '[{\"label\":\"Batte\",\"components\":[],\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"label\":\"Pistolet\",\"components\":[\"clip_default\"],\"ammo\":200,\"name\":\"WEAPON_PISTOL\"},{\"label\":\"Revolver\",\"components\":[],\"ammo\":200,\"name\":\"WEAPON_REVOLVER\"},{\"label\":\"Smg\",\"components\":[\"clip_default\"],\"ammo\":200,\"name\":\"WEAPON_SMG\"},{\"label\":\"Mini smg\",\"components\":[\"clip_default\"],\"ammo\":200,\"name\":\"WEAPON_MINISMG\"},{\"label\":\"AK-47\",\"components\":[\"clip_default\"],\"ammo\":162,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"label\":\"Fusil compact\",\"components\":[\"clip_default\"],\"ammo\":162,\"name\":\"WEAPON_COMPACTRIFLE\"}]', '{\"x\":213.79999999998837,\"y\":-859.0,\"z\":30.40000000000145}', 700, 4, 'superadmin', 'Lucas', 'Fremaux', '10/09/2003', 'h', '180', '[{\"name\":\"hunger\",\"val\":898200,\"percent\":89.82},{\"name\":\"thirst\",\"val\":923650,\"percent\":92.365}]', b'0', NULL, NULL, NULL, 61000, 979648),
('steam:11000013d0f8906', 'license:c6ffe27bf3c9d7be77b39477dcba4b7bcfd8833f', 0, 'Neir pyc', '{\"arms_2\":0,\"blush_2\":0,\"mask_1\":0,\"beard_1\":0,\"glasses_1\":0,\"beard_2\":0,\"bags_1\":0,\"beard_4\":0,\"bracelets_2\":0,\"arms\":0,\"hair_2\":0,\"lipstick_1\":0,\"chest_3\":0,\"decals_1\":0,\"mask_2\":0,\"torso_1\":0,\"blush_3\":0,\"pants_2\":0,\"hair_color_1\":0,\"tshirt_2\":0,\"pants_1\":0,\"makeup_3\":0,\"age_1\":0,\"blemishes_1\":0,\"helmet_2\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"torso_2\":0,\"face\":0,\"complexion_1\":0,\"ears_2\":0,\"eye_color\":0,\"eyebrows_2\":0,\"decals_2\":0,\"moles_1\":0,\"chain_1\":0,\"ears_1\":-1,\"bproof_2\":0,\"sex\":0,\"blemishes_2\":0,\"chain_2\":0,\"bproof_1\":0,\"blush_1\":0,\"sun_2\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"sun_1\":0,\"makeup_1\":0,\"moles_2\":0,\"bags_2\":0,\"lipstick_2\":0,\"chest_1\":0,\"eyebrows_4\":0,\"eyebrows_3\":0,\"shoes_1\":0,\"helmet_1\":-1,\"watches_1\":-1,\"glasses_2\":0,\"age_2\":0,\"complexion_2\":0,\"makeup_2\":0,\"makeup_4\":0,\"bodyb_2\":0,\"beard_3\":0,\"hair_1\":0,\"tshirt_1\":0,\"watches_2\":0,\"chest_2\":0,\"skin\":0,\"lipstick_4\":0,\"bodyb_1\":0,\"hair_color_2\":0}', 'unemployed', 0, 'unemployed2', 0, '[]', '{\"z\":0.0,\"x\":0.0,\"y\":0.0}', 0, 0, 'user', 'Rulio', 'Perez', '1998-03-04', 'h', '190', '[{\"val\":947900,\"name\":\"hunger\",\"percent\":94.78999999999999},{\"val\":960925,\"name\":\"thirst\",\"percent\":96.0925}]', b'0', NULL, NULL, NULL, 0, 0),
('steam:11000013ec2b6b1', 'license:6d39ec0a67245aac8fa73f996f47438089ed31ab', 0, 'raphael.berthaud', '{\"shoes_2\":2,\"watches_2\":0,\"skin\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"helmet_2\":1,\"pants_2\":2,\"bproof_1\":0,\"arms_2\":1,\"beard_4\":0,\"ears_2\":0,\"chest_3\":0,\"sun_1\":0,\"beard_1\":0,\"eyebrows_3\":0,\"watches_1\":-1,\"decals_1\":0,\"arms\":1,\"sex\":0,\"shoes_1\":7,\"makeup_4\":0,\"eyebrows_4\":0,\"moles_1\":0,\"age_2\":0,\"age_1\":0,\"torso_1\":7,\"complexion_1\":0,\"beard_2\":0,\"bproof_2\":0,\"hair_1\":38,\"chest_1\":0,\"blush_2\":0,\"makeup_3\":0,\"sun_2\":0,\"pants_1\":5,\"glasses_2\":0,\"bodyb_1\":0,\"blush_3\":0,\"eye_color\":0,\"ears_1\":-1,\"tshirt_2\":0,\"glasses_1\":0,\"lipstick_2\":0,\"mask_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"bracelets_1\":-1,\"mask_1\":0,\"bags_2\":0,\"beard_3\":0,\"helmet_1\":15,\"lipstick_3\":0,\"moles_2\":0,\"bodyb_2\":0,\"tshirt_1\":0,\"hair_2\":0,\"face\":0,\"hair_color_2\":10,\"decals_2\":0,\"lipstick_1\":0,\"bags_1\":0,\"chain_2\":0,\"makeup_2\":0,\"hair_color_1\":4,\"blush_1\":0,\"torso_2\":2,\"chest_2\":0,\"eyebrows_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"blemishes_2\":0,\"complexion_2\":0}', 'unemployed', 0, 'unemployed2', 0, '[{\"components\":[\"clip_default\"],\"ammo\":44,\"name\":\"WEAPON_CARBINERIFLE\",\"label\":\"M4A1\"}]', '{\"z\":12.59999999999854,\"y\":-194.20000000001165,\"x\":-474.4000000000233}', 250, 0, 'user', 'Yan', 'Neil', '2004/01/27', 'h', '189', '[{\"name\":\"hunger\",\"percent\":54.59,\"val\":545900},{\"name\":\"thirst\",\"percent\":65.94250000000001,\"val\":659425}]', b'0', NULL, NULL, NULL, 0, 0),
('steam:11000013f089a2a', 'license:27980523f8fe16ade4bcd726c7cb46664d76696e', 0, 'Mathys Mat', NULL, 'unemployed', 0, 'unemployed2', 0, '[]', '{\"z\":23.80000000000291,\"y\":-734.6000000000931,\"x\":-489.4000000000233}', 0, 0, 'user', '', '', '', '', '', '[{\"percent\":99.2,\"val\":992000,\"name\":\"hunger\"},{\"percent\":99.4,\"val\":994000,\"name\":\"thirst\"}]', b'0', NULL, NULL, NULL, 0, 0),
('steam:1100001400bcf91', 'license:7e95030074a7687e784f4d3e30df938c96395a88', 0, 'polooffy', NULL, 'unemployed', 0, 'unemployed2', 0, '[]', '{\"z\":0.0,\"y\":0.0,\"x\":0.0}', 0, 0, 'user', '', '', '', '', '', '[]', b'0', NULL, NULL, NULL, 0, 0),
('steam:1100001415ae8d2', 'license:283f25e472e0a53ebeb1f2bfa11a4b5afcb56e43', 9990000, 'RZ', NULL, 'police', 4, 'ballas', 3, '[{\"label\":\"Pistolet\",\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"ammo\":0},{\"name\":\"WEAPON_ASSAULTRIFLE_MK2\",\"components\":[],\"ammo\":250}]', '{\"y\":-981.3999999999069,\"z\":25.59999999999854,\"x\":458.5999999999767}', 20000038, 4, 'superadmin', 'Tom', 'Clark', '26/05/1994', 'h', '198', '[{\"val\":483200,\"percent\":48.32,\"name\":\"hunger\"},{\"val\":487400,\"percent\":48.74,\"name\":\"thirst\"}]', b'0', NULL, NULL, NULL, 0, 0),
('steam:1100001438e7c0a', 'license:7f8438cda6369c58d72cbd2b4b29f3dd9cce6bc7', 0, 'Miguel Hernandez', NULL, 'unemployed', 0, 'unemployed2', 0, '[]', '{\"x\":-489.4000000000233,\"z\":23.80000000000291,\"y\":-734.6000000000931}', 0, 0, 'user', '', '', '', '', '', '[{\"name\":\"hunger\",\"percent\":98.0,\"val\":980000},{\"name\":\"thirst\",\"percent\":98.5,\"val\":985000}]', b'0', NULL, NULL, NULL, 0, 0),
('steam:110000144de223c', 'license:7a9fe2c050cddc760b7e4e5ed699c371fab33c9f', 1088590, 'Matsukito', '{\"beard_4\":0,\"complexion_2\":0,\"hair_color_2\":0,\"ears_2\":0,\"pants_2\":0,\"moles_1\":0,\"torso_2\":0,\"chest_3\":0,\"blemishes_1\":0,\"beard_2\":0,\"blush_1\":0,\"age_2\":0,\"chain_2\":0,\"tshirt_1\":1,\"lipstick_1\":0,\"ears_1\":-1,\"chest_1\":0,\"lipstick_3\":0,\"shoes_2\":0,\"shoes_1\":0,\"decals_1\":0,\"watches_2\":0,\"lipstick_2\":0,\"arms\":0,\"arms_2\":0,\"beard_1\":0,\"sun_2\":0,\"sex\":0,\"bproof_2\":0,\"bracelets_1\":-1,\"mask_2\":0,\"mask_1\":0,\"eyebrows_1\":0,\"complexion_1\":0,\"glasses_2\":0,\"bags_2\":0,\"glasses_1\":0,\"chest_2\":0,\"blush_2\":0,\"moles_2\":0,\"torso_1\":7,\"chain_1\":0,\"pants_1\":0,\"makeup_3\":0,\"face\":0,\"helmet_2\":0,\"makeup_1\":0,\"blemishes_2\":0,\"bodyb_2\":0,\"bracelets_2\":0,\"beard_3\":0,\"eye_color\":0,\"eyebrows_3\":0,\"hair_1\":1,\"bproof_1\":0,\"hair_color_1\":0,\"eyebrows_4\":0,\"watches_1\":-1,\"makeup_4\":0,\"blush_3\":0,\"sun_1\":0,\"tshirt_2\":0,\"eyebrows_2\":0,\"bodyb_1\":0,\"decals_2\":0,\"bags_1\":0,\"age_1\":0,\"skin\":0,\"hair_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_4\":0}', 'cardealer', 3, 'ballas', 3, '[{\"ammo\":250,\"components\":[],\"name\":\"weapon_gadgetpistol\"}]', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', 450, 4, 'superadmin', 'Matsu', 'Fondateur', '29/09/1943', 'h', '180', '[{\"percent\":41.3,\"name\":\"hunger\",\"val\":413000},{\"percent\":43.475,\"name\":\"thirst\",\"val\":434750}]', b'0', NULL, NULL, NULL, 973000, 0),
('steam:1100001454ba550', 'license:d8f2aa755fded5229887408a514fe706f055bcf1', 100200, 'dsfdsfdsfds', '{\"beard_4\":0,\"helmet_1\":-1,\"hair_color_2\":0,\"ears_2\":0,\"pants_2\":0,\"moles_1\":0,\"torso_2\":0,\"chest_3\":0,\"blemishes_1\":0,\"beard_2\":0,\"blush_1\":0,\"age_2\":0,\"chain_2\":0,\"tshirt_1\":15,\"lipstick_1\":0,\"ears_1\":-1,\"chest_1\":0,\"lipstick_3\":0,\"shoes_2\":0,\"shoes_1\":0,\"decals_1\":0,\"hair_color_1\":0,\"lipstick_2\":0,\"arms\":0,\"hair_1\":2,\"beard_1\":0,\"sun_2\":0,\"sex\":0,\"bproof_2\":0,\"bracelets_1\":-1,\"mask_2\":0,\"mask_1\":0,\"eyebrows_1\":0,\"sun_1\":0,\"glasses_2\":0,\"bags_2\":0,\"glasses_1\":0,\"chest_2\":0,\"blush_2\":0,\"moles_2\":0,\"torso_1\":26,\"chain_1\":0,\"pants_1\":9,\"makeup_3\":0,\"bracelets_2\":0,\"helmet_2\":0,\"makeup_1\":0,\"blemishes_2\":0,\"bodyb_2\":0,\"eyebrows_4\":0,\"eyebrows_3\":0,\"eye_color\":0,\"skin\":0,\"beard_3\":0,\"age_1\":0,\"complexion_2\":0,\"makeup_2\":0,\"watches_1\":-1,\"watches_2\":0,\"hair_2\":0,\"bodyb_1\":0,\"tshirt_2\":0,\"arms_2\":0,\"blush_3\":0,\"decals_2\":0,\"bags_1\":0,\"eyebrows_2\":0,\"makeup_4\":0,\"complexion_1\":0,\"face\":0,\"bproof_1\":0,\"lipstick_4\":0}', 'police', 4, 'unemployed2', 0, '[{\"label\":\"Couteau\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_KNIFE\"},{\"label\":\"Matraque\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_NIGHTSTICK\"},{\"label\":\"Marteau\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_HAMMER\"},{\"label\":\"Batte\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_BAT\"},{\"label\":\"Club de golf\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_GOLFCLUB\"},{\"label\":\"Pied de biche\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_CROWBAR\"},{\"label\":\"Pistolet\",\"ammo\":235,\"components\":[\"clip_default\"],\"name\":\"WEAPON_PISTOL\"},{\"label\":\"Pistolet de combat\",\"ammo\":235,\"components\":[\"clip_default\"],\"name\":\"WEAPON_COMBATPISTOL\"},{\"label\":\"Pistolet automatique\",\"ammo\":235,\"components\":[\"clip_default\"],\"name\":\"WEAPON_APPISTOL\"},{\"label\":\"Pistolet calibre 50\",\"ammo\":235,\"components\":[\"clip_default\"],\"name\":\"WEAPON_PISTOL50\"},{\"label\":\"Revolver\",\"ammo\":235,\"components\":[],\"name\":\"WEAPON_REVOLVER\"},{\"label\":\"Pétoire\",\"ammo\":235,\"components\":[\"clip_default\"],\"name\":\"WEAPON_SNSPISTOL\"},{\"label\":\"Mini-Uzi\",\"ammo\":48,\"components\":[\"clip_default\"],\"name\":\"WEAPON_MICROSMG\"},{\"label\":\"Smg\",\"ammo\":48,\"components\":[\"clip_default\"],\"name\":\"WEAPON_SMG\"},{\"label\":\"Smg d\'assaut\",\"ammo\":48,\"components\":[\"clip_default\"],\"name\":\"WEAPON_ASSAULTSMG\"},{\"label\":\"Mini smg\",\"ammo\":48,\"components\":[\"clip_default\"],\"name\":\"WEAPON_MINISMG\"},{\"label\":\"Arme de défense personnelle\",\"ammo\":48,\"components\":[\"clip_default\"],\"name\":\"WEAPON_COMBATPDW\"},{\"label\":\"Fusil à pompe\",\"ammo\":244,\"components\":[],\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"label\":\"Carabine à canon scié\",\"ammo\":244,\"components\":[],\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"label\":\"Carabine d\'assaut\",\"ammo\":244,\"components\":[\"clip_default\"],\"name\":\"WEAPON_ASSAULTSHOTGUN\"},{\"label\":\"Carabine bullpup\",\"ammo\":244,\"components\":[],\"name\":\"WEAPON_BULLPUPSHOTGUN\"},{\"label\":\"Fusil à pompe lourd\",\"ammo\":244,\"components\":[\"clip_default\"],\"name\":\"WEAPON_HEAVYSHOTGUN\"},{\"label\":\"AK-47\",\"ammo\":0,\"components\":[\"clip_default\"],\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"label\":\"M4A1\",\"ammo\":0,\"components\":[\"clip_default\"],\"name\":\"WEAPON_CARBINERIFLE\"},{\"label\":\"Fusil avancé\",\"ammo\":0,\"components\":[\"clip_default\"],\"name\":\"WEAPON_ADVANCEDRIFLE\"},{\"label\":\"G36C\",\"ammo\":0,\"components\":[\"clip_default\"],\"name\":\"WEAPON_SPECIALCARBINE\"},{\"label\":\"Fusil bullpup\",\"ammo\":0,\"components\":[\"clip_default\"],\"name\":\"WEAPON_BULLPUPRIFLE\"},{\"label\":\"Fusil compact\",\"ammo\":0,\"components\":[\"clip_default\"],\"name\":\"WEAPON_COMPACTRIFLE\"},{\"label\":\"Balayeuse gusenberg\",\"ammo\":244,\"components\":[\"clip_default\"],\"name\":\"WEAPON_GUSENBERG\"},{\"label\":\"Mk. 14 Mod 1 EBR\",\"ammo\":249,\"components\":[\"scope\"],\"name\":\"WEAPON_SNIPERRIFLE\"},{\"label\":\"Barrett M82\",\"ammo\":249,\"components\":[\"scope_advanced\"],\"name\":\"WEAPON_HEAVYSNIPER\"},{\"label\":\"Fusil marksman\",\"ammo\":249,\"components\":[\"clip_default\",\"scope\"],\"name\":\"WEAPON_MARKSMANRIFLE\"},{\"label\":\"Lance-rocket\",\"ammo\":11,\"components\":[],\"name\":\"WEAPON_RPG\"},{\"label\":\"Bouteille\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_BOTTLE\"},{\"label\":\"Poignard\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_DAGGER\"},{\"label\":\"Mousquet\",\"ammo\":244,\"components\":[],\"name\":\"WEAPON_MUSKET\"},{\"label\":\"Tazer\",\"ammo\":250,\"components\":[],\"name\":\"WEAPON_STUNGUN\"},{\"label\":\"Lance fusée de détresse\",\"ammo\":20,\"components\":[],\"name\":\"WEAPON_FLAREGUN\"},{\"label\":\"Poing américain\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_KNUCKLE\"},{\"label\":\"Hachette\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_HATCHET\"},{\"label\":\"Machette\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_MACHETE\"},{\"label\":\"Couteau à cran d\'arrêt\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_SWITCHBLADE\"},{\"label\":\"Fusil à pompe double canon\",\"ammo\":244,\"components\":[],\"name\":\"WEAPON_DBSHOTGUN\"},{\"label\":\"Fusil à pompe automatique\",\"ammo\":244,\"components\":[],\"name\":\"WEAPON_AUTOSHOTGUN\"},{\"label\":\"Queue de billard\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_POOLCUE\"},{\"label\":\"Clé\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_WRENCH\"},{\"label\":\"Lampe torche\",\"ammo\":0,\"components\":[],\"name\":\"WEAPON_FLASHLIGHT\"}]', '{\"x\":-157.0,\"y\":-1301.6000000000932,\"z\":30.80000000000291}', 640, 4, 'superadmin', 'Drs', 'Julien', '24/10/1975', 'h', '180', '[{\"percent\":40.0,\"name\":\"hunger\",\"val\":400000},{\"percent\":42.5,\"name\":\"thirst\",\"val\":425000}]', b'0', NULL, NULL, NULL, 991000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(5, 'steam:1100001329e1807', 'black_money', 2463542),
(6, 'steam:1100001329e1807', 'black_money', 2463542),
(7, 'steam:11000010c113c89', 'black_money', 0),
(8, 'steam:11000013ec2b6b1', 'black_money', 0),
(9, 'steam:1100001400bcf91', 'black_money', 0),
(10, 'steam:1100001400bcf91', 'black_money', 0),
(11, 'steam:11000013f089a2a', 'black_money', 0),
(12, 'steam:11000013f089a2a', 'black_money', 0),
(13, 'steam:1100001438e7c0a', 'black_money', 0),
(14, 'steam:1100001438e7c0a', 'black_money', 0),
(15, 'steam:11000013d0f8906', 'black_money', 0),
(16, 'steam:11000013d0f8906', 'black_money', 0),
(17, 'steam:1100001454ba550', 'black_money', 12259),
(18, 'steam:1100001454ba550', 'black_money', 12259),
(19, 'steam:110000144de223c', 'black_money', 0),
(20, 'steam:110000144de223c', 'black_money', 0),
(21, 'steam:1100001415ae8d2', 'black_money', 917),
(22, 'steam:1100001415ae8d2', 'black_money', 917);

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(158, 'steam:1100001329e1807', 'packaged_chicken', 0),
(159, 'steam:1100001329e1807', 'meth_pooch', 0),
(160, 'steam:1100001329e1807', 'bread', 2),
(161, 'steam:1100001329e1807', 'opium_pooch', 0),
(162, 'steam:1100001329e1807', 'wood', 0),
(163, 'steam:1100001329e1807', 'packaged_chicken', 0),
(164, 'steam:1100001329e1807', 'meth_pooch', 0),
(165, 'steam:1100001329e1807', 'opium_pooch', 0),
(166, 'steam:1100001329e1807', 'bread', 2),
(167, 'steam:1100001329e1807', 'wood', 0),
(168, 'steam:1100001329e1807', 'diamond', 0),
(169, 'steam:1100001329e1807', 'essence', 0),
(170, 'steam:1100001329e1807', 'weed', 0),
(171, 'steam:1100001329e1807', 'clothe', 0),
(172, 'steam:1100001329e1807', 'iron', 0),
(173, 'steam:1100001329e1807', 'diamond', 0),
(174, 'steam:1100001329e1807', 'essence', 0),
(175, 'steam:1100001329e1807', 'weed', 0),
(176, 'steam:1100001329e1807', 'clothe', 0),
(177, 'steam:1100001329e1807', 'iron', 0),
(178, 'steam:1100001329e1807', 'jus_raisin', 0),
(179, 'steam:1100001329e1807', 'stone', 0),
(180, 'steam:1100001329e1807', 'weed_pooch', 0),
(181, 'steam:1100001329e1807', 'copper', 0),
(182, 'steam:1100001329e1807', 'cutted_wood', 0),
(183, 'steam:1100001329e1807', 'jus_raisin', 0),
(184, 'steam:1100001329e1807', 'stone', 0),
(185, 'steam:1100001329e1807', 'weed_pooch', 0),
(186, 'steam:1100001329e1807', 'copper', 0),
(187, 'steam:1100001329e1807', 'cutted_wood', 0),
(188, 'steam:1100001329e1807', 'water', 0),
(189, 'steam:1100001329e1807', 'coke_pooch', 0),
(190, 'steam:1100001329e1807', 'gps', 0),
(191, 'steam:1100001329e1807', 'vinr', 0),
(192, 'steam:1100001329e1807', 'fish', 0),
(193, 'steam:1100001329e1807', 'water', 0),
(194, 'steam:1100001329e1807', 'coke_pooch', 0),
(195, 'steam:1100001329e1807', 'gps', 0),
(196, 'steam:1100001329e1807', 'vinr', 0),
(197, 'steam:1100001329e1807', 'fish', 0),
(198, 'steam:1100001329e1807', 'wool', 0),
(199, 'steam:1100001329e1807', 'washed_stone', 0),
(200, 'steam:1100001329e1807', 'meth', 0),
(201, 'steam:1100001329e1807', 'vine', 0),
(202, 'steam:1100001329e1807', 'sw', 0),
(203, 'steam:1100001329e1807', 'wool', 0),
(204, 'steam:1100001329e1807', 'washed_stone', 0),
(205, 'steam:1100001329e1807', 'meth', 0),
(206, 'steam:1100001329e1807', 'vine', 0),
(207, 'steam:1100001329e1807', 'sw', 0),
(208, 'steam:1100001329e1807', 'fabric', 0),
(209, 'steam:1100001329e1807', 'gold', 0),
(210, 'steam:1100001329e1807', 'slaughtered_chicken', 0),
(211, 'steam:1100001329e1807', 'hamburger', 0),
(212, 'steam:1100001329e1807', 'petrol_raffin', 0),
(213, 'steam:1100001329e1807', 'fabric', 0),
(214, 'steam:1100001329e1807', 'gold', 0),
(215, 'steam:1100001329e1807', 'slaughtered_chicken', 0),
(216, 'steam:1100001329e1807', 'hamburger', 0),
(217, 'steam:1100001329e1807', 'petrol_raffin', 0),
(218, 'steam:1100001329e1807', 'medikit', 0),
(219, 'steam:1100001329e1807', 'petrol', 0),
(220, 'steam:1100001329e1807', 'raisin', 0),
(221, 'steam:1100001329e1807', 'bandage', 0),
(222, 'steam:1100001329e1807', 'packaged_plank', 0),
(223, 'steam:1100001329e1807', 'medikit', 0),
(224, 'steam:1100001329e1807', 'petrol', 0),
(225, 'steam:1100001329e1807', 'raisin', 0),
(226, 'steam:1100001329e1807', 'bandage', 0),
(227, 'steam:1100001329e1807', 'packaged_plank', 0),
(228, 'steam:1100001329e1807', 'grand_cru', 0),
(229, 'steam:1100001329e1807', 'icetea', 0),
(230, 'steam:1100001329e1807', 'opium', 0),
(231, 'steam:1100001329e1807', 'coke', 0),
(232, 'steam:1100001329e1807', 'alive_chicken', 0),
(233, 'steam:1100001329e1807', 'grand_cru', 0),
(234, 'steam:1100001329e1807', 'icetea', 0),
(235, 'steam:1100001329e1807', 'opium', 0),
(236, 'steam:1100001329e1807', 'coke', 0),
(237, 'steam:1100001329e1807', 'alive_chicken', 0),
(238, 'steam:11000010c113c89', 'packaged_chicken', 0),
(239, 'steam:11000010c113c89', 'gold', 0),
(240, 'steam:11000010c113c89', 'bandage', 0),
(241, 'steam:11000010c113c89', 'coke', 0),
(242, 'steam:11000010c113c89', 'slaughtered_chicken', 0),
(243, 'steam:11000010c113c89', 'hamburger', 0),
(244, 'steam:11000010c113c89', 'packaged_plank', 0),
(245, 'steam:11000010c113c89', 'cutted_wood', 0),
(246, 'steam:11000010c113c89', 'opium', 0),
(247, 'steam:11000010c113c89', 'vine', 0),
(248, 'steam:11000010c113c89', 'hamburger', 0),
(249, 'steam:11000010c113c89', 'packaged_plank', 0),
(250, 'steam:11000010c113c89', 'cutted_wood', 0),
(251, 'steam:11000010c113c89', 'opium', 0),
(252, 'steam:11000010c113c89', 'vine', 0),
(253, 'steam:11000010c113c89', 'meth_pooch', 0),
(254, 'steam:11000010c113c89', 'fish', 0),
(255, 'steam:11000010c113c89', 'bread', 0),
(256, 'steam:11000010c113c89', 'essence', 0),
(257, 'steam:11000010c113c89', 'clothe', 0),
(258, 'steam:11000010c113c89', 'bread', 0),
(259, 'steam:11000010c113c89', 'meth_pooch', 0),
(260, 'steam:11000010c113c89', 'fish', 0),
(261, 'steam:11000010c113c89', 'essence', 0),
(262, 'steam:11000010c113c89', 'clothe', 0),
(263, 'steam:11000010c113c89', 'stone', 0),
(264, 'steam:11000010c113c89', 'opium_pooch', 0),
(265, 'steam:11000010c113c89', 'copper', 0),
(266, 'steam:11000010c113c89', 'alive_chicken', 0),
(267, 'steam:11000010c113c89', 'wool', 0),
(268, 'steam:11000010c113c89', 'stone', 0),
(269, 'steam:11000010c113c89', 'opium_pooch', 0),
(270, 'steam:11000010c113c89', 'copper', 0),
(271, 'steam:11000010c113c89', 'wool', 0),
(272, 'steam:11000010c113c89', 'alive_chicken', 0),
(273, 'steam:11000010c113c89', 'meth', 0),
(274, 'steam:11000010c113c89', 'coke_pooch', 0),
(275, 'steam:11000010c113c89', 'grand_cru', 0),
(276, 'steam:11000010c113c89', 'weed_pooch', 0),
(277, 'steam:11000010c113c89', 'raisin', 0),
(278, 'steam:11000010c113c89', 'meth', 0),
(279, 'steam:11000010c113c89', 'coke_pooch', 0),
(280, 'steam:11000010c113c89', 'weed_pooch', 0),
(281, 'steam:11000010c113c89', 'grand_cru', 0),
(282, 'steam:11000010c113c89', 'raisin', 0),
(283, 'steam:11000010c113c89', 'weed', 0),
(284, 'steam:11000010c113c89', 'fabric', 0),
(285, 'steam:11000010c113c89', 'icetea', 0),
(286, 'steam:11000010c113c89', 'water', 0),
(287, 'steam:11000010c113c89', 'washed_stone', 0),
(288, 'steam:11000010c113c89', 'weed', 0),
(289, 'steam:11000010c113c89', 'fabric', 0),
(290, 'steam:11000010c113c89', 'icetea', 0),
(291, 'steam:11000010c113c89', 'water', 0),
(292, 'steam:11000010c113c89', 'washed_stone', 0),
(293, 'steam:11000010c113c89', 'vinr', 0),
(294, 'steam:11000010c113c89', 'sw', 0),
(295, 'steam:11000010c113c89', 'medikit', 0),
(296, 'steam:11000010c113c89', 'wood', 0),
(297, 'steam:11000010c113c89', 'petrol_raffin', 0),
(298, 'steam:11000010c113c89', 'vinr', 0),
(299, 'steam:11000010c113c89', 'sw', 0),
(300, 'steam:11000010c113c89', 'wood', 0),
(301, 'steam:11000010c113c89', 'medikit', 0),
(302, 'steam:11000010c113c89', 'petrol_raffin', 0),
(303, 'steam:11000010c113c89', 'iron', 0),
(304, 'steam:11000010c113c89', 'petrol', 0),
(305, 'steam:11000010c113c89', 'jus_raisin', 0),
(306, 'steam:11000010c113c89', 'gps', 0),
(307, 'steam:11000010c113c89', 'diamond', 0),
(308, 'steam:11000010c113c89', 'iron', 0),
(309, 'steam:11000010c113c89', 'petrol', 0),
(310, 'steam:11000010c113c89', 'jus_raisin', 0),
(311, 'steam:11000010c113c89', 'gps', 0),
(312, 'steam:11000010c113c89', 'diamond', 0),
(313, 'steam:11000013ec2b6b1', 'vine', 0),
(314, 'steam:11000013ec2b6b1', 'fish', 0),
(315, 'steam:11000013ec2b6b1', 'opium_pooch', 0),
(316, 'steam:11000013ec2b6b1', 'copper', 0),
(317, 'steam:11000013ec2b6b1', 'meth', 0),
(318, 'steam:11000013ec2b6b1', 'clothe', 0),
(319, 'steam:11000013ec2b6b1', 'coke', 0),
(320, 'steam:11000013ec2b6b1', 'gps', 0),
(321, 'steam:11000013ec2b6b1', 'washed_stone', 0),
(322, 'steam:11000013ec2b6b1', 'petrol_raffin', 0),
(323, 'steam:11000013ec2b6b1', 'clothe', 0),
(324, 'steam:11000013ec2b6b1', 'coke', 0),
(325, 'steam:11000013ec2b6b1', 'gps', 0),
(326, 'steam:11000013ec2b6b1', 'washed_stone', 0),
(327, 'steam:11000013ec2b6b1', 'petrol_raffin', 0),
(328, 'steam:11000013ec2b6b1', 'iron', 0),
(329, 'steam:11000013ec2b6b1', 'sw', 0),
(330, 'steam:11000013ec2b6b1', 'medikit', 0),
(331, 'steam:11000013ec2b6b1', 'packaged_plank', 0),
(332, 'steam:11000013ec2b6b1', 'jus_raisin', 0),
(333, 'steam:11000013ec2b6b1', 'iron', 0),
(334, 'steam:11000013ec2b6b1', 'sw', 0),
(335, 'steam:11000013ec2b6b1', 'medikit', 0),
(336, 'steam:11000013ec2b6b1', 'packaged_plank', 0),
(337, 'steam:11000013ec2b6b1', 'jus_raisin', 0),
(338, 'steam:11000013ec2b6b1', 'wool', 0),
(339, 'steam:11000013ec2b6b1', 'stone', 0),
(340, 'steam:11000013ec2b6b1', 'wood', 0),
(341, 'steam:11000013ec2b6b1', 'weed_pooch', 0),
(342, 'steam:11000013ec2b6b1', 'wool', 0),
(343, 'steam:11000013ec2b6b1', 'coke_pooch', 0),
(344, 'steam:11000013ec2b6b1', 'stone', 0),
(345, 'steam:11000013ec2b6b1', 'coke_pooch', 0),
(346, 'steam:11000013ec2b6b1', 'wood', 0),
(347, 'steam:11000013ec2b6b1', 'weed_pooch', 0),
(348, 'steam:11000013ec2b6b1', 'weed', 0),
(349, 'steam:11000013ec2b6b1', 'icetea', 0),
(350, 'steam:11000013ec2b6b1', 'hamburger', 0),
(351, 'steam:11000013ec2b6b1', 'meth_pooch', 0),
(352, 'steam:11000013ec2b6b1', 'essence', 0),
(353, 'steam:11000013ec2b6b1', 'weed', 0),
(354, 'steam:11000013ec2b6b1', 'icetea', 0),
(355, 'steam:11000013ec2b6b1', 'hamburger', 0),
(356, 'steam:11000013ec2b6b1', 'meth_pooch', 0),
(357, 'steam:11000013ec2b6b1', 'essence', 0),
(358, 'steam:11000013ec2b6b1', 'water', 0),
(359, 'steam:11000013ec2b6b1', 'vinr', 0),
(360, 'steam:11000013ec2b6b1', 'raisin', 0),
(361, 'steam:11000013ec2b6b1', 'bandage', 0),
(362, 'steam:11000013ec2b6b1', 'cutted_wood', 0),
(363, 'steam:11000013ec2b6b1', 'water', 0),
(364, 'steam:11000013ec2b6b1', 'vinr', 0),
(365, 'steam:11000013ec2b6b1', 'raisin', 0),
(366, 'steam:11000013ec2b6b1', 'bandage', 0),
(367, 'steam:11000013ec2b6b1', 'cutted_wood', 0),
(368, 'steam:11000013ec2b6b1', 'fabric', 0),
(369, 'steam:11000013ec2b6b1', 'grand_cru', 0),
(370, 'steam:11000013ec2b6b1', 'bread', 0),
(371, 'steam:11000013ec2b6b1', 'slaughtered_chicken', 0),
(372, 'steam:11000013ec2b6b1', 'alive_chicken', 0),
(373, 'steam:11000013ec2b6b1', 'fabric', 0),
(374, 'steam:11000013ec2b6b1', 'grand_cru', 0),
(375, 'steam:11000013ec2b6b1', 'bread', 0),
(376, 'steam:11000013ec2b6b1', 'slaughtered_chicken', 0),
(377, 'steam:11000013ec2b6b1', 'alive_chicken', 0),
(378, 'steam:11000013ec2b6b1', 'packaged_chicken', 0),
(379, 'steam:11000013ec2b6b1', 'petrol', 0),
(380, 'steam:11000013ec2b6b1', 'diamond', 0),
(381, 'steam:11000013ec2b6b1', 'opium', 0),
(382, 'steam:11000013ec2b6b1', 'gold', 0),
(383, 'steam:11000013ec2b6b1', 'packaged_chicken', 0),
(384, 'steam:11000013ec2b6b1', 'petrol', 0),
(385, 'steam:11000013ec2b6b1', 'diamond', 0),
(386, 'steam:11000013ec2b6b1', 'opium', 0),
(387, 'steam:11000013ec2b6b1', 'gold', 0),
(388, 'steam:1100001329e1807', 'bag', 0),
(389, 'steam:1100001329e1807', 'bag', 0),
(390, 'steam:1100001400bcf91', 'cutted_wood', 0),
(391, 'steam:1100001400bcf91', 'grand_cru', 0),
(392, 'steam:1100001400bcf91', 'opium_pooch', 0),
(393, 'steam:1100001400bcf91', 'washed_stone', 0),
(394, 'steam:1100001400bcf91', 'icetea', 0),
(395, 'steam:1100001400bcf91', 'cutted_wood', 0),
(396, 'steam:1100001400bcf91', 'grand_cru', 0),
(397, 'steam:1100001400bcf91', 'opium_pooch', 0),
(398, 'steam:1100001400bcf91', 'washed_stone', 0),
(399, 'steam:1100001400bcf91', 'icetea', 0),
(400, 'steam:1100001400bcf91', 'packaged_chicken', 0),
(401, 'steam:1100001400bcf91', 'medikit', 0),
(402, 'steam:1100001400bcf91', 'fabric', 0),
(403, 'steam:1100001400bcf91', 'copper', 0),
(404, 'steam:1100001400bcf91', 'iron', 0),
(405, 'steam:1100001400bcf91', 'packaged_chicken', 0),
(406, 'steam:1100001400bcf91', 'medikit', 0),
(407, 'steam:1100001400bcf91', 'fabric', 0),
(408, 'steam:1100001400bcf91', 'copper', 0),
(409, 'steam:1100001400bcf91', 'iron', 0),
(410, 'steam:1100001400bcf91', 'diamond', 0),
(411, 'steam:1100001400bcf91', 'bandage', 0),
(412, 'steam:1100001400bcf91', 'water', 0),
(413, 'steam:1100001400bcf91', 'jus_raisin', 0),
(414, 'steam:1100001400bcf91', 'gold', 0),
(415, 'steam:1100001400bcf91', 'diamond', 0),
(416, 'steam:1100001400bcf91', 'bandage', 0),
(417, 'steam:1100001400bcf91', 'water', 0),
(418, 'steam:1100001400bcf91', 'jus_raisin', 0),
(419, 'steam:1100001400bcf91', 'gold', 0),
(420, 'steam:1100001400bcf91', 'meth', 0),
(421, 'steam:1100001400bcf91', 'coke', 0),
(422, 'steam:1100001400bcf91', 'sw', 0),
(423, 'steam:1100001400bcf91', 'essence', 0),
(424, 'steam:1100001400bcf91', 'bread', 0),
(425, 'steam:1100001400bcf91', 'meth', 0),
(426, 'steam:1100001400bcf91', 'coke', 0),
(427, 'steam:1100001400bcf91', 'sw', 0),
(428, 'steam:1100001400bcf91', 'essence', 0),
(429, 'steam:1100001400bcf91', 'bread', 0),
(430, 'steam:1100001400bcf91', 'bag', 0),
(431, 'steam:1100001400bcf91', 'alive_chicken', 0),
(432, 'steam:1100001400bcf91', 'wood', 0),
(433, 'steam:1100001400bcf91', 'vinr', 0),
(434, 'steam:1100001400bcf91', 'weed', 0),
(435, 'steam:1100001400bcf91', 'alive_chicken', 0),
(436, 'steam:1100001400bcf91', 'bag', 0),
(437, 'steam:1100001400bcf91', 'wood', 0),
(438, 'steam:1100001400bcf91', 'vinr', 0),
(439, 'steam:1100001400bcf91', 'weed', 0),
(440, 'steam:1100001400bcf91', 'petrol', 0),
(441, 'steam:1100001400bcf91', 'opium', 0),
(442, 'steam:1100001400bcf91', 'weed_pooch', 0),
(443, 'steam:1100001400bcf91', 'fish', 0),
(444, 'steam:1100001400bcf91', 'stone', 0),
(445, 'steam:1100001400bcf91', 'petrol', 0),
(446, 'steam:1100001400bcf91', 'opium', 0),
(447, 'steam:1100001400bcf91', 'weed_pooch', 0),
(448, 'steam:1100001400bcf91', 'fish', 0),
(449, 'steam:1100001400bcf91', 'stone', 0),
(450, 'steam:1100001400bcf91', 'vine', 0),
(451, 'steam:1100001400bcf91', 'coke_pooch', 0),
(452, 'steam:1100001400bcf91', 'slaughtered_chicken', 0),
(453, 'steam:1100001400bcf91', 'raisin', 0),
(454, 'steam:1100001400bcf91', 'gps', 0),
(455, 'steam:1100001400bcf91', 'vine', 0),
(456, 'steam:1100001400bcf91', 'coke_pooch', 0),
(457, 'steam:1100001400bcf91', 'slaughtered_chicken', 0),
(458, 'steam:1100001400bcf91', 'raisin', 0),
(459, 'steam:1100001400bcf91', 'gps', 0),
(460, 'steam:1100001400bcf91', 'packaged_plank', 0),
(461, 'steam:1100001400bcf91', 'wool', 0),
(462, 'steam:1100001400bcf91', 'petrol_raffin', 0),
(463, 'steam:1100001400bcf91', 'hamburger', 0),
(464, 'steam:1100001400bcf91', 'clothe', 0),
(465, 'steam:1100001400bcf91', 'packaged_plank', 0),
(466, 'steam:1100001400bcf91', 'wool', 0),
(467, 'steam:1100001400bcf91', 'petrol_raffin', 0),
(468, 'steam:1100001400bcf91', 'hamburger', 0),
(469, 'steam:1100001400bcf91', 'clothe', 0),
(470, 'steam:1100001400bcf91', 'meth_pooch', 0),
(471, 'steam:1100001400bcf91', 'meth_pooch', 0),
(472, 'steam:11000013f089a2a', 'gps', 0),
(473, 'steam:11000013f089a2a', 'opium_pooch', 0),
(474, 'steam:11000013f089a2a', 'diamond', 0),
(475, 'steam:11000013f089a2a', 'bandage', 0),
(476, 'steam:11000013f089a2a', 'coke', 0),
(477, 'steam:11000013f089a2a', 'gps', 0),
(478, 'steam:11000013f089a2a', 'opium_pooch', 0),
(479, 'steam:11000013f089a2a', 'diamond', 0),
(480, 'steam:11000013f089a2a', 'bandage', 0),
(481, 'steam:11000013f089a2a', 'coke', 0),
(482, 'steam:11000013f089a2a', 'bread', 0),
(483, 'steam:11000013f089a2a', 'copper', 0),
(484, 'steam:11000013f089a2a', 'fabric', 0),
(485, 'steam:11000013f089a2a', 'wool', 0),
(486, 'steam:11000013f089a2a', 'bag', 0),
(487, 'steam:11000013f089a2a', 'bread', 0),
(488, 'steam:11000013f089a2a', 'copper', 0),
(489, 'steam:11000013f089a2a', 'fabric', 0),
(490, 'steam:11000013f089a2a', 'wool', 0),
(491, 'steam:11000013f089a2a', 'bag', 0),
(492, 'steam:11000013f089a2a', 'vinr', 0),
(493, 'steam:11000013f089a2a', 'packaged_chicken', 0),
(494, 'steam:11000013f089a2a', 'slaughtered_chicken', 0),
(495, 'steam:11000013f089a2a', 'hamburger', 0),
(496, 'steam:11000013f089a2a', 'jus_raisin', 0),
(497, 'steam:11000013f089a2a', 'vinr', 0),
(498, 'steam:11000013f089a2a', 'packaged_chicken', 0),
(499, 'steam:11000013f089a2a', 'slaughtered_chicken', 0),
(500, 'steam:11000013f089a2a', 'hamburger', 0),
(501, 'steam:11000013f089a2a', 'jus_raisin', 0),
(502, 'steam:11000013f089a2a', 'coke_pooch', 0),
(503, 'steam:11000013f089a2a', 'fish', 0),
(504, 'steam:11000013f089a2a', 'raisin', 0),
(505, 'steam:11000013f089a2a', 'iron', 0),
(506, 'steam:11000013f089a2a', 'stone', 0),
(507, 'steam:11000013f089a2a', 'coke_pooch', 0),
(508, 'steam:11000013f089a2a', 'fish', 0),
(509, 'steam:11000013f089a2a', 'raisin', 0),
(510, 'steam:11000013f089a2a', 'iron', 0),
(511, 'steam:11000013f089a2a', 'stone', 0),
(512, 'steam:11000013f089a2a', 'grand_cru', 0),
(513, 'steam:11000013f089a2a', 'clothe', 0),
(514, 'steam:11000013f089a2a', 'essence', 0),
(515, 'steam:11000013f089a2a', 'opium', 0),
(516, 'steam:11000013f089a2a', 'wood', 0),
(517, 'steam:11000013f089a2a', 'grand_cru', 0),
(518, 'steam:11000013f089a2a', 'clothe', 0),
(519, 'steam:11000013f089a2a', 'essence', 0),
(520, 'steam:11000013f089a2a', 'opium', 0),
(521, 'steam:11000013f089a2a', 'wood', 0),
(522, 'steam:11000013f089a2a', 'weed_pooch', 0),
(523, 'steam:11000013f089a2a', 'medikit', 0),
(524, 'steam:11000013f089a2a', 'weed', 0),
(525, 'steam:11000013f089a2a', 'water', 0),
(526, 'steam:11000013f089a2a', 'washed_stone', 0),
(527, 'steam:11000013f089a2a', 'weed_pooch', 0),
(528, 'steam:11000013f089a2a', 'medikit', 0),
(529, 'steam:11000013f089a2a', 'weed', 0),
(530, 'steam:11000013f089a2a', 'water', 0),
(531, 'steam:11000013f089a2a', 'washed_stone', 0),
(532, 'steam:11000013f089a2a', 'packaged_plank', 0),
(533, 'steam:11000013f089a2a', 'gold', 0),
(534, 'steam:11000013f089a2a', 'vine', 0),
(535, 'steam:11000013f089a2a', 'meth_pooch', 0),
(536, 'steam:11000013f089a2a', 'icetea', 0),
(537, 'steam:11000013f089a2a', 'packaged_plank', 0),
(538, 'steam:11000013f089a2a', 'gold', 0),
(539, 'steam:11000013f089a2a', 'vine', 0),
(540, 'steam:11000013f089a2a', 'meth_pooch', 0),
(541, 'steam:11000013f089a2a', 'icetea', 0),
(542, 'steam:11000013f089a2a', 'petrol', 0),
(543, 'steam:11000013f089a2a', 'alive_chicken', 0),
(544, 'steam:11000013f089a2a', 'cutted_wood', 0),
(545, 'steam:11000013f089a2a', 'petrol_raffin', 0),
(546, 'steam:11000013f089a2a', 'sw', 0),
(547, 'steam:11000013f089a2a', 'petrol', 0),
(548, 'steam:11000013f089a2a', 'alive_chicken', 0),
(549, 'steam:11000013f089a2a', 'cutted_wood', 0),
(550, 'steam:11000013f089a2a', 'petrol_raffin', 0),
(551, 'steam:11000013f089a2a', 'sw', 0),
(552, 'steam:11000013f089a2a', 'meth', 0),
(553, 'steam:11000013f089a2a', 'meth', 0),
(554, 'steam:1100001438e7c0a', 'hamburger', 0),
(555, 'steam:1100001438e7c0a', 'meth_pooch', 0),
(556, 'steam:1100001438e7c0a', 'vine', 0),
(557, 'steam:1100001438e7c0a', 'washed_stone', 0),
(558, 'steam:1100001438e7c0a', 'weed', 0),
(559, 'steam:1100001438e7c0a', 'hamburger', 0),
(560, 'steam:1100001438e7c0a', 'meth_pooch', 0),
(561, 'steam:1100001438e7c0a', 'vine', 0),
(562, 'steam:1100001438e7c0a', 'washed_stone', 0),
(563, 'steam:1100001438e7c0a', 'weed', 0),
(564, 'steam:1100001438e7c0a', 'coke', 0),
(565, 'steam:1100001438e7c0a', 'jus_raisin', 0),
(566, 'steam:1100001438e7c0a', 'fabric', 0),
(567, 'steam:1100001438e7c0a', 'meth', 0),
(568, 'steam:1100001438e7c0a', 'vinr', 0),
(569, 'steam:1100001438e7c0a', 'coke', 0),
(570, 'steam:1100001438e7c0a', 'jus_raisin', 0),
(571, 'steam:1100001438e7c0a', 'fabric', 0),
(572, 'steam:1100001438e7c0a', 'meth', 0),
(573, 'steam:1100001438e7c0a', 'vinr', 0),
(574, 'steam:1100001438e7c0a', 'bag', 0),
(575, 'steam:1100001438e7c0a', 'cutted_wood', 0),
(576, 'steam:1100001438e7c0a', 'slaughtered_chicken', 0),
(577, 'steam:1100001438e7c0a', 'icetea', 0),
(578, 'steam:1100001438e7c0a', 'petrol_raffin', 0),
(579, 'steam:1100001438e7c0a', 'bag', 0),
(580, 'steam:1100001438e7c0a', 'cutted_wood', 0),
(581, 'steam:1100001438e7c0a', 'slaughtered_chicken', 0),
(582, 'steam:1100001438e7c0a', 'icetea', 0),
(583, 'steam:1100001438e7c0a', 'petrol_raffin', 0),
(584, 'steam:1100001438e7c0a', 'packaged_plank', 0),
(585, 'steam:1100001438e7c0a', 'clothe', 0),
(586, 'steam:1100001438e7c0a', 'opium_pooch', 0),
(587, 'steam:1100001438e7c0a', 'essence', 0),
(588, 'steam:1100001438e7c0a', 'copper', 0),
(589, 'steam:1100001438e7c0a', 'packaged_plank', 0),
(590, 'steam:1100001438e7c0a', 'clothe', 0),
(591, 'steam:1100001438e7c0a', 'opium_pooch', 0),
(592, 'steam:1100001438e7c0a', 'essence', 0),
(593, 'steam:1100001438e7c0a', 'copper', 0),
(594, 'steam:1100001438e7c0a', 'raisin', 0),
(595, 'steam:1100001438e7c0a', 'opium', 0),
(596, 'steam:1100001438e7c0a', 'diamond', 0),
(597, 'steam:1100001438e7c0a', 'alive_chicken', 0),
(598, 'steam:1100001438e7c0a', 'medikit', 0),
(599, 'steam:1100001438e7c0a', 'raisin', 0),
(600, 'steam:1100001438e7c0a', 'opium', 0),
(601, 'steam:1100001438e7c0a', 'diamond', 0),
(602, 'steam:1100001438e7c0a', 'alive_chicken', 0),
(603, 'steam:1100001438e7c0a', 'medikit', 0),
(604, 'steam:1100001438e7c0a', 'wool', 0),
(605, 'steam:1100001438e7c0a', 'bandage', 0),
(606, 'steam:1100001438e7c0a', 'iron', 0),
(607, 'steam:1100001438e7c0a', 'weed_pooch', 0),
(608, 'steam:1100001438e7c0a', 'packaged_chicken', 0),
(609, 'steam:1100001438e7c0a', 'wool', 0),
(610, 'steam:1100001438e7c0a', 'bandage', 0),
(611, 'steam:1100001438e7c0a', 'iron', 0),
(612, 'steam:1100001438e7c0a', 'weed_pooch', 0),
(613, 'steam:1100001438e7c0a', 'packaged_chicken', 0),
(614, 'steam:1100001438e7c0a', 'grand_cru', 0),
(615, 'steam:1100001438e7c0a', 'gps', 0),
(616, 'steam:1100001438e7c0a', 'water', 0),
(617, 'steam:1100001438e7c0a', 'sw', 0),
(618, 'steam:1100001438e7c0a', 'gold', 0),
(619, 'steam:1100001438e7c0a', 'grand_cru', 0),
(620, 'steam:1100001438e7c0a', 'gps', 0),
(621, 'steam:1100001438e7c0a', 'water', 0),
(622, 'steam:1100001438e7c0a', 'sw', 0),
(623, 'steam:1100001438e7c0a', 'gold', 0),
(624, 'steam:1100001438e7c0a', 'stone', 0),
(625, 'steam:1100001438e7c0a', 'wood', 0),
(626, 'steam:1100001438e7c0a', 'bread', 0),
(627, 'steam:1100001438e7c0a', 'petrol', 0),
(628, 'steam:1100001438e7c0a', 'coke_pooch', 0),
(629, 'steam:1100001438e7c0a', 'stone', 0),
(630, 'steam:1100001438e7c0a', 'wood', 0),
(631, 'steam:1100001438e7c0a', 'bread', 0),
(632, 'steam:1100001438e7c0a', 'petrol', 0),
(633, 'steam:1100001438e7c0a', 'coke_pooch', 0),
(634, 'steam:1100001438e7c0a', 'fish', 0),
(635, 'steam:1100001438e7c0a', 'fish', 0),
(636, 'steam:1100001329e1807', 'champagne', 0),
(637, 'steam:1100001329e1807', 'champagne', 0),
(638, 'steam:1100001329e1807', 'compo', 0),
(639, 'steam:1100001329e1807', 'cles', 0),
(640, 'steam:11000013d0f8906', 'water', 0),
(641, 'steam:11000013d0f8906', 'coke', 0),
(642, 'steam:11000013d0f8906', 'hamburger', 0),
(643, 'steam:11000013d0f8906', 'fabric', 0),
(644, 'steam:11000013d0f8906', 'meth', 0),
(645, 'steam:11000013d0f8906', 'water', 0),
(646, 'steam:11000013d0f8906', 'coke', 0),
(647, 'steam:11000013d0f8906', 'hamburger', 0),
(648, 'steam:11000013d0f8906', 'fabric', 0),
(649, 'steam:11000013d0f8906', 'meth', 0),
(650, 'steam:11000013d0f8906', 'petrol_raffin', 0),
(651, 'steam:11000013d0f8906', 'clothe', 0),
(652, 'steam:11000013d0f8906', 'stone', 0),
(653, 'steam:11000013d0f8906', 'diamond', 0),
(654, 'steam:11000013d0f8906', 'wool', 0),
(655, 'steam:11000013d0f8906', 'petrol_raffin', 0),
(656, 'steam:11000013d0f8906', 'clothe', 0),
(657, 'steam:11000013d0f8906', 'stone', 0),
(658, 'steam:11000013d0f8906', 'diamond', 0),
(659, 'steam:11000013d0f8906', 'wool', 0),
(660, 'steam:11000013d0f8906', 'meth_pooch', 0),
(661, 'steam:11000013d0f8906', 'fish', 0),
(662, 'steam:11000013d0f8906', 'washed_stone', 0),
(663, 'steam:11000013d0f8906', 'bandage', 0),
(664, 'steam:11000013d0f8906', 'champagne', 0),
(665, 'steam:11000013d0f8906', 'meth_pooch', 0),
(666, 'steam:11000013d0f8906', 'fish', 0),
(667, 'steam:11000013d0f8906', 'washed_stone', 0),
(668, 'steam:11000013d0f8906', 'bandage', 0),
(669, 'steam:11000013d0f8906', 'champagne', 0),
(670, 'steam:11000013d0f8906', 'slaughtered_chicken', 0),
(671, 'steam:11000013d0f8906', 'coke_pooch', 0),
(672, 'steam:11000013d0f8906', 'gps', 0),
(673, 'steam:11000013d0f8906', 'gold', 0),
(674, 'steam:11000013d0f8906', 'copper', 0),
(675, 'steam:11000013d0f8906', 'slaughtered_chicken', 0),
(676, 'steam:11000013d0f8906', 'coke_pooch', 0),
(677, 'steam:11000013d0f8906', 'gps', 0),
(678, 'steam:11000013d0f8906', 'gold', 0),
(679, 'steam:11000013d0f8906', 'copper', 0),
(680, 'steam:11000013d0f8906', 'grand_cru', 0),
(681, 'steam:11000013d0f8906', 'wood', 0),
(682, 'steam:11000013d0f8906', 'weed_pooch', 0),
(683, 'steam:11000013d0f8906', 'weed', 0),
(684, 'steam:11000013d0f8906', 'vinr', 0),
(685, 'steam:11000013d0f8906', 'grand_cru', 0),
(686, 'steam:11000013d0f8906', 'wood', 0),
(687, 'steam:11000013d0f8906', 'weed_pooch', 0),
(688, 'steam:11000013d0f8906', 'weed', 0),
(689, 'steam:11000013d0f8906', 'vinr', 0),
(690, 'steam:11000013d0f8906', 'vine', 0),
(691, 'steam:11000013d0f8906', 'sw', 0),
(692, 'steam:11000013d0f8906', 'raisin', 0),
(693, 'steam:11000013d0f8906', 'essence', 0),
(694, 'steam:11000013d0f8906', 'alive_chicken', 0),
(695, 'steam:11000013d0f8906', 'vine', 0),
(696, 'steam:11000013d0f8906', 'sw', 0),
(697, 'steam:11000013d0f8906', 'raisin', 0),
(698, 'steam:11000013d0f8906', 'essence', 0),
(699, 'steam:11000013d0f8906', 'alive_chicken', 0),
(700, 'steam:11000013d0f8906', 'opium_pooch', 0),
(701, 'steam:11000013d0f8906', 'medikit', 0),
(702, 'steam:11000013d0f8906', 'compo', 0),
(703, 'steam:11000013d0f8906', 'jus_raisin', 0),
(704, 'steam:11000013d0f8906', 'packaged_plank', 0),
(705, 'steam:11000013d0f8906', 'opium_pooch', 0),
(706, 'steam:11000013d0f8906', 'medikit', 0),
(707, 'steam:11000013d0f8906', 'compo', 0),
(708, 'steam:11000013d0f8906', 'jus_raisin', 0),
(709, 'steam:11000013d0f8906', 'packaged_plank', 0),
(710, 'steam:11000013d0f8906', 'cles', 0),
(711, 'steam:11000013d0f8906', 'icetea', 0),
(712, 'steam:11000013d0f8906', 'iron', 0),
(713, 'steam:11000013d0f8906', 'petrol', 0),
(714, 'steam:11000013d0f8906', 'cutted_wood', 0),
(715, 'steam:11000013d0f8906', 'cles', 0),
(716, 'steam:11000013d0f8906', 'icetea', 0),
(717, 'steam:11000013d0f8906', 'iron', 0),
(718, 'steam:11000013d0f8906', 'petrol', 0),
(719, 'steam:11000013d0f8906', 'cutted_wood', 0),
(720, 'steam:11000013d0f8906', 'packaged_chicken', 0),
(721, 'steam:11000013d0f8906', 'opium', 0),
(722, 'steam:11000013d0f8906', 'bag', 0),
(723, 'steam:11000013d0f8906', 'bread', 0),
(724, 'steam:11000013d0f8906', 'packaged_chicken', 0),
(725, 'steam:11000013d0f8906', 'opium', 0),
(726, 'steam:11000013d0f8906', 'bag', 0),
(727, 'steam:11000013d0f8906', 'bread', 0),
(728, 'steam:1100001454ba550', 'grand_cru', 0),
(729, 'steam:1100001454ba550', 'bag', 0),
(730, 'steam:1100001454ba550', 'packaged_chicken', 0),
(731, 'steam:1100001454ba550', 'meth', 0),
(732, 'steam:1100001454ba550', 'icetea', 0),
(733, 'steam:1100001454ba550', 'grand_cru', 0),
(734, 'steam:1100001454ba550', 'bag', 0),
(735, 'steam:1100001454ba550', 'packaged_chicken', 0),
(736, 'steam:1100001454ba550', 'meth', 0),
(737, 'steam:1100001454ba550', 'icetea', 0),
(738, 'steam:1100001454ba550', 'champagne', 1),
(739, 'steam:1100001454ba550', 'opium', 0),
(740, 'steam:1100001454ba550', 'petrol', 0),
(741, 'steam:1100001454ba550', 'opium_pooch', 0),
(742, 'steam:1100001454ba550', 'coke_pooch', 0),
(743, 'steam:1100001454ba550', 'champagne', 1),
(744, 'steam:1100001454ba550', 'opium', 0),
(745, 'steam:1100001454ba550', 'petrol', 0),
(746, 'steam:1100001454ba550', 'opium_pooch', 0),
(747, 'steam:1100001454ba550', 'coke_pooch', 0),
(748, 'steam:1100001454ba550', 'iron', 0),
(749, 'steam:1100001454ba550', 'fabric', 0),
(750, 'steam:1100001454ba550', 'wool', 0),
(751, 'steam:1100001454ba550', 'essence', 0),
(752, 'steam:1100001454ba550', 'wood', 0),
(753, 'steam:1100001454ba550', 'iron', 0),
(754, 'steam:1100001454ba550', 'fabric', 0),
(755, 'steam:1100001454ba550', 'wool', 0),
(756, 'steam:1100001454ba550', 'essence', 0),
(757, 'steam:1100001454ba550', 'wood', 0),
(758, 'steam:1100001454ba550', 'clothe', 0),
(759, 'steam:1100001454ba550', 'gps', 0),
(760, 'steam:1100001454ba550', 'alive_chicken', 0),
(761, 'steam:1100001454ba550', 'medikit', 0),
(762, 'steam:1100001454ba550', 'weed_pooch', 0),
(763, 'steam:1100001454ba550', 'clothe', 0),
(764, 'steam:1100001454ba550', 'gps', 0),
(765, 'steam:1100001454ba550', 'alive_chicken', 0),
(766, 'steam:1100001454ba550', 'medikit', 0),
(767, 'steam:1100001454ba550', 'weed_pooch', 0),
(768, 'steam:1100001454ba550', 'diamond', 0),
(769, 'steam:1100001454ba550', 'gold', 0),
(770, 'steam:1100001454ba550', 'weed', 0),
(771, 'steam:1100001454ba550', 'cles', 0),
(772, 'steam:1100001454ba550', 'compo', 0),
(773, 'steam:1100001454ba550', 'diamond', 0),
(774, 'steam:1100001454ba550', 'gold', 0),
(775, 'steam:1100001454ba550', 'weed', 0),
(776, 'steam:1100001454ba550', 'cles', 0),
(777, 'steam:1100001454ba550', 'compo', 0),
(778, 'steam:1100001454ba550', 'coke', 0),
(779, 'steam:1100001454ba550', 'water', 1),
(780, 'steam:1100001454ba550', 'hamburger', 0),
(781, 'steam:1100001454ba550', 'slaughtered_chicken', 0),
(782, 'steam:1100001454ba550', 'copper', 0),
(783, 'steam:1100001454ba550', 'coke', 0),
(784, 'steam:1100001454ba550', 'water', 1),
(785, 'steam:1100001454ba550', 'hamburger', 0),
(786, 'steam:1100001454ba550', 'slaughtered_chicken', 0),
(787, 'steam:1100001454ba550', 'copper', 0),
(788, 'steam:1100001454ba550', 'washed_stone', 0),
(789, 'steam:1100001454ba550', 'bandage', 0),
(790, 'steam:1100001454ba550', 'vinr', 0),
(791, 'steam:1100001454ba550', 'vine', 0),
(792, 'steam:1100001454ba550', 'sw', 0),
(793, 'steam:1100001454ba550', 'washed_stone', 0),
(794, 'steam:1100001454ba550', 'bandage', 0),
(795, 'steam:1100001454ba550', 'vinr', 0),
(796, 'steam:1100001454ba550', 'vine', 0),
(797, 'steam:1100001454ba550', 'sw', 0),
(798, 'steam:1100001454ba550', 'stone', 0),
(799, 'steam:1100001454ba550', 'cutted_wood', 0),
(800, 'steam:1100001454ba550', 'fish', 0),
(801, 'steam:1100001454ba550', 'bread', 0),
(802, 'steam:1100001454ba550', 'petrol_raffin', 0),
(803, 'steam:1100001454ba550', 'stone', 0),
(804, 'steam:1100001454ba550', 'cutted_wood', 0),
(805, 'steam:1100001454ba550', 'fish', 0),
(806, 'steam:1100001454ba550', 'bread', 0),
(807, 'steam:1100001454ba550', 'petrol_raffin', 0),
(808, 'steam:1100001454ba550', 'packaged_plank', 0),
(809, 'steam:1100001454ba550', 'raisin', 0),
(810, 'steam:1100001454ba550', 'meth_pooch', 0),
(811, 'steam:1100001454ba550', 'jus_raisin', 0),
(812, 'steam:1100001454ba550', 'packaged_plank', 0),
(813, 'steam:1100001454ba550', 'raisin', 0),
(814, 'steam:1100001454ba550', 'meth_pooch', 0),
(815, 'steam:1100001454ba550', 'jus_raisin', 0),
(816, 'steam:110000144de223c', 'grand_cru', 0),
(817, 'steam:110000144de223c', 'bag', 0),
(818, 'steam:110000144de223c', 'packaged_chicken', 0),
(819, 'steam:110000144de223c', 'meth', 0),
(820, 'steam:110000144de223c', 'icetea', 0),
(821, 'steam:110000144de223c', 'grand_cru', 0),
(822, 'steam:110000144de223c', 'bag', 0),
(823, 'steam:110000144de223c', 'packaged_chicken', 0),
(824, 'steam:110000144de223c', 'meth', 0),
(825, 'steam:110000144de223c', 'icetea', 0),
(826, 'steam:110000144de223c', 'champagne', 0),
(827, 'steam:110000144de223c', 'opium', 0),
(828, 'steam:110000144de223c', 'petrol', 0),
(829, 'steam:110000144de223c', 'opium_pooch', 0),
(830, 'steam:110000144de223c', 'coke_pooch', 0),
(831, 'steam:110000144de223c', 'champagne', 0),
(832, 'steam:110000144de223c', 'opium', 0),
(833, 'steam:110000144de223c', 'petrol', 0),
(834, 'steam:110000144de223c', 'opium_pooch', 0),
(835, 'steam:110000144de223c', 'coke_pooch', 0),
(836, 'steam:110000144de223c', 'iron', 0),
(837, 'steam:110000144de223c', 'fabric', 0),
(838, 'steam:110000144de223c', 'wool', 0),
(839, 'steam:110000144de223c', 'essence', 0),
(840, 'steam:110000144de223c', 'wood', 0),
(841, 'steam:110000144de223c', 'iron', 0),
(842, 'steam:110000144de223c', 'fabric', 0),
(843, 'steam:110000144de223c', 'wool', 0),
(844, 'steam:110000144de223c', 'essence', 0),
(845, 'steam:110000144de223c', 'wood', 0),
(846, 'steam:110000144de223c', 'clothe', 0),
(847, 'steam:110000144de223c', 'gps', 0),
(848, 'steam:110000144de223c', 'alive_chicken', 0),
(849, 'steam:110000144de223c', 'medikit', 0),
(850, 'steam:110000144de223c', 'weed_pooch', 0),
(851, 'steam:110000144de223c', 'clothe', 0),
(852, 'steam:110000144de223c', 'gps', 0),
(853, 'steam:110000144de223c', 'alive_chicken', 0),
(854, 'steam:110000144de223c', 'medikit', 0),
(855, 'steam:110000144de223c', 'weed_pooch', 0),
(856, 'steam:110000144de223c', 'diamond', 0),
(857, 'steam:110000144de223c', 'gold', 0),
(858, 'steam:110000144de223c', 'weed', 0),
(859, 'steam:110000144de223c', 'cles', 0),
(860, 'steam:110000144de223c', 'compo', 0),
(861, 'steam:110000144de223c', 'diamond', 0),
(862, 'steam:110000144de223c', 'gold', 0),
(863, 'steam:110000144de223c', 'weed', 0),
(864, 'steam:110000144de223c', 'cles', 0),
(865, 'steam:110000144de223c', 'compo', 0),
(866, 'steam:110000144de223c', 'coke', 0),
(867, 'steam:110000144de223c', 'water', 0),
(868, 'steam:110000144de223c', 'hamburger', 0),
(869, 'steam:110000144de223c', 'slaughtered_chicken', 0),
(870, 'steam:110000144de223c', 'copper', 0),
(871, 'steam:110000144de223c', 'coke', 0),
(872, 'steam:110000144de223c', 'water', 0),
(873, 'steam:110000144de223c', 'hamburger', 0),
(874, 'steam:110000144de223c', 'slaughtered_chicken', 0),
(875, 'steam:110000144de223c', 'copper', 0),
(876, 'steam:110000144de223c', 'washed_stone', 0),
(877, 'steam:110000144de223c', 'bandage', 0),
(878, 'steam:110000144de223c', 'vinr', 0),
(879, 'steam:110000144de223c', 'vine', 0),
(880, 'steam:110000144de223c', 'sw', 0),
(881, 'steam:110000144de223c', 'washed_stone', 0),
(882, 'steam:110000144de223c', 'bandage', 0),
(883, 'steam:110000144de223c', 'vinr', 0),
(884, 'steam:110000144de223c', 'vine', 0),
(885, 'steam:110000144de223c', 'sw', 0),
(886, 'steam:110000144de223c', 'stone', 0),
(887, 'steam:110000144de223c', 'cutted_wood', 0),
(888, 'steam:110000144de223c', 'fish', 0),
(889, 'steam:110000144de223c', 'bread', 1),
(890, 'steam:110000144de223c', 'petrol_raffin', 0),
(891, 'steam:110000144de223c', 'stone', 0),
(892, 'steam:110000144de223c', 'cutted_wood', 0),
(893, 'steam:110000144de223c', 'bread', 1),
(894, 'steam:110000144de223c', 'fish', 0),
(895, 'steam:110000144de223c', 'petrol_raffin', 0),
(896, 'steam:110000144de223c', 'packaged_plank', 0),
(897, 'steam:110000144de223c', 'raisin', 0),
(898, 'steam:110000144de223c', 'meth_pooch', 0),
(899, 'steam:110000144de223c', 'packaged_plank', 0),
(900, 'steam:110000144de223c', 'raisin', 0),
(901, 'steam:110000144de223c', 'jus_raisin', 0),
(902, 'steam:110000144de223c', 'meth_pooch', 0),
(903, 'steam:110000144de223c', 'jus_raisin', 0),
(904, 'steam:1100001329e1807', 'clip', 11),
(905, 'steam:1100001329e1807', 'clip', 11),
(906, 'steam:1100001329e1807', 'keys_master_key_single_use', 0),
(907, 'steam:1100001329e1807', 'keys_missionrow_pd_front', 0),
(908, 'steam:1100001329e1807', 'keys_master_key', 0),
(909, 'steam:1100001415ae8d2', 'raisin', 0),
(910, 'steam:1100001415ae8d2', 'meth', 0),
(911, 'steam:1100001415ae8d2', 'sw', 0),
(912, 'steam:1100001415ae8d2', 'bag', 0),
(913, 'steam:1100001415ae8d2', 'stone', 0),
(914, 'steam:1100001415ae8d2', 'raisin', 0),
(915, 'steam:1100001415ae8d2', 'meth', 0),
(916, 'steam:1100001415ae8d2', 'sw', 0),
(917, 'steam:1100001415ae8d2', 'bag', 0),
(918, 'steam:1100001415ae8d2', 'stone', 0),
(919, 'steam:1100001415ae8d2', 'wool', 0),
(920, 'steam:1100001415ae8d2', 'diamond', 0),
(921, 'steam:1100001415ae8d2', 'fabric', 0),
(922, 'steam:1100001415ae8d2', 'alive_chicken', 0),
(923, 'steam:1100001415ae8d2', 'petrol_raffin', 0),
(924, 'steam:1100001415ae8d2', 'wool', 0),
(925, 'steam:1100001415ae8d2', 'diamond', 0),
(926, 'steam:1100001415ae8d2', 'fabric', 0),
(927, 'steam:1100001415ae8d2', 'alive_chicken', 0),
(928, 'steam:1100001415ae8d2', 'petrol_raffin', 0),
(929, 'steam:1100001415ae8d2', 'clothe', 0),
(930, 'steam:1100001415ae8d2', 'gps', 0),
(931, 'steam:1100001415ae8d2', 'keys_missionrow_pd_front', 0),
(932, 'steam:1100001415ae8d2', 'packaged_plank', 0),
(933, 'steam:1100001415ae8d2', 'grand_cru', 0),
(934, 'steam:1100001415ae8d2', 'clothe', 0),
(935, 'steam:1100001415ae8d2', 'gps', 0),
(936, 'steam:1100001415ae8d2', 'packaged_plank', 0),
(937, 'steam:1100001415ae8d2', 'keys_missionrow_pd_front', 0),
(938, 'steam:1100001415ae8d2', 'grand_cru', 0),
(939, 'steam:1100001415ae8d2', 'bandage', 0),
(940, 'steam:1100001415ae8d2', 'compo', 0),
(941, 'steam:1100001415ae8d2', 'coke_pooch', 0),
(942, 'steam:1100001415ae8d2', 'iron', 0),
(943, 'steam:1100001415ae8d2', 'cles', 0),
(944, 'steam:1100001415ae8d2', 'bandage', 0),
(945, 'steam:1100001415ae8d2', 'compo', 0),
(946, 'steam:1100001415ae8d2', 'coke_pooch', 0),
(947, 'steam:1100001415ae8d2', 'iron', 0),
(948, 'steam:1100001415ae8d2', 'cles', 0),
(949, 'steam:1100001415ae8d2', 'essence', 0),
(950, 'steam:1100001415ae8d2', 'champagne', 3),
(951, 'steam:1100001415ae8d2', 'wood', 0),
(952, 'steam:1100001415ae8d2', 'coke', 0),
(953, 'steam:1100001415ae8d2', 'weed_pooch', 0),
(954, 'steam:1100001415ae8d2', 'essence', 0),
(955, 'steam:1100001415ae8d2', 'champagne', 3),
(956, 'steam:1100001415ae8d2', 'wood', 0),
(957, 'steam:1100001415ae8d2', 'coke', 0),
(958, 'steam:1100001415ae8d2', 'weed_pooch', 0),
(959, 'steam:1100001415ae8d2', 'weed', 0),
(960, 'steam:1100001415ae8d2', 'water', 0),
(961, 'steam:1100001415ae8d2', 'washed_stone', 0),
(962, 'steam:1100001415ae8d2', 'opium', 0),
(963, 'steam:1100001415ae8d2', 'slaughtered_chicken', 0),
(964, 'steam:1100001415ae8d2', 'weed', 0),
(965, 'steam:1100001415ae8d2', 'water', 0),
(966, 'steam:1100001415ae8d2', 'washed_stone', 0),
(967, 'steam:1100001415ae8d2', 'opium', 0),
(968, 'steam:1100001415ae8d2', 'slaughtered_chicken', 0),
(969, 'steam:1100001415ae8d2', 'vinr', 0),
(970, 'steam:1100001415ae8d2', 'keys_master_key', 0),
(971, 'steam:1100001415ae8d2', 'vine', 0),
(972, 'steam:1100001415ae8d2', 'petrol', 0),
(973, 'steam:1100001415ae8d2', 'gold', 0),
(974, 'steam:1100001415ae8d2', 'vinr', 0),
(975, 'steam:1100001415ae8d2', 'keys_master_key', 0),
(976, 'steam:1100001415ae8d2', 'vine', 0),
(977, 'steam:1100001415ae8d2', 'petrol', 0),
(978, 'steam:1100001415ae8d2', 'gold', 0),
(979, 'steam:1100001415ae8d2', 'keys_master_key_single_use', 0),
(980, 'steam:1100001415ae8d2', 'packaged_chicken', 0),
(981, 'steam:1100001415ae8d2', 'meth_pooch', 0),
(982, 'steam:1100001415ae8d2', 'jus_raisin', 0),
(983, 'steam:1100001415ae8d2', 'opium_pooch', 0),
(984, 'steam:1100001415ae8d2', 'keys_master_key_single_use', 0),
(985, 'steam:1100001415ae8d2', 'packaged_chicken', 0),
(986, 'steam:1100001415ae8d2', 'meth_pooch', 0),
(987, 'steam:1100001415ae8d2', 'jus_raisin', 0),
(988, 'steam:1100001415ae8d2', 'opium_pooch', 0),
(989, 'steam:1100001415ae8d2', 'bread', 0),
(990, 'steam:1100001415ae8d2', 'medikit', 0),
(991, 'steam:1100001415ae8d2', 'copper', 0),
(992, 'steam:1100001415ae8d2', 'hamburger', 0),
(993, 'steam:1100001415ae8d2', 'fish', 0),
(994, 'steam:1100001415ae8d2', 'bread', 0),
(995, 'steam:1100001415ae8d2', 'medikit', 0),
(996, 'steam:1100001415ae8d2', 'copper', 0),
(997, 'steam:1100001415ae8d2', 'hamburger', 0),
(998, 'steam:1100001415ae8d2', 'fish', 0),
(999, 'steam:1100001415ae8d2', 'icetea', 0),
(1000, 'steam:1100001415ae8d2', 'cutted_wood', 0),
(1001, 'steam:1100001415ae8d2', 'icetea', 0),
(1002, 'steam:1100001415ae8d2', 'cutted_wood', 0),
(1003, 'steam:1100001329e1807', 'kevlar', 0),
(1004, 'steam:1100001329e1807', 'kevlar', 0),
(1005, 'steam:110000144de223c', 'keys_missionrow_pd_front', 0),
(1006, 'steam:110000144de223c', 'keys_master_key_single_use', 0),
(1007, 'steam:110000144de223c', 'kevlar', 0),
(1008, 'steam:110000144de223c', 'keys_master_key', 0),
(1009, 'steam:1100001454ba550', 'keys_missionrow_pd_front', 0),
(1010, 'steam:1100001454ba550', 'keys_master_key', 0),
(1011, 'steam:1100001454ba550', 'keys_master_key_single_use', 0),
(1012, 'steam:1100001454ba550', 'kevlar', 0),
(1013, 'steam:1100001454ba550', 'keys_missionrow_pd_front', 0),
(1014, 'steam:1100001454ba550', 'keys_master_key', 0),
(1015, 'steam:1100001454ba550', 'keys_master_key_single_use', 0),
(1016, 'steam:1100001454ba550', 'kevlar', 0),
(1017, 'steam:1100001329e1807', 'sim', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_sold`
--

INSERT INTO `vehicle_sold` (`client`, `model`, `plate`, `soldby`, `date`) VALUES
('DRS', 'Brioso R/A', 'BPN 534', 'Lucas', '2021-05-24 18:48'),
('Matsukito', 'Brioso R/A', 'TDI 736', 'Lucas', '2021-05-23 23:26'),
('DRS', 'Voltic 2', 'UIW 157', 'Lucas', '2021-05-24 18:49'),
('DRS', 'Cognoscenti Cabrio', 'VQF 839', 'Lucas', '2021-05-24 18:48');

-- --------------------------------------------------------

--
-- Structure de la table `yellowpages_posts`
--

CREATE TABLE `yellowpages_posts` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `bike_categories`
--
ALTER TABLE `bike_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `crew_phone_bank`
--
ALTER TABLE `crew_phone_bank`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `crew_phone_news`
--
ALTER TABLE `crew_phone_news`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `doors`
--
ALTER TABLE `doors`
  ADD KEY `index` (`index`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `motor_sold`
--
ALTER TABLE `motor_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_motor`
--
ALTER TABLE `rented_motor`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `truck_inventory2`
--
ALTER TABLE `truck_inventory2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_yellowpages_posts_twitter_accounts` (`authorId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `crew_phone_bank`
--
ALTER TABLE `crew_phone_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `crew_phone_news`
--
ALTER TABLE `crew_phone_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `doors`
--
ALTER TABLE `doors`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16291;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45219;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `truck_inventory2`
--
ALTER TABLE `truck_inventory2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);

--
-- Contraintes pour la table `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD CONSTRAINT `FK_yellowpages_posts_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
