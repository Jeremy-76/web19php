-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 09 déc. 2020 à 20:25
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cesiblog`
--
CREATE DATABASE IF NOT EXISTS `cesiblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cesiblog`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `Id` bigint(20) NOT NULL,
  `Titre` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `DateAjout` date DEFAULT NULL,
  `Auteur` varchar(50) DEFAULT NULL,
  `imageRepository` varchar(50) DEFAULT NULL,
  `imageFileName` varchar(255) DEFAULT NULL,
  `categorie_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`Id`, `Titre`, `Description`, `DateAjout`, `Auteur`, `imageRepository`, `imageFileName`, `categorie_id`) VALUES
(2, 'Fabien', '            Ceci est une excellent description\r\n        ', '2020-09-27', 'Alexandre', NULL, NULL, NULL),
(3, 'Clément', 'Ceci est une excellent description', '2020-09-28', 'PHP', NULL, NULL, NULL),
(4, 'Clément', 'Ceci est une excellent description', '2020-09-29', 'CSS', NULL, NULL, NULL),
(5, 'Fabien', 'Ceci est une excellent description', '2020-09-30', 'JOOMLA', NULL, NULL, NULL),
(6, 'Marie', 'Ceci est une excellent description', '2020-10-01', 'HTML', NULL, NULL, NULL),
(7, 'Marie', 'Ceci est une excellent description', '2020-10-02', 'WORDPRESS', NULL, NULL, NULL),
(8, 'Benoit', 'Ceci est une excellent description', '2020-10-03', 'PHP', NULL, NULL, NULL),
(9, 'Clément', 'Ceci est une excellent description', '2020-10-04', 'HTML', NULL, NULL, NULL),
(10, 'Emmanuel', 'Ceci est une excellent description', '2020-10-05', 'CSS', NULL, NULL, NULL),
(11, 'Clément', 'Ceci est une excellent description', '2020-10-06', 'JOOMLA', NULL, NULL, NULL),
(12, 'Fabien', 'Ceci est une excellent description', '2020-10-07', 'CSS', NULL, NULL, NULL),
(13, 'Emmanuel', 'Ceci est une excellent description', '2020-10-08', 'CSS', NULL, NULL, NULL),
(14, 'Fabien', 'Ceci est une excellent description', '2020-10-09', 'JAVASCRIPT', NULL, NULL, NULL),
(15, 'Benoit', 'Ceci est une excellent description', '2020-10-10', 'CSS', NULL, NULL, NULL),
(16, 'Emmanuel', 'Ceci est une excellent description', '2020-10-11', 'HTML', NULL, NULL, NULL),
(17, 'Brice', 'Ceci est une excellent description', '2020-10-12', 'HTML', NULL, NULL, NULL),
(18, 'Benoit', 'Ceci est une excellent description', '2020-10-13', 'HTML', NULL, NULL, NULL),
(19, 'Brice', 'Ceci est une excellent description', '2020-10-14', 'WORDPRESS', NULL, NULL, NULL),
(20, 'Brice', 'Ceci est une excellent description', '2020-10-15', 'CSS', NULL, NULL, NULL),
(21, 'Marie', 'Ceci est une excellent description', '2020-10-16', 'HTML', NULL, NULL, NULL),
(22, 'Clément', 'Ceci est une excellent description', '2020-10-17', 'WORDPRESS', NULL, NULL, NULL),
(23, 'Emmanuel', 'Ceci est une excellent description', '2020-10-18', 'HTML', NULL, NULL, NULL),
(24, 'Emmanuel', 'Ceci est une excellent description', '2020-10-19', 'JOOMLA', NULL, NULL, NULL),
(25, 'Fabien', 'Ceci est une excellent description', '2020-10-20', 'CSS', NULL, NULL, NULL),
(26, 'Fabien', 'Ceci est une excellent description', '2020-10-21', 'PHP', NULL, NULL, NULL),
(27, 'Marie', 'Ceci est une excellent description', '2020-10-22', 'HTML', NULL, NULL, NULL),
(28, 'Marie', 'Ceci est une excellent description', '2020-10-23', 'WORDPRESS', NULL, NULL, NULL),
(29, 'Benoit', 'Ceci est une excellent description', '2020-10-24', 'JOOMLA', NULL, NULL, NULL),
(30, 'Marie', 'Ceci est une excellent description', '2020-10-25', 'JOOMLA', NULL, NULL, NULL),
(31, 'Fabien', 'Ceci est une excellent description', '2020-10-26', 'CSS', NULL, NULL, NULL),
(32, 'Clément', 'Ceci est une excellent description', '2020-10-27', 'HTML', NULL, NULL, NULL),
(33, 'Emmanuel', 'Ceci est une excellent description', '2020-10-28', 'JAVASCRIPT', NULL, NULL, NULL),
(34, 'Benoit', 'Ceci est une excellent description', '2020-10-29', 'WORDPRESS', NULL, NULL, NULL),
(35, 'Fabien', 'Ceci est une excellent description', '2020-10-30', 'JAVASCRIPT', NULL, NULL, NULL),
(36, 'Benoit', 'Ceci est une excellent description', '2020-10-31', 'JAVASCRIPT', NULL, NULL, NULL),
(37, 'Fabien', 'Ceci est une excellent description', '2020-11-01', 'JAVASCRIPT', NULL, NULL, NULL),
(38, 'Brice', 'Ceci est une excellent description', '2020-11-02', 'HTML', NULL, NULL, NULL),
(39, 'Benoit', 'Ceci est une excellent description', '2020-11-03', 'WORDPRESS', NULL, NULL, NULL),
(40, 'Emmanuel', 'Ceci est une excellent description', '2020-11-04', 'PHP', NULL, NULL, NULL),
(41, 'Brice', 'Ceci est une excellent description', '2020-11-05', 'JOOMLA', NULL, NULL, NULL),
(42, 'Brice', 'Ceci est une excellent description', '2020-11-06', 'HTML', NULL, NULL, NULL),
(43, 'Emmanuel', 'Ceci est une excellent description', '2020-11-07', 'PHP', NULL, NULL, NULL),
(44, 'Emmanuel', 'Ceci est une excellent description', '2020-11-08', 'HTML', NULL, NULL, NULL),
(45, 'Benoit', 'Ceci est une excellent description', '2020-11-09', 'HTML', NULL, NULL, NULL),
(46, 'Emmanuel', 'Ceci est une excellent description', '2020-11-10', 'PHP', NULL, NULL, NULL),
(47, 'Emmanuel', 'Ceci est une excellent description', '2020-11-11', 'JOOMLA', NULL, NULL, NULL),
(48, 'Marie', 'Ceci est une excellent description', '2020-11-12', 'CSS', NULL, NULL, NULL),
(49, 'Brice', 'Ceci est une excellent description', '2020-11-13', 'CSS', NULL, NULL, NULL),
(50, 'Fabien', 'Ceci est une excellent description', '2020-11-14', 'CSS', NULL, NULL, NULL),
(51, 'Brice', 'Ceci est une excellent description', '2020-11-15', 'JOOMLA', NULL, NULL, NULL),
(52, 'Brice', 'Ceci est une excellent description', '2020-11-16', 'HTML', NULL, NULL, NULL),
(53, 'Emmanuel', 'Ceci est une excellent description', '2020-11-17', 'CSS', NULL, NULL, NULL),
(54, 'Clément', 'Ceci est une excellent description', '2020-11-18', 'HTML', NULL, NULL, NULL),
(55, 'Marie', 'Ceci est une excellent description', '2020-11-19', 'HTML', NULL, NULL, NULL),
(56, 'Brice', 'Ceci est une excellent description', '2020-11-20', 'CSS', NULL, NULL, NULL),
(57, 'Marie', 'Ceci est une excellent description', '2020-11-21', 'WORDPRESS', NULL, NULL, NULL),
(58, 'Fabien', 'Ceci est une excellent description', '2020-11-22', 'JAVASCRIPT', NULL, NULL, NULL),
(59, 'Clément', 'Ceci est une excellent description', '2020-11-23', 'JOOMLA', NULL, NULL, NULL),
(60, 'Brice', 'Ceci est une excellent description', '2020-11-24', 'JAVASCRIPT', NULL, NULL, NULL),
(61, 'Brice', 'Ceci est une excellent description', '2020-11-25', 'CSS', NULL, NULL, NULL),
(62, 'Brice', 'Ceci est une excellent description', '2020-11-26', 'JAVASCRIPT', NULL, NULL, NULL),
(63, 'Fabien', 'Ceci est une excellent description', '2020-11-27', 'PHP', NULL, NULL, NULL),
(64, 'Fabien', 'Ceci est une excellent description', '2020-11-28', 'JAVASCRIPT', NULL, NULL, NULL),
(65, 'Marie', 'Ceci est une excellent description', '2020-11-29', 'JOOMLA', NULL, NULL, NULL),
(66, 'Marie', 'Ceci est une excellent description', '2020-11-30', 'WORDPRESS', NULL, NULL, NULL),
(67, 'Brice', 'Ceci est une excellent description', '2020-12-01', 'JOOMLA', NULL, NULL, NULL),
(68, 'Benoit', 'Ceci est une excellent description', '2020-12-02', 'HTML', NULL, NULL, NULL),
(69, 'Emmanuel', 'Ceci est une excellent description', '2020-12-03', 'CSS', NULL, NULL, NULL),
(70, 'Fabien', 'Ceci est une excellent description', '2020-12-04', 'HTML', NULL, NULL, NULL),
(71, 'Benoit', 'Ceci est une excellent description', '2020-12-05', 'JOOMLA', NULL, NULL, NULL),
(72, 'Clément', 'Ceci est une excellent description', '2020-12-06', 'WORDPRESS', NULL, NULL, NULL),
(73, 'Benoit', 'Ceci est une excellent description', '2020-12-07', 'PHP', NULL, NULL, NULL),
(74, 'Emmanuel', 'Ceci est une excellent description', '2020-12-08', 'PHP', NULL, NULL, NULL),
(75, 'Brice', 'Ceci est une excellent description', '2020-12-09', 'WORDPRESS', NULL, NULL, NULL),
(76, 'Fabien', 'Ceci est une excellent description', '2020-12-10', 'PHP', NULL, NULL, NULL),
(77, 'Clément', 'Ceci est une excellent description', '2020-12-11', 'HTML', NULL, NULL, NULL),
(78, 'Brice', 'Ceci est une excellent description', '2020-12-12', 'CSS', NULL, NULL, NULL),
(79, 'Marie', 'Ceci est une excellent description', '2020-12-13', 'HTML', NULL, NULL, NULL),
(80, 'Benoit', 'Ceci est une excellent description', '2020-12-14', 'WORDPRESS', NULL, NULL, NULL),
(81, 'Benoit', 'Ceci est une excellent description', '2020-12-15', 'WORDPRESS', NULL, NULL, NULL),
(82, 'Marie', 'Ceci est une excellent description', '2020-12-16', 'JOOMLA', NULL, NULL, NULL),
(83, 'Fabien', 'Ceci est une excellent description', '2020-12-17', 'HTML', NULL, NULL, NULL),
(84, 'Fabien', 'Ceci est une excellent description', '2020-12-18', 'HTML', NULL, NULL, NULL),
(85, 'Brice', 'Ceci est une excellent description', '2020-12-19', 'JAVASCRIPT', NULL, NULL, NULL),
(86, 'Brice', 'Ceci est une excellent description', '2020-12-20', 'JOOMLA', NULL, NULL, NULL),
(87, 'Benoit', 'Ceci est une excellent description', '2020-12-21', 'JOOMLA', NULL, NULL, NULL),
(88, 'Fabien', 'Ceci est une excellent description', '2020-12-22', 'HTML', NULL, NULL, NULL),
(89, 'Marie', 'Ceci est une excellent description', '2020-12-23', 'JOOMLA', NULL, NULL, NULL),
(90, 'Emmanuel', 'Ceci est une excellent description', '2020-12-24', 'JAVASCRIPT', NULL, NULL, NULL),
(91, 'Marie', 'Ceci est une excellent description', '2020-12-25', 'WORDPRESS', NULL, NULL, NULL),
(92, 'Brice', 'Ceci est une excellent description', '2020-12-26', 'JAVASCRIPT', NULL, NULL, NULL),
(93, 'Emmanuel', 'Ceci est une excellent description', '2020-12-27', 'JAVASCRIPT', NULL, NULL, NULL),
(94, 'Brice', 'Ceci est une excellent description', '2020-12-28', 'WORDPRESS', NULL, NULL, NULL),
(95, 'Clément', 'Ceci est une excellent description', '2020-12-29', 'WORDPRESS', NULL, NULL, NULL),
(96, 'Emmanuel', 'Ceci est une excellent description', '2020-12-30', 'HTML', NULL, NULL, NULL),
(97, 'Emmanuel', 'Ceci est une excellent description', '2020-12-31', 'JAVASCRIPT', NULL, NULL, NULL),
(98, 'Marie', 'Ceci est une excellent description', '2021-01-01', 'WORDPRESS', NULL, NULL, NULL),
(99, 'Emmanuel', 'Ceci est une excellent description', '2021-01-02', 'PHP', NULL, NULL, NULL),
(100, 'Brice', 'Ceci est une excellent description', '2021-01-03', 'JOOMLA', NULL, NULL, NULL),
(101, 'Clément', 'Ceci est une excellent description', '2021-01-04', 'JOOMLA', NULL, NULL, NULL),
(102, 'Benoit', 'Ceci est une excellent description', '2021-01-05', 'JAVASCRIPT', NULL, NULL, NULL),
(103, 'Fabien', 'Ceci est une excellent description', '2021-01-06', 'HTML', NULL, NULL, NULL),
(104, 'Brice', 'Ceci est une excellent description', '2021-01-07', 'CSS', NULL, NULL, NULL),
(105, 'Marie', 'Ceci est une excellent description', '2021-01-08', 'HTML', NULL, NULL, NULL),
(106, 'Benoit', 'Ceci est une excellent description', '2021-01-09', 'JOOMLA', NULL, NULL, NULL),
(107, 'Emmanuel', 'Ceci est une excellent description', '2021-01-10', 'JAVASCRIPT', NULL, NULL, NULL),
(108, 'Marie', 'Ceci est une excellent description', '2021-01-11', 'HTML', NULL, NULL, NULL),
(109, 'Emmanuel', 'Ceci est une excellent description', '2021-01-12', 'JAVASCRIPT', NULL, NULL, NULL),
(110, 'Marie', 'Ceci est une excellent description', '2021-01-13', 'CSS', NULL, NULL, NULL),
(111, 'Benoit', 'Ceci est une excellent description', '2021-01-14', 'CSS', NULL, NULL, NULL),
(112, 'Clément', 'Ceci est une excellent description', '2021-01-15', 'JAVASCRIPT', NULL, NULL, NULL),
(113, 'Brice', 'Ceci est une excellent description', '2021-01-16', 'HTML', NULL, NULL, NULL),
(114, 'Brice', 'Ceci est une excellent description', '2021-01-17', 'HTML', NULL, NULL, NULL),
(115, 'Fabien', 'Ceci est une excellent description', '2021-01-18', 'JOOMLA', NULL, NULL, NULL),
(116, 'Brice', 'Ceci est une excellent description', '2021-01-19', 'JAVASCRIPT', NULL, NULL, NULL),
(117, 'Brice', 'Ceci est une excellent description', '2021-01-20', 'JOOMLA', NULL, NULL, NULL),
(118, 'Benoit', 'Ceci est une excellent description', '2021-01-21', 'PHP', NULL, NULL, NULL),
(119, 'Fabien', 'Ceci est une excellent description', '2021-01-22', 'JOOMLA', NULL, NULL, NULL),
(120, 'Fabien', 'Ceci est une excellent description', '2021-01-23', 'HTML', NULL, NULL, NULL),
(121, 'Clément', 'Ceci est une excellent description', '2021-01-24', 'WORDPRESS', NULL, NULL, NULL),
(122, 'Clément', 'Ceci est une excellent description', '2021-01-25', 'WORDPRESS', NULL, NULL, NULL),
(123, 'Fabien', 'Ceci est une excellent description', '2021-01-26', 'PHP', NULL, NULL, NULL),
(124, 'Benoit', 'Ceci est une excellent description', '2021-01-27', 'JAVASCRIPT', NULL, NULL, NULL),
(125, 'Emmanuel', 'Ceci est une excellent description', '2021-01-28', 'HTML', NULL, NULL, NULL),
(126, 'Fabien', 'Ceci est une excellent description', '2021-01-29', 'CSS', NULL, NULL, NULL),
(127, 'Marie', 'Ceci est une excellent description', '2021-01-30', 'HTML', NULL, NULL, NULL),
(128, 'Clément', 'Ceci est une excellent description', '2021-01-31', 'PHP', NULL, NULL, NULL),
(129, 'Clément', 'Ceci est une excellent description', '2021-02-01', 'JOOMLA', NULL, NULL, NULL),
(130, 'Emmanuel', 'Ceci est une excellent description', '2021-02-02', 'CSS', NULL, NULL, NULL),
(131, 'Emmanuel', 'Ceci est une excellent description', '2021-02-03', 'HTML', NULL, NULL, NULL),
(132, 'Marie', 'Ceci est une excellent description', '2021-02-04', 'CSS', NULL, NULL, NULL),
(133, 'Fabien', 'Ceci est une excellent description', '2021-02-05', 'PHP', NULL, NULL, NULL),
(134, 'Brice', 'Ceci est une excellent description', '2021-02-06', 'JAVASCRIPT', NULL, NULL, NULL),
(135, 'Benoit', 'Ceci est une excellent description', '2021-02-07', 'CSS', NULL, NULL, NULL),
(136, 'Benoit', 'Ceci est une excellent description', '2021-02-08', 'JOOMLA', NULL, NULL, NULL),
(137, 'Brice', 'Ceci est une excellent description', '2021-02-09', 'CSS', NULL, NULL, NULL),
(138, 'Fabien', 'Ceci est une excellent description', '2021-02-10', 'JOOMLA', NULL, NULL, NULL),
(139, 'Fabien', 'Ceci est une excellent description', '2021-02-11', 'JOOMLA', NULL, NULL, NULL),
(140, 'Emmanuel', 'Ceci est une excellent description', '2021-02-12', 'HTML', NULL, NULL, NULL),
(141, 'Marie', 'Ceci est une excellent description', '2021-02-13', 'WORDPRESS', NULL, NULL, NULL),
(142, 'Emmanuel', 'Ceci est une excellent description', '2021-02-14', 'HTML', NULL, NULL, NULL),
(143, 'Brice', 'Ceci est une excellent description', '2021-02-15', 'WORDPRESS', NULL, NULL, NULL),
(144, 'Brice', 'Ceci est une excellent description', '2021-02-16', 'JOOMLA', NULL, NULL, NULL),
(145, 'Emmanuel', 'Ceci est une excellent description', '2021-02-17', 'JOOMLA', NULL, NULL, NULL),
(146, 'Brice', 'Ceci est une excellent description', '2021-02-18', 'JAVASCRIPT', NULL, NULL, NULL),
(147, 'Benoit', 'Ceci est une excellent description', '2021-02-19', 'JAVASCRIPT', NULL, NULL, NULL),
(148, 'Emmanuel', 'Ceci est une excellent description', '2021-02-20', 'JAVASCRIPT', NULL, NULL, NULL),
(149, 'Clément', 'Ceci est une excellent description', '2021-02-21', 'CSS', NULL, NULL, NULL),
(150, 'Benoit', 'Ceci est une excellent description', '2021-02-22', 'JAVASCRIPT', NULL, NULL, NULL),
(151, 'Fabien', 'Ceci est une excellent description', '2021-02-23', 'WORDPRESS', NULL, NULL, NULL),
(152, 'Marie', 'Ceci est une excellent description', '2021-02-24', 'WORDPRESS', NULL, NULL, NULL),
(153, 'Marie', 'Ceci est une excellent description', '2021-02-25', 'PHP', NULL, NULL, NULL),
(154, 'Marie', 'Ceci est une excellent description', '2021-02-26', 'JOOMLA', NULL, NULL, NULL),
(155, 'Fabien', 'Ceci est une excellent description', '2021-02-27', 'HTML', NULL, NULL, NULL),
(156, 'Emmanuel', 'Ceci est une excellent description', '2021-02-28', 'JAVASCRIPT', NULL, NULL, NULL),
(157, 'Emmanuel', 'Ceci est une excellent description', '2021-03-01', 'CSS', NULL, NULL, NULL),
(158, 'Benoit', 'Ceci est une excellent description', '2021-03-02', 'JAVASCRIPT', NULL, NULL, NULL),
(159, 'Marie', 'Ceci est une excellent description', '2021-03-03', 'JAVASCRIPT', NULL, NULL, NULL),
(160, 'Marie', 'Ceci est une excellent description', '2021-03-04', 'CSS', NULL, NULL, NULL),
(161, 'Fabien', 'Ceci est une excellent description', '2021-03-05', 'PHP', NULL, NULL, NULL),
(162, 'Emmanuel', 'Ceci est une excellent description', '2021-03-06', 'WORDPRESS', NULL, NULL, NULL),
(163, 'Fabien', 'Ceci est une excellent description', '2021-03-07', 'PHP', NULL, NULL, NULL),
(164, 'Fabien', 'Ceci est une excellent description', '2021-03-08', 'JOOMLA', NULL, NULL, NULL),
(165, 'Marie', 'Ceci est une excellent description', '2021-03-09', 'JAVASCRIPT', NULL, NULL, NULL),
(166, 'Benoit', 'Ceci est une excellent description', '2021-03-10', 'CSS', NULL, NULL, NULL),
(167, 'Benoit', 'Ceci est une excellent description', '2021-03-11', 'WORDPRESS', NULL, NULL, NULL),
(168, 'Marie', 'Ceci est une excellent description', '2021-03-12', 'HTML', NULL, NULL, NULL),
(169, 'Brice', 'Ceci est une excellent description', '2021-03-13', 'WORDPRESS', NULL, NULL, NULL),
(170, 'Clément', 'Ceci est une excellent description', '2021-03-14', 'CSS', NULL, NULL, NULL),
(171, 'Benoit', 'Ceci est une excellent description', '2021-03-15', 'HTML', NULL, NULL, NULL),
(172, 'Marie', 'Ceci est une excellent description', '2021-03-16', 'HTML', NULL, NULL, NULL),
(173, 'Marie', 'Ceci est une excellent description', '2021-03-17', 'JAVASCRIPT', NULL, NULL, NULL),
(174, 'Benoit', 'Ceci est une excellent description', '2021-03-18', 'JOOMLA', NULL, NULL, NULL),
(175, 'Fabien', 'Ceci est une excellent description', '2021-03-19', 'JAVASCRIPT', NULL, NULL, NULL),
(176, 'Benoit', 'Ceci est une excellent description', '2021-03-20', 'WORDPRESS', NULL, NULL, NULL),
(177, 'Brice', 'Ceci est une excellent description', '2021-03-21', 'HTML', NULL, NULL, NULL),
(178, 'Fabien', 'Ceci est une excellent description', '2021-03-22', 'JAVASCRIPT', NULL, NULL, NULL),
(179, 'Marie', 'Ceci est une excellent description', '2021-03-23', 'JAVASCRIPT', NULL, NULL, NULL),
(180, 'Benoit', 'Ceci est une excellent description', '2021-03-24', 'WORDPRESS', NULL, NULL, NULL),
(181, 'Emmanuel', 'Ceci est une excellent description', '2021-03-25', 'JOOMLA', NULL, NULL, NULL),
(182, 'Benoit', 'Ceci est une excellent description', '2021-03-26', 'CSS', NULL, NULL, NULL),
(183, 'Emmanuel', 'Ceci est une excellent description', '2021-03-27', 'JAVASCRIPT', NULL, NULL, NULL),
(184, 'Marie', 'Ceci est une excellent description', '2021-03-28', 'JAVASCRIPT', NULL, NULL, NULL),
(185, 'Fabien', 'Ceci est une excellent description', '2021-03-29', 'JAVASCRIPT', NULL, NULL, NULL),
(186, 'Marie', 'Ceci est une excellent description', '2021-03-30', 'PHP', NULL, NULL, NULL),
(187, 'Emmanuel', 'Ceci est une excellent description', '2021-03-31', 'WORDPRESS', NULL, NULL, NULL),
(188, 'Emmanuel', 'Ceci est une excellent description', '2021-04-01', 'WORDPRESS', NULL, NULL, NULL),
(189, 'Clément', 'Ceci est une excellent description', '2021-04-02', 'WORDPRESS', NULL, NULL, NULL),
(190, 'Clément', 'Ceci est une excellent description', '2021-04-03', 'CSS', NULL, NULL, NULL),
(191, 'Brice', 'Ceci est une excellent description', '2021-04-04', 'PHP', NULL, NULL, NULL),
(192, 'Marie', 'Ceci est une excellent description', '2021-04-05', 'CSS', NULL, NULL, NULL),
(193, 'Brice', 'Ceci est une excellent description', '2021-04-06', 'JOOMLA', NULL, NULL, NULL),
(194, 'Clément', 'Ceci est une excellent description', '2021-04-07', 'JOOMLA', NULL, NULL, NULL),
(195, 'Benoit', 'Ceci est une excellent description', '2021-04-08', 'JOOMLA', NULL, NULL, NULL),
(196, 'Benoit', 'Ceci est une excellent description', '2021-04-09', 'JAVASCRIPT', NULL, NULL, NULL),
(197, 'Benoit', 'Ceci est une excellent description', '2021-04-10', 'CSS', NULL, NULL, NULL),
(198, 'Emmanuel', 'Ceci est une excellent description', '2021-04-11', 'JOOMLA', NULL, NULL, NULL),
(199, 'Brice', 'Ceci est une excellent description', '2021-04-12', 'WORDPRESS', NULL, NULL, NULL),
(200, 'Benoit', 'Ceci est une excellent description', '2021-04-13', 'HTML', NULL, NULL, NULL),
(204, 'Coucou', 'Coucou        ', '2020-10-09', 'Alexandre', NULL, NULL, 3),
(207, 'php en force', 'Rattrapage PHP', '2020-10-19', 'Léo', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `Id` bigint(20) NOT NULL,
  `Libelle` varchar(50) DEFAULT NULL,
  `Icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`Id`, `Libelle`, `Icon`) VALUES
(2, 'Eval PHP', 'fas fa-file-alt'),
(3, 'Bonjour', 'fas fa-file-alt');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `Id` bigint(20) NOT NULL,
  `Auteur` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Comment` text DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ArticleId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`Id`, `Auteur`, `Mail`, `Comment`, `Date`, `ArticleId`) VALUES
(2, 'Toto', 'toto@email.com', 'Bonjour', '2020-12-09', 200),
(3, 'Toto', 'toto@email.com', 'Bonjour', '2020-12-09', 200),
(4, 'Toto', 'jeremy.fortin@hotmail.fr', 'Bonsoir', '2020-12-09', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `articles_categories_Id_fk` (`categorie_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categories_Id_fk` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
