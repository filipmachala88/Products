-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'topic','','Kdo jsou','','');
INSERT INTO `about` VALUES (2,'logo','','','http://tension.local/wp-content/themes/tension/assets/img/logo-trans-hover.png','logo');
INSERT INTO `about` VALUES (3,'topic_after','h1-spec','?','','');
INSERT INTO `about` VALUES (4,'text','','Banda mladých týpků, kteří vám zaručeně naplní klub','','');
INSERT INTO `about` VALUES (5,'text','','Vytvořili jsme projekt, který se chytnul a vybudovali si značnou komunitu. Brno je naše město a                     naši fanoušci to ví. Proto pro ně vytváříme shows jak se patří','','');
INSERT INTO `about` VALUES (6,'text','','Zaměřujeme se převážně na moderní hudbu jako je Hip-Hop a Trap, ale najdete u nás i Pop, Techno či elektro','','');
INSERT INTO `about` VALUES (7,'img','tension-members','','http://tension.local/wp-content/themes/tension/assets/img/tension-trans.png','members');
INSERT INTO `about` VALUES (8,'img_back','about-logo-bg','','http://tension.local/wp-content/themes/tension/assets/img/logo-trans-mem.png','icon');
INSERT INTO `about` VALUES (9,'notes','','','http://tension.local/wp-content/themes/tension/assets/img/notes-bg.png','notes');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advert`
--

DROP TABLE IF EXISTS `advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `topic` varchar(200) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `descr` varchar(200) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `img_link` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `img_title` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `button_link` varchar(100) NOT NULL,
  `button_text` varchar(20) NOT NULL,
  `icon` varchar(5000) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advert`
--

LOCK TABLES `advert` WRITE;
/*!40000 ALTER TABLE `advert` DISABLE KEYS */;
INSERT INTO `advert` VALUES (1,'column','Sledujte co chystáme','Navštivte kategori Akce a mějte tak přehled o naších akcích','http://tension.local/wp-content/themes/tension/assets/img/underline-trans.png','underline','http://tension.local/category/akce/','Akce','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                 <svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\"                                     y=\"0px\" viewBox=\"0 0 19.43 20.36\" style=\"enable-background:new 0 0 19.43 20.36;\" xml:space=\"preserve\">                                     <path class=\"st0\" d=\"M18.67,6.99H0.72V3.12c0-0.51,0.42-0.93,0.93-0.93h16.09c0.51,0,0.93,0.42,0.93,0.93V6.99z\" />                                     <path class=\"st0\" d=\"M4.7,2.19h-0.9c-0.3,0-0.55-0.24-0.55-0.55v-0.9c0-0.3,0.24-0.55,0.55-0.55h0.9c0.3,0,0.55,0.24,0.55,0.55v0.9                                 	C5.25,1.94,5.01,2.19,4.7,2.19z\" />                                     <path class=\"st0\" d=\"M15.93,2.19h-0.9c-0.3,0-0.55-0.24-0.55-0.55v-0.9c0-0.3,0.24-0.55,0.55-0.55h0.9c0.3,0,0.55,0.24,0.55,0.55                                 	v0.9C16.48,1.94,16.23,2.19,15.93,2.19z\" />                                     <path class=\"st1\" d=\"M17.62,2.19H1.77c-0.58,0-1.06,0.47-1.06,1.06v15.38c0,0.58,0.47,1.06,1.06,1.06h15.84                                 	c0.58,0,1.06-0.47,1.06-1.06V3.24C18.67,2.66,18.2,2.19,17.62,2.19z M17.71,18.67H1.54L1.61,5.91h16.09V18.67z\" />                                     <path class=\"st2\" d=\"M17.07,5.63H2.29c-0.67,0-1.21-0.54-1.21-1.21V3.66c0-0.67,0.54-1.21,1.21-1.21h14.78                                 	c0.67,0,1.21,0.54,1.21,1.21v0.75C18.28,5.09,17.74,5.63,17.07,5.63z\" />                                     <path class=\"st0\" d=\"M10.04,11.5H9.35c-0.28,0-0.5-0.22-0.5-0.5v-0.69c0-0.28,0.22-0.5,0.5-0.5h0.69c0.28,0,0.5,0.22,0.5,0.5V11                                 	C10.54,11.27,10.32,11.5,10.04,11.5z\" />                                     <path class=\"st0\" d=\"M13.82,11.5h-0.69c-0.28,0-0.5-0.22-0.5-0.5v-0.69c0-0.28,0.22-0.5,0.5-0.5h0.69c0.28,0,0.5,0.22,0.5,0.5V11                                 	C14.32,11.27,14.1,11.5,13.82,11.5z\" />                                     <path class=\"st0\" d=\"M6.12,11.5H5.43c-0.28,0-0.5-0.22-0.5-0.5v-0.69c0-0.28,0.22-0.5,0.5-0.5h0.69c0.28,0,0.5,0.22,0.5,0.5V11                                 	C6.62,11.27,6.4,11.5,6.12,11.5z\" />                                     <path class=\"st0\" d=\"M6.12,14.82H5.43c-0.28,0-0.5-0.22-0.5-0.5v-0.69c0-0.28,0.22-0.5,0.5-0.5h0.69c0.28,0,0.5,0.22,0.5,0.5v0.69                                 	C6.62,14.6,6.4,14.82,6.12,14.82z\" />                                     <path class=\"st0\" d=\"M10.02,14.82H9.33c-0.28,0-0.5-0.22-0.5-0.5v-0.69c0-0.28,0.22-0.5,0.5-0.5h0.69c0.28,0,0.5,0.22,0.5,0.5v0.69                                 	C10.52,14.6,10.3,14.82,10.02,14.82z\" />                                     <path class=\"st0\" d=\"M13.82,14.82h-0.69c-0.28,0-0.5-0.22-0.5-0.5v-0.69c0-0.28,0.22-0.5,0.5-0.5h0.69c0.28,0,0.5,0.22,0.5,0.5v0.69                                 	C14.32,14.6,14.1,14.82,13.82,14.82z\" />                                 </svg>');
INSERT INTO `advert` VALUES (2,'column','Show i ve vašem městě','Chcete udělat Show ve vašem městě nebo u vás doma? Kontaktuje nás','http://tension.local/wp-content/themes/tension/assets/img/underline-trans.png','underline','http://tension.local/kontakt/','Kontakt','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                 <svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\"                                     y=\"0px\" viewBox=\"0 0 18.94 19.78\" style=\"enable-background:new 0 0 18.94 19.78;\" xml:space=\"preserve\">                                     <g>                                         <rect x=\"0.26\" y=\"16.62\" class=\"st0\" width=\"18.42\" height=\"2.95\" />                                         <polygon class=\"st0\" points=\"6.88,16.64 6.9,16.62 3.53,13.35 0.26,16.73 0.28,16.75 	\" />                                         <polygon class=\"st0\" points=\"12.77,16.67 12.79,16.64 9.42,13.38 6.15,16.75 6.17,16.77 	\" />                                         <polygon class=\"st0\" points=\"18.66,16.67 18.68,16.64 15.31,13.38 12.04,16.75 12.07,16.77 	\" />                                                                          <rect x=\"0.26\" y=\"8.82\" transform=\"matrix(-1 -5.993218e-11 5.993218e-11 -1 18.9413 20.2969)\" class=\"st0\"                                             width=\"18.42\" height=\"2.65\" />                                         <polygon class=\"st0\" points=\"9.16,11.43 9.13,11.45 12.51,14.72 15.77,11.35 15.75,11.33 	\" />                                         <polygon class=\"st0\" points=\"3.26,11.41 3.24,11.43 6.61,14.7 9.88,11.32 9.86,11.3 	\" />                                         <polygon class=\"st0\" points=\"18.68,11.34 14.76,11.4 14.74,11.43 18.11,14.7 18.68,14.11 	\" />                                         <polygon class=\"st0\" points=\"3.97,11.3 0.26,11.36 0.26,14.25 0.72,14.7 3.99,11.32 	\" />                                         <rect x=\"3.58\" y=\"3.21\" class=\"st0\" width=\"1.69\" height=\"5.73\" />                                         <rect x=\"8.62\" y=\"3.21\" class=\"st0\" width=\"1.69\" height=\"5.73\" />                                         <rect x=\"13.67\" y=\"3.21\" class=\"st0\" width=\"1.69\" height=\"5.73\" />                                         <ellipse class=\"st0\" cx=\"4.43\" cy=\"1.48\" rx=\"0.67\" ry=\"1.3\" />                                         <ellipse class=\"st0\" cx=\"9.47\" cy=\"1.48\" rx=\"0.67\" ry=\"1.3\" />                                         <ellipse class=\"st0\" cx=\"14.52\" cy=\"1.48\" rx=\"0.67\" ry=\"1.3\" />                                     </g>                                 </svg>');
/*!40000 ALTER TABLE `advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `class` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `topic` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `descr` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `note_one` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `note_two` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `button_link` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `button_text` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `icon` varchar(2000) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `img_alt` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel`
--

LOCK TABLES `carousel` WRITE;
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
INSERT INTO `carousel` VALUES (1,'carousel','active','Melodka párty','Přijďte si užít nadupanou poslední prázdninovou show v centru Brna, než začne školní rok!','3.6.2021','Brno – Melodka','http://tension.local/category/akce/','Akce','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                                 <svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\"                                                     xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                                     viewBox=\"0 0 15.62 21.29\"                                                     style=\"enable-background:new 0 0 15.62 21.29;\" xml:space=\"preserve\">                                                     <path class=\"st0\" d=\"M7.9,0.52c-4.13,0-7.47,3.35-7.47,7.47c0,4.13,3.35,7.47,7.47,7.47c4.13,0,7.47-3.35,7.47-7.47                                             	    C15.38,3.86,12.03,0.52,7.9,0.52z M7.9,10.8c-1.55,0-2.8-1.26-2.8-2.8s1.26-2.8,2.8-2.8c1.55,0,2.8,1.26,2.8,2.8S9.45,10.8,7.9,10.8                                             	    z\" />                                                     <path class=\"st1\"                                                     d=\"M1,10.78c-0.03-0.06,0-0.14,0.06-0.17h0c0.06-0.03,0.14,0,0.17,0.06\" />                                                     <path class=\"st1\"                                                     d=\"M14.8,10.88c0.03-0.06,0-0.14-0.06-0.17l0,0c-0.06-0.03-0.14,0-0.17,0.06\" />                                                     <path class=\"st1\" d=\"M1.32,11.47L7.2,20.8c0.28,0.45,0.96,0.45,1.25,0.01l5.94-9.17c0.09-0.14-0.07-0.32-0.29-0.33l-12.5-0.17                                             	    C1.39,11.14,1.23,11.32,1.32,11.47z\" />                                                 </svg>','http://tension.local/wp-content/themes/tension/assets/img/event-trans.png','DJ photo');
INSERT INTO `carousel` VALUES (2,'carousel','','Nový merch v prodeji','Je to tu. Konečně představujeme náš náš první merch vytvořen z kvalitního materiálu','100% Ovčí balvna','9/10 Doporučuje','http://tension.local/category/merch/','Merch','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                                 <svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\"                                                     xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                                     viewBox=\"0 0 19.74 15.55\"                                                     style=\"enable-background:new 0 0 19.74 15.55;\" xml:space=\"preserve\">                                                     <path class=\"st0\"                                                     d=\"M6.49,3.47L2.81,6.31C2.54,6.52,2.16,6.47,1.96,6.2L0.29,4.05C0.08,3.78,0.13,3.4,0.4,3.19l3.68-2.84                                             	    c0.27-0.21,0.65-0.16,0.85,0.11L6.6,2.62C6.81,2.88,6.76,3.26,6.49,3.47z\" />                                                     <path class=\"st0\"                                                     d=\"M13.23,3.45l3.72,2.87c0.26,0.2,0.62,0.15,0.82-0.11l1.7-2.2c0.2-0.26,0.15-0.62-0.11-0.82l-3.72-2.87                                             	    c-0.26-0.2-0.62-0.15-0.82,0.11l-1.7,2.2C12.92,2.89,12.97,3.26,13.23,3.45z\" />                                                     <path class=\"st0\"                                                     d=\"M13.11,0.22c-0.16,0-0.3,0.11-0.37,0.27c-0.51,1.22-1.61,2.06-2.89,2.06S7.48,1.71,6.97,0.49                                             	    C6.9,0.33,6.76,0.22,6.6,0.22H4.38c-0.22,0-0.39,0.2-0.38,0.44l0.53,14.29c0.01,0.2,0.17,0.36,0.37,0.36h9.9                                             	    c0.2,0,0.37-0.16,0.37-0.36l0.53-14.29c0.01-0.24-0.16-0.44-0.38-0.44H13.11z\" />                                                 </svg>','http://tension.local/wp-content/themes/tension/assets/img/merch-trans.png','merch image');
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connect_alert`
--

DROP TABLE IF EXISTS `connect_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `connect_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connect_alert`
--

LOCK TABLES `connect_alert` WRITE;
/*!40000 ALTER TABLE `connect_alert` DISABLE KEYS */;
INSERT INTO `connect_alert` VALUES (1,'img','','http://tension.local/wp-content/themes/tension/assets/img/logo-trans-hover.png','logo');
INSERT INTO `connect_alert` VALUES (2,'text','insert into controller','','');
/*!40000 ALTER TABLE `connect_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_form`
--

DROP TABLE IF EXISTS `contact_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact_form` (
  `forename` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `descr` varchar(300) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_form`
--

LOCK TABLES `contact_form` WRITE;
/*!40000 ALTER TABLE `contact_form` DISABLE KEYS */;
INSERT INTO `contact_form` VALUES ('se','se','se@gmail.com','se');
/*!40000 ALTER TABLE `contact_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_alert`
--

DROP TABLE IF EXISTS `cookie_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cookie_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) NOT NULL,
  `content` varchar(200) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_alert`
--

LOCK TABLES `cookie_alert` WRITE;
/*!40000 ALTER TABLE `cookie_alert` DISABLE KEYS */;
INSERT INTO `cookie_alert` VALUES (1,'text','Používáním tohoto webu souhlasíte s tím, že využíváme vaše cookies. Více informací najdete v sekci.','');
INSERT INTO `cookie_alert` VALUES (2,'button','Cookies','http://tension.local/cookies/');
INSERT INTO `cookie_alert` VALUES (3,'close','Zavřít','');
/*!40000 ALTER TABLE `cookie_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `content` varchar(200) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(3000) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer`
--

LOCK TABLES `footer` WRITE;
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
INSERT INTO `footer` VALUES (1,'logo-link','','','http://tension.local/','','Domů');
INSERT INTO `footer` VALUES (2,'logo-image','logo-base-footer','','http://tension.local/wp-content/themes/tension/assets/img/logo-trans.png','','logo');
INSERT INTO `footer` VALUES (3,'logo-image','logo-hover-footer','','http://tension.local/wp-content/themes/tension/assets/img/logo-trans-hover.png','','logo');
INSERT INTO `footer` VALUES (4,'logo-text','','insert into controller','','','');
INSERT INTO `footer` VALUES (5,'theme','light-theme','','','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                         <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                             viewBox=\"0 0 22.59 22.5\" style=\"enable-background:new 0 0 22.59 22.5;\" xml:space=\"preserve\">                                             <g>                                                 <path d=\"M4.68,14.94c-0.2,0.14-0.35,0.33-0.41,0.55l-0.75,2.9c-0.16,0.61,0.28,0.95,0.92,0.75l2.74-0.87                                                 c0.19-0.06,0.35-0.2,0.48-0.37L4.68,14.94z\"/>                                                 <path d=\"M11.25,3.76c-4.19,0-7.58,3.39-7.58,7.58c0,4.19,3.39,7.58,7.58,7.58c4.19,0,7.58-3.39,7.58-7.58                                                 C18.83,7.15,15.43,3.76,11.25,3.76z M11.25,18.36c-3.88,0-7.03-3.15-7.03-7.03c0-3.88,3.15-7.03,7.03-7.03                                                 c3.88,0,7.03,3.15,7.03,7.03C18.27,15.22,15.13,18.36,11.25,18.36z\"/>                                                 <circle cx=\"11.25\" cy=\"11.34\" r=\"5.73\"/>                                                 <path d=\"M9.17,18.52c-0.05,0.24-0.02,0.48,0.09,0.68l1.49,2.6c0.31,0.55,0.86,0.49,1.18-0.11l1.35-2.53                                                 c0.09-0.17,0.12-0.39,0.09-0.6L9.17,18.52z\"/>                                                 <path d=\"M4.04,9.24C3.8,9.2,3.55,9.22,3.36,9.33l-2.6,1.49C0.21,11.13,0.27,11.68,0.87,12l2.54,1.35c0.17,0.09,0.39,0.12,0.6,0.09                                                 L4.04,9.24z\"/>                                                 <path d=\"M18.5,9.24c0.24-0.05,0.48-0.02,0.68,0.09l2.6,1.49c0.55,0.31,0.49,0.86-0.11,1.18l-2.54,1.35                                                 c-0.17,0.09-0.39,0.12-0.6,0.09L18.5,9.24z\"/>                                                 <path d=\"M13.35,4.05c0.05-0.24,0.02-0.48-0.09-0.68l-1.49-2.6c-0.31-0.55-0.86-0.49-1.18,0.11L9.25,3.42                                                 C9.16,3.59,9.13,3.8,9.16,4.01L13.35,4.05z\"/>                                                 <path d=\"M17.78,14.94c0.2,0.14,0.35,0.33,0.41,0.55l0.75,2.9c0.16,0.61-0.28,0.95-0.92,0.75l-2.74-0.87                                                 c-0.19-0.06-0.35-0.2-0.48-0.37L17.78,14.94z\"/>                                                 <path d=\"M17.78,7.56c0.2-0.14,0.35-0.33,0.41-0.55l0.75-2.9c0.16-0.61-0.28-0.95-0.92-0.75l-2.74,0.87                                                 c-0.19,0.06-0.35,0.2-0.48,0.37L17.78,7.56z\"/>                                                 <path d=\"M7.54,4.94C7.41,4.75,7.21,4.59,7,4.54L4.1,3.79C3.49,3.63,3.15,4.06,3.35,4.7l0.87,2.74c0.06,0.19,0.2,0.35,0.37,0.48                                                 L7.54,4.94z\"/>                                             </g>                                         </svg>','Světlý režim');
INSERT INTO `footer` VALUES (6,'theme','dark-theme','','','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                         <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                             viewBox=\"0 0 21.33 21.83\" style=\"enable-background:new 0 0 21.33 21.83;\" xml:space=\"preserve\">                                             <path class=\"st0\" d=\"M14.62,16.59c-4.32,0-7.81-3.5-7.81-7.81c0-4.21,3.34-7.64,7.51-7.8c-1.08-0.38-2.24-0.59-3.45-0.59                                             c-5.8,0-10.5,4.7-10.5,10.5s4.7,10.5,10.5,10.5c5.04,0,9.25-3.55,10.26-8.29C19.73,15.21,17.34,16.59,14.62,16.59z\"/>                                         </svg>','Tmavý režim');
INSERT INTO `footer` VALUES (7,'nav-topic','','Informace','','','');
INSERT INTO `footer` VALUES (8,'sites-topic','','Sociální sítě','','','');
INSERT INTO `footer` VALUES (9,'sites-text','','Sledujte nás','','','');
INSERT INTO `footer` VALUES (10,'site','','','https://www.facebook.com/tensionevents','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                             <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                                 viewBox=\"0 0 7.16 13.39\" style=\"enable-background:new 0 0 7.16 13.39;\" xml:space=\"preserve\">                                                 <rect x=\"2.41\" y=\"4.79\" class=\"st0\" width=\"2.11\" height=\"8.44\"/>                                                 <rect x=\"2.41\" y=\"2.66\" transform=\"matrix(6.123234e-17 -1 1 6.123234e-17 -2.3778 9.3224)\" class=\"st0\" width=\"2.11\" height=\"6.39\"/>                                                 <path class=\"facebook-special\" d=\"M3.48,5.07C3.2,1.98,4.2,0.99,6.8,1.46\"/>                                             </svg>','Facebook');
INSERT INTO `footer` VALUES (11,'site','','','https://www.instagram.com/tensionevents/','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                             <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                                 viewBox=\"0 0 16.76 16.75\" style=\"enable-background:new 0 0 16.76 16.75;\" xml:space=\"preserve\">                                                 <path class=\"st0\" d=\"M12.97,0.27H3.75c-1.95,0-3.53,1.58-3.53,3.53v9.22c0,1.95,1.58,3.53,3.53,3.53h9.22                                                 c1.95,0,3.53-1.58,3.53-3.53V3.79C16.49,1.85,14.91,0.27,12.97,0.27z M15.37,12.67c0,1.51-1.23,2.74-2.74,2.74H4.09                                                 c-1.51,0-2.74-1.23-2.74-2.74V4.13c0-1.51,1.23-2.74,2.74-2.74h8.54c1.51,0,2.74,1.23,2.74,2.74V12.67z\"/>                                                 <circle class=\"st0\" cx=\"11.73\" cy=\"4.38\" r=\"1\"/>                                                 <path class=\"st0\" d=\"M8.39,5.37c-1.67,0-3.03,1.36-3.03,3.03c0,1.67,1.36,3.03,3.03,3.03c1.67,0,3.03-1.36,3.03-3.03                                                 C11.42,6.73,10.07,5.37,8.39,5.37z M8.39,10.37c-1.09,0-1.97-0.88-1.97-1.97c0-1.09,0.88-1.97,1.97-1.97c1.09,0,1.97,0.88,1.97,1.97                                                 C10.36,9.49,9.48,10.37,8.39,10.37z\"/>                                             </svg>','Instagram');
INSERT INTO `footer` VALUES (12,'creator','','Filip Machala','https://www.facebook.com/machalafilip','','');
INSERT INTO `footer` VALUES (13,'copy','','© Tension - všechna práva vyhrazena','','','');
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galery`
--

DROP TABLE IF EXISTS `galery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `topic` varchar(20) NOT NULL,
  `content` varchar(200) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galery`
--

LOCK TABLES `galery` WRITE;
/*!40000 ALTER TABLE `galery` DISABLE KEYS */;
INSERT INTO `galery` VALUES (1,'topic','','Tvoříme','','');
INSERT INTO `galery` VALUES (2,'topic_spec','','nezapomenutelné','','');
INSERT INTO `galery` VALUES (3,'topic_after','','zážitky','','');
INSERT INTO `galery` VALUES (4,'descr','','Přesvědčte se sami v naší galerii','','');
INSERT INTO `galery` VALUES (5,'button','','Galerie','http://tension.local/category/galerie/','');
INSERT INTO `galery` VALUES (6,'square','Spolupráce','Chlubit se můžeme spoluprácemi se známými jmény jako jsou Koukr, Hammachi atd.','http://tension.local/wp-content/themes/tension/assets/img/galery-one.jpg','Koukr & DJ photo');
INSERT INTO `galery` VALUES (8,'square','Nejnovější hity','Naši Djové opravdu ví co je v trendu. Proto se při našich shows lidi baví','http://tension.local/wp-content/themes/tension/assets/img/galery-two.jpg','DJ photo');
INSERT INTO `galery` VALUES (9,'square_resp','Rapové chvilky','I pro milovníky rapu máme v playlistu vyhrazené místo. Od Travise Scotta po Pop Smoke','http://tension.local/wp-content/themes/tension/assets/img/galery-three.jpg','fan photo');
INSERT INTO `galery` VALUES (10,'square_resp','Každý u nás trsá','Náš Tension ví, jak pořádně nabudit tanečníky na parketu','http://tension.local/wp-content/themes/tension/assets/img/galery-four.jpg','Ernesto');
/*!40000 ALTER TABLE `galery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header`
--

DROP TABLE IF EXISTS `header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `header` (
  `id` int(11) DEFAULT NULL,
  `tag` varchar(100) NOT NULL,
  `class` varchar(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `link` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `title` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `icon` varchar(2000) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header`
--

LOCK TABLES `header` WRITE;
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` VALUES (2,'logo-image','logo-base','','http://tension.local/wp-content/themes/tension/assets/img/logo-trans.png','','');
INSERT INTO `header` VALUES (3,'logo-image','logo-hover','','http://tension.local/wp-content/themes/tension/assets/img/logo-trans-hover.png','','');
INSERT INTO `header` VALUES (4,'logo-text','','insert into controller','','','');
INSERT INTO `header` VALUES (5,'icon-menu-spec','searchBox','','','Hledat','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                             <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                 viewBox=\"0 0 20.07 19.78\" style=\"enable-background:new 0 0 20.07 19.78;\" xml:space=\"preserve\">                                 <path class=\"st0\" d=\"M7.67,0.21c-4.14,0-7.5,3.36-7.5,7.5s3.36,7.5,7.5,7.5s7.5-3.36,7.5-7.5S11.81,0.21,7.67,0.21z M7.67,12.93                                 c-2.89,0-5.22-2.34-5.22-5.22s2.34-5.22,5.22-5.22s5.22,2.34,5.22,5.22S10.55,12.93,7.67,12.93z\"/>                                 <path class=\"st0\" d=\"M18.7,19.08l0.81-0.81c0.22-0.22,0.22-0.59,0-0.81l-6.55-6.55c-0.22-0.22-0.59-0.22-0.81,0l-0.81,0.81                                 c-0.22,0.22-0.22,0.59,0,0.81l6.55,6.55C18.11,19.3,18.48,19.3,18.7,19.08z\"/>                             </svg>');
INSERT INTO `header` VALUES (6,'icon-menu','nav-special-icon','','http://tension.local/kosik/','Košík','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                 <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                     viewBox=\"0 0 24.64 19.36\" style=\"enable-background:new 0 0 24.64 19.36;\" xml:space=\"preserve\">                                     <path class=\"st0\" d=\"M22.29,12.55H5.47c-0.15,0-0.27-0.09-0.3-0.22L3.2,1.58c0,0,0,0,0,0h20.65c0.37,0,0.65,0.3,0.59,0.62                                     l-1.86,10.12C22.56,12.45,22.44,12.55,22.29,12.55z\"/>                                     <rect x=\"5.4\" y=\"12.07\" transform=\"matrix(0.9883 -0.1523 0.1523 0.9883 -2.031 1.0706)\" class=\"st0\" width=\"1.15\" height=\"3.44\"/>                                     <circle class=\"st0\" cx=\"6.39\" cy=\"17.46\" r=\"1.72\"/>                                     <path class=\"st0\" d=\"M4.37,1.58H0.66c-0.23,0-0.41-0.19-0.41-0.43v-0.6c0-0.22,0.17-0.39,0.38-0.39H3.7c0.21,0,0.41,0.17,0.46,0.39                                     L4.37,1.58z\"/>                                     <path class=\"st0\" d=\"M21.89,16.22H5.94c-0.16,0-0.3-0.13-0.3-0.3v-0.68c0-0.16,0.13-0.3,0.3-0.3h15.95c0.16,0,0.3,0.13,0.3,0.3v0.68                                     C22.19,16.08,22.06,16.22,21.89,16.22z\"/>                                     <circle class=\"st0\" cx=\"21.25\" cy=\"17.46\" r=\"1.72\"/>                                 </svg>');
INSERT INTO `header` VALUES (7,'icon-menu','nav-special-icon','','http://tension.local/profil/','Profil','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                                 <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                                     viewBox=\"0 0 13.87 13.05\" style=\"enable-background:new 0 0 13.87 13.05;\" xml:space=\"preserve\">                                     <path class=\"st0\" d=\"M9.02,7.97c-0.04-0.01-0.09,0-0.13,0.02c-0.56,0.31-1.25,0.5-2,0.5c-0.75,0-1.44-0.19-2-0.5                                     C4.85,7.96,4.8,7.96,4.76,7.97c-2.64,0.66-4.55,2.51-4.59,4.7c0.07,0.08,0.11,0.12,0.19,0.19c1.5,0,11.56,0,13.06,0                                     c0.07-0.08,0.11-0.12,0.19-0.19C13.57,10.48,11.66,8.63,9.02,7.97z\"/>                                     <circle class=\"st0\" cx=\"6.89\" cy=\"3.49\" r=\"3.14\"/>                                     <line class=\"st0\" x1=\"3.56\" y1=\"5.2\" x2=\"3.56\" y2=\"5.69\"/>                                 </svg>');
INSERT INTO `header` VALUES (8,'side-bar','search-cross','','','Zavřít','<!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->                         <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"                             viewBox=\"0 0 14.37 14.3\" style=\"enable-background:new 0 0 14.37 14.3;\" xml:space=\"preserve\">                             <path d=\"M13.89,13.49l-0.26,0.26c-0.33,0.33-0.86,0.33-1.18,0L0.63,1.93C0.3,1.6,0.3,1.07,0.63,0.74l0.26-0.26                             c0.33-0.33,0.86-0.33,1.18,0L13.89,12.3C14.22,12.63,14.22,13.16,13.89,13.49z\"/>                             <path d=\"M0.63,13.49l0.26,0.26c0.33,0.33,0.86,0.33,1.18,0L13.89,1.93c0.33-0.33,0.33-0.86,0-1.18l-0.26-0.26                             c-0.33-0.33-0.86-0.33-1.18,0L0.63,12.3C0.3,12.63,0.3,13.16,0.63,13.49z\"/>                         </svg>');
INSERT INTO `header` VALUES (1,'logo-link','','','http://tension.local/','Domů','');
/*!40000 ALTER TABLE `header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-01-12 15:28:55','2022-01-12 15:28:55','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://tension.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://tension.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','tension','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:43:\"map-block-gutenberg/map-block-gutenberg.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','tension','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','tension','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','37','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1657553335','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:6:{i:1642372136;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1642390136;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1642433336;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642433383;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642692536;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','l0nKPmj^G}wy;1L5RKU?$aZr[Ojt~4V0N]0Jp,nYpc^m+Vt;q#)(Z&jIf#,2c[JS','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','qc5T1HZ<C@!XmB0ztFS$O!7K`5_m%9$a[!/5_${l%qK$@/Kw-:$vS,2-z<G-cGt^','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1642001407;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1642349086;s:15:\"version_checked\";s:5:\"5.8.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1642349087;s:7:\"checked\";a:4:{s:7:\"tension\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_8866308252d63f9bf74b74e606896148','1642606183','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_8866308252d63f9bf74b74e606896148','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"97.0.4692.71\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1642606183','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (150,'current_theme','Tension','yes');
INSERT INTO `wp_options` VALUES (151,'theme_mods_tension','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:14;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (152,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (155,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (166,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (179,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1642349086;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:43:\"map-block-gutenberg/map-block-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/map-block-gutenberg\";s:4:\"slug\";s:19:\"map-block-gutenberg\";s:6:\"plugin\";s:43:\"map-block-gutenberg/map-block-gutenberg.php\";s:11:\"new_version\";s:4:\"1.32\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/map-block-gutenberg/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/map-block-gutenberg.1.32.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/map-block-gutenberg/assets/icon-256x256.png?rev=1803377\";s:2:\"1x\";s:72:\"https://ps.w.org/map-block-gutenberg/assets/icon-128x128.png?rev=1803377\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/map-block-gutenberg/assets/banner-1544x500.png?rev=1803377\";s:2:\"1x\";s:74:\"https://ps.w.org/map-block-gutenberg/assets/banner-772x250.png?rev=1803377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}}','no');
INSERT INTO `wp_options` VALUES (231,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (232,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (235,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (239,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (268,'_site_transient_timeout_theme_roots','1642350887','no');
INSERT INTO `wp_options` VALUES (269,'_site_transient_theme_roots','a:4:{s:7:\"tension\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (4,3,'_wp_trash_meta_time','1642001389');
INSERT INTO `wp_postmeta` VALUES (5,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (6,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (7,2,'_wp_trash_meta_time','1642001390');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (9,7,'_edit_lock','1642001252:1');
INSERT INTO `wp_postmeta` VALUES (10,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (11,1,'_wp_trash_meta_time','1642001411');
INSERT INTO `wp_postmeta` VALUES (12,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (13,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (14,9,'_edit_lock','1642002079:1');
INSERT INTO `wp_postmeta` VALUES (17,11,'_edit_lock','1642011840:1');
INSERT INTO `wp_postmeta` VALUES (18,13,'_edit_lock','1642009040:1');
INSERT INTO `wp_postmeta` VALUES (19,15,'_edit_lock','1642007062:1');
INSERT INTO `wp_postmeta` VALUES (20,17,'_edit_lock','1642001999:1');
INSERT INTO `wp_postmeta` VALUES (23,19,'_edit_lock','1642002014:1');
INSERT INTO `wp_postmeta` VALUES (26,21,'_edit_lock','1642002031:1');
INSERT INTO `wp_postmeta` VALUES (29,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (30,9,'_wp_trash_meta_time','1642002199');
INSERT INTO `wp_postmeta` VALUES (31,9,'_wp_desired_post_slug','melodka-party');
INSERT INTO `wp_postmeta` VALUES (32,17,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (33,17,'_wp_trash_meta_time','1642002200');
INSERT INTO `wp_postmeta` VALUES (34,17,'_wp_desired_post_slug','koukr-x-tension');
INSERT INTO `wp_postmeta` VALUES (35,19,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (36,19,'_wp_trash_meta_time','1642002202');
INSERT INTO `wp_postmeta` VALUES (37,19,'_wp_desired_post_slug','tension-vol-2');
INSERT INTO `wp_postmeta` VALUES (38,21,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (39,21,'_wp_trash_meta_time','1642002203');
INSERT INTO `wp_postmeta` VALUES (40,21,'_wp_desired_post_slug','tension-vol-1');
INSERT INTO `wp_postmeta` VALUES (41,23,'_edit_lock','1642005785:1');
INSERT INTO `wp_postmeta` VALUES (44,25,'_edit_lock','1642004989:1');
INSERT INTO `wp_postmeta` VALUES (47,27,'_edit_lock','1642004834:1');
INSERT INTO `wp_postmeta` VALUES (50,29,'_edit_lock','1642004695:1');
INSERT INTO `wp_postmeta` VALUES (53,31,'_edit_lock','1642002131:1');
INSERT INTO `wp_postmeta` VALUES (56,33,'_edit_lock','1642005744:1');
INSERT INTO `wp_postmeta` VALUES (57,35,'_edit_lock','1642003092:1');
INSERT INTO `wp_postmeta` VALUES (58,37,'_edit_lock','1642003987:1');
INSERT INTO `wp_postmeta` VALUES (59,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (60,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (61,39,'_menu_item_object_id','37');
INSERT INTO `wp_postmeta` VALUES (62,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (63,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (64,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (65,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (66,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,40,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (69,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (70,40,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (71,40,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (72,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (73,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (74,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (75,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,41,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (78,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (79,41,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (80,41,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (81,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (82,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (83,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (84,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (95,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (96,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (97,43,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (98,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (99,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (100,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (101,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (102,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,46,'_wp_attached_file','2022/01/galery-two.jpg');
INSERT INTO `wp_postmeta` VALUES (109,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:22:\"2022/01/galery-two.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"galery-two-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"galery-two-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (112,29,'_thumbnail_id','46');
INSERT INTO `wp_postmeta` VALUES (117,51,'_wp_attached_file','2022/01/galery-one.jpg');
INSERT INTO `wp_postmeta` VALUES (118,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:22:\"2022/01/galery-one.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"galery-one-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"galery-one-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (121,27,'_thumbnail_id','51');
INSERT INTO `wp_postmeta` VALUES (124,54,'_wp_attached_file','2022/01/event.jpg');
INSERT INTO `wp_postmeta` VALUES (125,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2022/01/event.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"event-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"event-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (128,25,'_thumbnail_id','54');
INSERT INTO `wp_postmeta` VALUES (131,57,'_wp_attached_file','2022/01/galery-five.jpg');
INSERT INTO `wp_postmeta` VALUES (132,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:23:\"2022/01/galery-five.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"galery-five-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"galery-five-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (135,23,'_thumbnail_id','57');
INSERT INTO `wp_postmeta` VALUES (136,67,'_edit_lock','1642012332:1');
INSERT INTO `wp_postmeta` VALUES (137,68,'_wp_attached_file','2022/01/galery-one-1.jpg');
INSERT INTO `wp_postmeta` VALUES (138,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:24:\"2022/01/galery-one-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"galery-one-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"galery-one-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (141,67,'_thumbnail_id','68');
INSERT INTO `wp_postmeta` VALUES (146,71,'_edit_lock','1642012380:1');
INSERT INTO `wp_postmeta` VALUES (147,72,'_wp_attached_file','2022/01/galery-one-2.jpg');
INSERT INTO `wp_postmeta` VALUES (148,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:24:\"2022/01/galery-one-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"galery-one-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"galery-one-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (151,71,'_thumbnail_id','72');
INSERT INTO `wp_postmeta` VALUES (152,74,'_edit_lock','1642012407:1');
INSERT INTO `wp_postmeta` VALUES (153,75,'_wp_attached_file','2022/01/galery-one-3.jpg');
INSERT INTO `wp_postmeta` VALUES (154,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:24:\"2022/01/galery-one-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"galery-one-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"galery-one-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (157,74,'_thumbnail_id','75');
INSERT INTO `wp_postmeta` VALUES (158,77,'_edit_lock','1642012614:1');
INSERT INTO `wp_postmeta` VALUES (159,78,'_wp_attached_file','2022/01/galery-one-4.jpg');
INSERT INTO `wp_postmeta` VALUES (160,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:24:\"2022/01/galery-one-4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"galery-one-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"galery-one-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (163,77,'_thumbnail_id','78');
INSERT INTO `wp_postmeta` VALUES (164,80,'_edit_lock','1642012520:1');
INSERT INTO `wp_postmeta` VALUES (165,81,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (166,81,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (167,81,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (168,81,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (169,81,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (170,81,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (171,81,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (172,81,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (174,39,'_wp_old_date','2022-01-12');
INSERT INTO `wp_postmeta` VALUES (175,40,'_wp_old_date','2022-01-12');
INSERT INTO `wp_postmeta` VALUES (176,81,'_wp_old_date','2022-01-12');
INSERT INTO `wp_postmeta` VALUES (177,41,'_wp_old_date','2022-01-12');
INSERT INTO `wp_postmeta` VALUES (178,43,'_wp_old_date','2022-01-12');
INSERT INTO `wp_postmeta` VALUES (179,82,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (180,82,'_wp_trash_meta_time','1642084382');
INSERT INTO `wp_postmeta` VALUES (181,83,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (182,83,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (183,83,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (184,83,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (185,83,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (186,83,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (187,83,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (188,83,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (190,84,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (191,84,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (192,84,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (193,84,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (194,84,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (195,84,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (196,84,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (197,84,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (199,85,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (200,85,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (201,85,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (202,85,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (203,85,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (204,85,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (205,85,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (206,85,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-01-12 15:28:55','2022-01-12 15:28:55','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2022-01-12 15:30:11','2022-01-12 15:30:11','',0,'http://tension.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-01-12 15:28:55','2022-01-12 15:28:55','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://tension.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2022-01-12 15:29:50','2022-01-12 15:29:50','',0,'http://tension.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-01-12 15:28:55','2022-01-12 15:28:55','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://tension.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2022-01-12 15:29:49','2022-01-12 15:29:49','',0,'http://tension.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2022-01-12 15:29:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-01-12 15:29:43','0000-00-00 00:00:00','',0,'http://tension.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-01-12 15:29:49','2022-01-12 15:29:49','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://tension.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-01-12 15:29:49','2022-01-12 15:29:49','',3,'http://tension.local/?p=5',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-01-12 15:29:50','2022-01-12 15:29:50','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://tension.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-01-12 15:29:50','2022-01-12 15:29:50','',2,'http://tension.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-01-12 15:29:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-01-12 15:29:53','0000-00-00 00:00:00','',0,'http://tension.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-01-12 15:30:11','2022-01-12 15:30:11','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2022-01-12 15:30:11','2022-01-12 15:30:11','',1,'http://tension.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-01-12 15:31:32','2022-01-12 15:31:32','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Melodka párty','Přijďte se podívat','trash','open','open','','melodka-party__trashed','','','2022-01-12 15:43:19','2022-01-12 15:43:19','',0,'http://tension.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-01-12 15:31:32','2022-01-12 15:31:32','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Melodka párty','Přijďte se podívat','inherit','closed','closed','','9-revision-v1','','','2022-01-12 15:31:32','2022-01-12 15:31:32','',9,'http://tension.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-01-12 15:41:44','2022-01-12 15:41:44','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Kontakt','Pokud něco potřebujete, neváhejte se ozvat','publish','closed','closed','','kontakt','','','2022-01-12 18:24:47','2022-01-12 18:24:47','',0,'http://tension.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-01-12 15:41:44','2022-01-12 15:41:44','','Kontakt','','inherit','closed','closed','','11-revision-v1','','','2022-01-12 15:41:44','2022-01-12 15:41:44','',11,'http://tension.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-01-12 15:41:53','2022-01-12 15:41:53','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Košík',' Zde najdete produkty uložené ke koupení ','publish','closed','closed','','kosik','','','2022-01-12 17:37:24','2022-01-12 17:37:24','',0,'http://tension.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-01-12 15:41:53','2022-01-12 15:41:53','','Košík','','inherit','closed','closed','','13-revision-v1','','','2022-01-12 15:41:53','2022-01-12 15:41:53','',13,'http://tension.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-01-12 15:42:01','2022-01-12 15:42:01','<!-- wp:post-excerpt /-->','Profil','Zde najdete informace o vašech objednávkach a účtě','publish','closed','closed','','profil','','','2022-01-12 17:06:46','2022-01-12 17:06:46','',0,'http://tension.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-01-12 15:42:01','2022-01-12 15:42:01','','Profil','','inherit','closed','closed','','15-revision-v1','','','2022-01-12 15:42:01','2022-01-12 15:42:01','',15,'http://tension.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-01-12 15:42:22','2022-01-12 15:42:22','','Koukr X Tension','','trash','open','open','','koukr-x-tension__trashed','','','2022-01-12 15:43:20','2022-01-12 15:43:20','',0,'http://tension.local/?p=17',0,'post','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-01-12 15:42:22','2022-01-12 15:42:22','','Koukr X Tension','','inherit','closed','closed','','17-revision-v1','','','2022-01-12 15:42:22','2022-01-12 15:42:22','',17,'http://tension.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-01-12 15:42:36','2022-01-12 15:42:36','','Tension vol. 2','','trash','open','open','','tension-vol-2__trashed','','','2022-01-12 15:43:22','2022-01-12 15:43:22','',0,'http://tension.local/?p=19',0,'post','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-01-12 15:42:36','2022-01-12 15:42:36','','Tension vol. 2','','inherit','closed','closed','','19-revision-v1','','','2022-01-12 15:42:36','2022-01-12 15:42:36','',19,'http://tension.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-01-12 15:42:50','2022-01-12 15:42:50','','Tension vol. 1','','trash','open','open','','tension-vol-1__trashed','','','2022-01-12 15:43:23','2022-01-12 15:43:23','',0,'http://tension.local/?p=21',0,'post','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-01-12 15:42:50','2022-01-12 15:42:50','','Tension vol. 1','','inherit','closed','closed','','21-revision-v1','','','2022-01-12 15:42:50','2022-01-12 15:42:50','',21,'http://tension.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-01-12 15:43:39','2022-01-12 15:43:39','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>A JE TO TADY!</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nemalou chvíli jste čekali, ale dočkali jste se, už 17.1. 2020 vypukne první Tension_01 event ve Vibe Club Brno.<br>Chceme vás tedy pozvat a poděkovat za veškerou podporu co jste nám dali a právě proto, pro vás chystáme tuto nadupanou akci.🖤</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🎧Můžete se těšit🎧</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1. Na nabitý playlist těch nejlepších songů🎤<br>2. Tension DJ’s🎧<br>3. Vytuněný sound system🎼<br>4. Konfety a jiné vychytávky<br>5. Akční drinky🍸</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>❗️Podmínky❗️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1. Vstup 15+ s platným OP<br>2. 100 Kč<br>3. Od 23:30 150 Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🖤START🖤</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>21:00-3:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Vibe\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Vibe&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->','Tension vol. 1','Je to tu. Premiéra Tension akce','publish','open','open','','tension-vol-1','','','2022-01-12 16:31:56','2022-01-12 16:31:56','',0,'http://tension.local/?p=23',0,'post','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-01-12 15:43:39','2022-01-12 15:43:39','','Tension vol. 1','','inherit','closed','closed','','23-revision-v1','','','2022-01-12 15:43:39','2022-01-12 15:43:39','',23,'http://tension.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-01-12 15:43:51','2022-01-12 15:43:51','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️TENSION VOLUME TWO‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Po minulé akci kdy jste udělali na Melodce extrémní hell, si vás dovolujeme pozvat do Kabinetu Múz v srpnu 7.8. kdy vás tam budeme chtít vidět ještě víc a větší bordel⚡️⚡️⚡️<br>Chceme vidět jak vyprodáme Kabinet🔥<br>Zákaz vstupu na stage!!🙏🏻</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️Tension DJ’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Adam Kriegel<br>Martin Kocman</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️VSTUP‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>150Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🥂 Akční drinky🥂</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Cuba libre = 80 Kč Gin Tonic = 80 Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Těšíme se na vás a celá crew TENSION🤩✌🏾</h3>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Kabinet Múz\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Kabinet%20M%C3%BAz&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->','Tension vol. 2','Děkujeme za účast na Tension Vol. 1, teď tu máme další','publish','open','open','','tension-vol-2','','','2022-01-12 16:29:30','2022-01-12 16:29:30','',0,'http://tension.local/?p=25',0,'post','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-01-12 15:43:51','2022-01-12 15:43:51','','Tension vol. 2','','inherit','closed','closed','','25-revision-v1','','','2022-01-12 15:43:51','2022-01-12 15:43:51','',25,'http://tension.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-01-12 15:44:04','2022-01-12 15:44:04','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p>Vítáme vás u dalšího eventu se speciálním hostem Koukrem a celým Black Sheep Cartelem. Na konci srpna 29.8. nás můžete vidět na Melodce a doufáme že všichni dojdete a zboříme to tam.⚡️</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️LINEUP‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>21:00-22:00 Adam Kriegel<br>22:00-22:15 Adam Kriegel + Martin Kocman<br>22:15-23:15 Martin Kocman<br>23:15-23:30 Adam Kriegel + Martin Kocman<br>23:30-0:00 FNL + RICO<br>0:00-1:30 Koukr + BSC<br>1:30-3:00 Adam Kriegel + Martin Kocman<br>22:00-22:30 focení s fanoušky‼️</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️Tension DJ’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Adam Kriegel<br>Martin Kocman</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>!!Vstup‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>200Kč - na místě</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🥂Akční drinky🥂</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Gin Tonic - 80Kč<br>Cuba Libre - 80K</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Vibe\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Vibe&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->','Tension X Koukr','Připravili jsme akci se speciálním hostem','publish','open','open','','tension-x-koukr','','','2022-01-12 16:27:02','2022-01-12 16:27:02','',0,'http://tension.local/?p=27',0,'post','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-01-12 15:44:04','2022-01-12 15:44:04','','Tension X Koukr','','inherit','closed','closed','','27-revision-v1','','','2022-01-12 15:44:04','2022-01-12 15:44:04','',27,'http://tension.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-01-12 15:44:13','2022-01-12 15:44:13','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p>Ahoj, chceme vás pozvat na naši další akci s názvem AFTERCOVID PARTY. Po druhé nevydařené akci kvůli “karanténaviru” jsme vás nechtěli nechat čekat a připravili jsme NADUPANOU akci na Melodce🔥<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️AKCE⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Datum - 19.6. 2020<br>Vstup - 100Kč s platným OP (15+)<br>Vstup od 18:00 100Kč, od 22:00 - 150Kč<br>KONEC 23:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️TENSION Dj’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Martin Kocman<br>Adam Kriegel</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>✌🏾Team TENSION</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Informace i na našem IG @tensionevents</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Melodka\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Melodka&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Melodka párty','Připravili jsme pro vás nadupanou akci','publish','open','open','','melodka-party','','','2022-01-12 16:24:57','2022-01-12 16:24:57','',0,'http://tension.local/?p=29',0,'post','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-01-12 15:44:13','2022-01-12 15:44:13','','Melodka párty','','inherit','closed','closed','','29-revision-v1','','','2022-01-12 15:44:13','2022-01-12 15:44:13','',29,'http://tension.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-01-12 15:44:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-01-12 15:44:34','0000-00-00 00:00:00','',0,'http://tension.local/?p=31',0,'post','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-01-12 16:00:26','2022-01-12 16:00:26','','Cookies','','publish','closed','closed','','cookies','','','2022-01-12 16:00:26','2022-01-12 16:00:26','',0,'http://tension.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-01-12 16:00:26','2022-01-12 16:00:26','','Cookies','','inherit','closed','closed','','33-revision-v1','','','2022-01-12 16:00:26','2022-01-12 16:00:26','',33,'http://tension.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-01-12 16:00:36','2022-01-12 16:00:36','','Podmínky','','publish','closed','closed','','podminky','','','2022-01-12 16:00:36','2022-01-12 16:00:36','',0,'http://tension.local/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-01-12 16:00:36','2022-01-12 16:00:36','','Podmínky','','inherit','closed','closed','','35-revision-v1','','','2022-01-12 16:00:36','2022-01-12 16:00:36','',35,'http://tension.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-01-12 16:15:29','2022-01-12 16:15:29','','Domů','','publish','closed','closed','','domu','','','2022-01-12 16:15:29','2022-01-12 16:15:29','',0,'http://tension.local/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-01-12 16:15:29','2022-01-12 16:15:29','','Domů','','inherit','closed','closed','','37-revision-v1','','','2022-01-12 16:15:29','2022-01-12 16:15:29','',37,'http://tension.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-01-13 14:32:29','2022-01-12 16:18:44',' ','','','publish','closed','closed','','39','','','2022-01-13 14:32:29','2022-01-13 14:32:29','',0,'http://tension.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-01-13 14:32:29','2022-01-12 16:18:44',' ','','','publish','closed','closed','','40','','','2022-01-13 14:32:29','2022-01-13 14:32:29','',0,'http://tension.local/?p=40',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-01-13 14:32:29','2022-01-12 16:18:44',' ','','','publish','closed','closed','','41','','','2022-01-13 14:32:29','2022-01-13 14:32:29','',0,'http://tension.local/?p=41',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-01-13 14:32:29','2022-01-12 16:18:44',' ','','','publish','closed','closed','','43','','','2022-01-13 14:32:29','2022-01-13 14:32:29','',0,'http://tension.local/?p=43',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-01-12 16:20:36','2022-01-12 16:20:36','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p>Ahoj, chceme vás pozvat na naši další akci s názvem AFTERCOVID PARTY. Po druhé nevydařené akci kvůli “karanténaviru” jsme vás nechtěli nechat čekat a připravili jsme NADUPANOU akci na Melodce🔥<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️AKCE⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Datum - 19.6. 2020<br>Vstup - 100Kč s platným OP (15+)<br>Vstup od 18:00 100Kč, od 22:00 - 150Kč<br>KONEC 23:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️TENSION Dj’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Martin Kocman<br>Adam Kriegel</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>✌🏾Team TENSION</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Informace i na našem IG @tensionevents</p>\n<!-- /wp:paragraph -->','Melodka párty','Připravili jsme pro vás nadupanou akci','inherit','closed','closed','','29-revision-v1','','','2022-01-12 16:20:36','2022-01-12 16:20:36','',29,'http://tension.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-01-12 16:22:34','2022-01-12 16:22:34','','galery-two','','inherit','open','closed','','galery-two','','','2022-01-12 16:22:34','2022-01-12 16:22:34','',29,'http://tension.local/wp-content/uploads/2022/01/galery-two.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-01-12 16:22:36','2022-01-12 16:22:36','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p>Ahoj, chceme vás pozvat na naši další akci s názvem AFTERCOVID PARTY. Po druhé nevydařené akci kvůli “karanténaviru” jsme vás nechtěli nechat čekat a připravili jsme NADUPANOU akci na Melodce🔥<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️AKCE⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Datum - 19.6. 2020<br>Vstup - 100Kč s platným OP (15+)<br>Vstup od 18:00 100Kč, od 22:00 - 150Kč<br>KONEC 23:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️TENSION Dj’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Martin Kocman<br>Adam Kriegel</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>✌🏾Team TENSION</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Informace i na našem IG @tensionevents</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->','Melodka párty','Připravili jsme pro vás nadupanou akci','inherit','closed','closed','','29-revision-v1','','','2022-01-12 16:22:36','2022-01-12 16:22:36','',29,'http://tension.local/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-01-12 16:24:55','2022-01-12 16:24:55','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p>Ahoj, chceme vás pozvat na naši další akci s názvem AFTERCOVID PARTY. Po druhé nevydařené akci kvůli “karanténaviru” jsme vás nechtěli nechat čekat a připravili jsme NADUPANOU akci na Melodce🔥<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️AKCE⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Datum - 19.6. 2020<br>Vstup - 100Kč s platným OP (15+)<br>Vstup od 18:00 100Kč, od 22:00 - 150Kč<br>KONEC 23:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️TENSION Dj’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Martin Kocman<br>Adam Kriegel</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>✌🏾Team TENSION</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Informace i na našem IG @tensionevents</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Melodka\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Melodka&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Melodka párty','Připravili jsme pro vás nadupanou akci','inherit','closed','closed','','29-autosave-v1','','','2022-01-12 16:24:55','2022-01-12 16:24:55','',29,'http://tension.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-01-12 16:24:57','2022-01-12 16:24:57','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p>Ahoj, chceme vás pozvat na naši další akci s názvem AFTERCOVID PARTY. Po druhé nevydařené akci kvůli “karanténaviru” jsme vás nechtěli nechat čekat a připravili jsme NADUPANOU akci na Melodce🔥<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️AKCE⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Datum - 19.6. 2020<br>Vstup - 100Kč s platným OP (15+)<br>Vstup od 18:00 100Kč, od 22:00 - 150Kč<br>KONEC 23:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️TENSION Dj’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Martin Kocman<br>Adam Kriegel</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>✌🏾Team TENSION</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Informace i na našem IG @tensionevents</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Melodka\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Melodka&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Melodka párty','Připravili jsme pro vás nadupanou akci','inherit','closed','closed','','29-revision-v1','','','2022-01-12 16:24:57','2022-01-12 16:24:57','',29,'http://tension.local/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-01-12 16:25:41','2022-01-12 16:25:41','<!-- wp:post-excerpt /-->','Tension X Koukr','Připravili jsme akci se speciálním hostem','inherit','closed','closed','','27-revision-v1','','','2022-01-12 16:25:41','2022-01-12 16:25:41','',27,'http://tension.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-01-12 16:25:55','2022-01-12 16:25:55','','galery-one','','inherit','open','closed','','galery-one','','','2022-01-12 16:25:55','2022-01-12 16:25:55','',27,'http://tension.local/wp-content/uploads/2022/01/galery-one.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-01-12 16:26:14','2022-01-12 16:26:14','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p>Vítáme vás u dalšího eventu se speciálním hostem Koukrem a celým Black Sheep Cartelem. Na konci srpna 29.8. nás můžete vidět na Melodce a doufáme že všichni dojdete a zboříme to tam.⚡️</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️LINEUP‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>21:00-22:00 Adam Kriegel<br>22:00-22:15 Adam Kriegel + Martin Kocman<br>22:15-23:15 Martin Kocman<br>23:15-23:30 Adam Kriegel + Martin Kocman<br>23:30-0:00 FNL + RICO<br>0:00-1:30 Koukr + BSC<br>1:30-3:00 Adam Kriegel + Martin Kocman<br>22:00-22:30 focení s fanoušky‼️</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️Tension DJ’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Adam Kriegel<br>Martin Kocman</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>!!Vstup‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>200Kč - na místě</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🥂Akční drinky🥂</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Gin Tonic - 80Kč<br>Cuba Libre - 80K</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Tension X Koukr','Připravili jsme akci se speciálním hostem','inherit','closed','closed','','27-autosave-v1','','','2022-01-12 16:26:14','2022-01-12 16:26:14','',27,'http://tension.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-01-12 16:26:38','2022-01-12 16:26:38','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p>Vítáme vás u dalšího eventu se speciálním hostem Koukrem a celým Black Sheep Cartelem. Na konci srpna 29.8. nás můžete vidět na Melodce a doufáme že všichni dojdete a zboříme to tam.⚡️</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️LINEUP‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>21:00-22:00 Adam Kriegel<br>22:00-22:15 Adam Kriegel + Martin Kocman<br>22:15-23:15 Martin Kocman<br>23:15-23:30 Adam Kriegel + Martin Kocman<br>23:30-0:00 FNL + RICO<br>0:00-1:30 Koukr + BSC<br>1:30-3:00 Adam Kriegel + Martin Kocman<br>22:00-22:30 focení s fanoušky‼️</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️Tension DJ’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Adam Kriegel<br>Martin Kocman</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>!!Vstup‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>200Kč - na místě</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🥂Akční drinky🥂</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Gin Tonic - 80Kč<br>Cuba Libre - 80K</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Vibe\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Vibe&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->','Tension X Koukr','Připravili jsme akci se speciálním hostem','inherit','closed','closed','','27-revision-v1','','','2022-01-12 16:26:38','2022-01-12 16:26:38','',27,'http://tension.local/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-01-12 16:28:28','2022-01-12 16:28:28','','event','','inherit','open','closed','','event','','','2022-01-12 16:28:28','2022-01-12 16:28:28','',25,'http://tension.local/wp-content/uploads/2022/01/event.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-01-12 16:28:49','2022-01-12 16:28:49','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️TENSION VOLUME TWO‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Po minulé akci kdy jste udělali na Melodce extrémní hell, si vás dovolujeme pozvat do Kabinetu Múz v srpnu 7.8. kdy vás tam budeme chtít vidět ještě víc a větší bordel⚡️⚡️⚡️<br>Chceme vidět jak vyprodáme Kabinet🔥<br>Zákaz vstupu na stage!!🙏🏻</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️Tension DJ’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Adam Kriegel<br>Martin Kocman</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️VSTUP‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>150Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🥂 Akční drinky🥂</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Cuba libre = 80 Kč Gin Tonic = 80 Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Těšíme se na vás a celá crew TENSION🤩✌🏾</h3>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Theater%20District%2C%20New%20York%2C%20USA&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->','Tension vol. 2','Děkujeme za účast na Tension Vol. 1, teď tu máme další','inherit','closed','closed','','25-autosave-v1','','','2022-01-12 16:28:49','2022-01-12 16:28:49','',25,'http://tension.local/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-01-12 16:29:04','2022-01-12 16:29:04','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️TENSION VOLUME TWO‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Po minulé akci kdy jste udělali na Melodce extrémní hell, si vás dovolujeme pozvat do Kabinetu Múz v srpnu 7.8. kdy vás tam budeme chtít vidět ještě víc a větší bordel⚡️⚡️⚡️<br>Chceme vidět jak vyprodáme Kabinet🔥<br>Zákaz vstupu na stage!!🙏🏻</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>⚡️Tension DJ’s⚡️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Adam Kriegel<br>Martin Kocman</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>‼️VSTUP‼️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>150Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🥂 Akční drinky🥂</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Cuba libre = 80 Kč Gin Tonic = 80 Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Těšíme se na vás a celá crew TENSION🤩✌🏾</h3>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Kabinet Múz\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Kabinet%20M%C3%BAz&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->','Tension vol. 2','Děkujeme za účast na Tension Vol. 1, teď tu máme další','inherit','closed','closed','','25-revision-v1','','','2022-01-12 16:29:04','2022-01-12 16:29:04','',25,'http://tension.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-01-12 16:30:35','2022-01-12 16:30:35','','galery-five','','inherit','open','closed','','galery-five','','','2022-01-12 16:30:35','2022-01-12 16:30:35','',23,'http://tension.local/wp-content/uploads/2022/01/galery-five.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-01-12 16:30:59','2022-01-12 16:30:59','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>A JE TO TADY!</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nemalou chvíli jste čekali, ale dočkali jste se, už 17.1. 2020 vypukne první Tension_01 event ve Vibe Club Brno.<br>Chceme vás tedy pozvat a poděkovat za veškerou podporu co jste nám dali a právě proto, pro vás chystáme tuto nadupanou akci.🖤</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🎧Můžete se těšit🎧</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1. Na nabitý playlist těch nejlepších songů🎤<br>2. Tension DJ’s🎧<br>3. Vytuněný sound system🎼<br>4. Konfety a jiné vychytávky<br>5. Akční drinky🍸</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>❗️Podmínky❗️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1. Vstup 15+ s platným OP<br>2. 100 Kč<br>3. Od 23:30 150 Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🖤START🖤</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>21:00-3:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Tension vol. 1','Je to tu. Premiéra Tension akce','inherit','closed','closed','','23-autosave-v1','','','2022-01-12 16:30:59','2022-01-12 16:30:59','',23,'http://tension.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-01-12 16:31:56','2022-01-12 16:31:56','<!-- wp:post-excerpt /-->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>A JE TO TADY!</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nemalou chvíli jste čekali, ale dočkali jste se, už 17.1. 2020 vypukne první Tension_01 event ve Vibe Club Brno.<br>Chceme vás tedy pozvat a poděkovat za veškerou podporu co jste nám dali a právě proto, pro vás chystáme tuto nadupanou akci.🖤</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🎧Můžete se těšit🎧</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1. Na nabitý playlist těch nejlepších songů🎤<br>2. Tension DJ’s🎧<br>3. Vytuněný sound system🎼<br>4. Konfety a jiné vychytávky<br>5. Akční drinky🍸</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>❗️Podmínky❗️</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1. Vstup 15+ s platným OP<br>2. 100 Kč<br>3. Od 23:30 150 Kč</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>🖤START🖤</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>21:00-3:00</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n\n<!-- wp:webfactory/map {\"address\":\"Vibe\"} -->\n<div class=\"wp-block-webfactory-map\"><div class=\"wp-block-webfactory-map\"><iframe width=\"100%\" height=\"300px\" src=\"https://www.google.com/maps/embed/v1/place?q=Vibe&amp;maptype=roadmap&amp;zoom=10&amp;key=AIzaSyAjyDspiPfzEfjRSS5fQzm-3jHFjHxeXB4\" frameborder=\"0\"></iframe></div></div>\n<!-- /wp:webfactory/map -->\n\n<!-- wp:shortcode /-->','Tension vol. 1','Je to tu. Premiéra Tension akce','inherit','closed','closed','','23-revision-v1','','','2022-01-12 16:31:56','2022-01-12 16:31:56','',23,'http://tension.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-01-12 17:06:19','2022-01-12 17:06:19','<!-- wp:paragraph -->\n<p>Zde najdete produkty uložené ke koupení</p>\n<!-- /wp:paragraph -->','Košík','','inherit','closed','closed','','13-revision-v1','','','2022-01-12 17:06:19','2022-01-12 17:06:19','',13,'http://tension.local/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-01-12 17:06:46','2022-01-12 17:06:46','<!-- wp:post-excerpt /-->','Profil','Zde najdete informace o vašech objednávkach a účtě','inherit','closed','closed','','15-revision-v1','','','2022-01-12 17:06:46','2022-01-12 17:06:46','',15,'http://tension.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-01-12 17:07:04','2022-01-12 17:07:04','<!-- wp:post-excerpt /-->','Košík',' Zde najdete produkty uložené ke koupení ','inherit','closed','closed','','13-revision-v1','','','2022-01-12 17:07:04','2022-01-12 17:07:04','',13,'http://tension.local/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-01-12 17:37:24','2022-01-12 17:37:24','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Košík',' Zde najdete produkty uložené ke koupení ','inherit','closed','closed','','13-revision-v1','','','2022-01-12 17:37:24','2022-01-12 17:37:24','',13,'http://tension.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-01-12 17:41:21','2022-01-12 17:41:21','<!-- wp:post-excerpt /-->','Kontakt','Pokud něco potřebujete, neváhejte se ozvat','inherit','closed','closed','','11-revision-v1','','','2022-01-12 17:41:21','2022-01-12 17:41:21','',11,'http://tension.local/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-01-12 18:23:08','2022-01-12 18:23:08','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Kontakt','Pokud něco potřebujete, neváhejte se ozvat','inherit','closed','closed','','11-autosave-v1','','','2022-01-12 18:23:08','2022-01-12 18:23:08','',11,'http://tension.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-01-12 18:24:47','2022-01-12 18:24:47','<!-- wp:post-excerpt /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Kontakt','Pokud něco potřebujete, neváhejte se ozvat','inherit','closed','closed','','11-revision-v1','','','2022-01-12 18:24:47','2022-01-12 18:24:47','',11,'http://tension.local/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2022-01-12 18:33:38','2022-01-12 18:33:38','<!-- wp:post-featured-image /-->','Koukr X Tension','','publish','open','open','','67-2','','','2022-01-12 18:34:35','2022-01-12 18:34:35','',0,'http://tension.local/?p=67',0,'post','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2022-01-12 18:33:36','2022-01-12 18:33:36','','galery-one-1','','inherit','open','closed','','galery-one-1','','','2022-01-12 18:33:36','2022-01-12 18:33:36','',67,'http://tension.local/wp-content/uploads/2022/01/galery-one-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2022-01-12 18:33:38','2022-01-12 18:33:38','<!-- wp:post-featured-image /-->','','','inherit','closed','closed','','67-revision-v1','','','2022-01-12 18:33:38','2022-01-12 18:33:38','',67,'http://tension.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2022-01-12 18:34:35','2022-01-12 18:34:35','<!-- wp:post-featured-image /-->','Koukr X Tension','','inherit','closed','closed','','67-revision-v1','','','2022-01-12 18:34:35','2022-01-12 18:34:35','',67,'http://tension.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2022-01-12 18:35:22','2022-01-12 18:35:22','<!-- wp:post-featured-image /-->','Koukr X Tension','','publish','open','open','','koukr-x-tension','','','2022-01-12 18:35:22','2022-01-12 18:35:22','',0,'http://tension.local/?p=71',0,'post','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2022-01-12 18:35:14','2022-01-12 18:35:14','','galery-one-2','','inherit','open','closed','','galery-one-2','','','2022-01-12 18:35:14','2022-01-12 18:35:14','',71,'http://tension.local/wp-content/uploads/2022/01/galery-one-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2022-01-12 18:35:22','2022-01-12 18:35:22','<!-- wp:post-featured-image /-->','Koukr X Tension','','inherit','closed','closed','','71-revision-v1','','','2022-01-12 18:35:22','2022-01-12 18:35:22','',71,'http://tension.local/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2022-01-12 18:35:49','2022-01-12 18:35:49','<!-- wp:post-featured-image /-->','Koukr X Tension','','publish','open','open','','koukr-x-tension-2','','','2022-01-12 18:35:49','2022-01-12 18:35:49','',0,'http://tension.local/?p=74',0,'post','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2022-01-12 18:35:48','2022-01-12 18:35:48','','galery-one-3','','inherit','open','closed','','galery-one-3','','','2022-01-12 18:35:48','2022-01-12 18:35:48','',74,'http://tension.local/wp-content/uploads/2022/01/galery-one-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2022-01-12 18:35:49','2022-01-12 18:35:49','<!-- wp:post-featured-image /-->','Koukr X Tension','','inherit','closed','closed','','74-revision-v1','','','2022-01-12 18:35:49','2022-01-12 18:35:49','',74,'http://tension.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2022-01-12 18:36:28','2022-01-12 18:36:28','<!-- wp:post-featured-image /-->','Koukr X Tension','','publish','open','open','','koukr-x-tension-3','','','2022-01-12 18:36:28','2022-01-12 18:36:28','',0,'http://tension.local/?p=77',0,'post','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2022-01-12 18:36:16','2022-01-12 18:36:16','','galery-one-4','','inherit','open','closed','','galery-one-4','','','2022-01-12 18:36:16','2022-01-12 18:36:16','',77,'http://tension.local/wp-content/uploads/2022/01/galery-one-4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2022-01-12 18:36:28','2022-01-12 18:36:28','<!-- wp:post-featured-image /-->','Koukr X Tension','','inherit','closed','closed','','77-revision-v1','','','2022-01-12 18:36:28','2022-01-12 18:36:28','',77,'http://tension.local/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2022-01-12 18:37:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-01-12 18:37:43','0000-00-00 00:00:00','',0,'http://tension.local/?p=80',0,'post','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2022-01-13 14:32:29','2022-01-12 18:41:02','Reprezentujte nás na svém oblečení','','','publish','closed','closed','','81','','','2022-01-13 14:32:29','2022-01-13 14:32:29','',0,'http://tension.local/?p=81',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2022-01-13 14:33:02','2022-01-13 14:33:02','{\n    \"tension::nav_menu_locations[footer]\": {\n        \"value\": -5600443940506989000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-13 14:33:02\"\n    },\n    \"nav_menu[-5600443940506989000]\": {\n        \"value\": {\n            \"name\": \"footer_menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-13 14:33:02\"\n    }\n}','','','trash','closed','closed','','8b0bdd2a-7618-47f1-893f-779f920dc1d1','','','2022-01-13 14:33:02','2022-01-13 14:33:02','',0,'http://tension.local/8b0bdd2a-7618-47f1-893f-779f920dc1d1/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2022-01-13 14:35:48','2022-01-13 14:33:39',' ','','','publish','closed','closed','','83','','','2022-01-13 14:35:48','2022-01-13 14:35:48','',0,'http://tension.local/?p=83',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2022-01-13 14:35:48','2022-01-13 14:33:39',' ','','','publish','closed','closed','','84','','','2022-01-13 14:35:48','2022-01-13 14:35:48','',0,'http://tension.local/?p=84',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2022-01-13 14:35:48','2022-01-13 14:33:39',' ','','','publish','closed','closed','','85','','','2022-01-13 14:35:48','2022-01-13 14:35:48','',0,'http://tension.local/?p=85',1,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (9,1,0);
INSERT INTO `wp_term_relationships` VALUES (17,1,0);
INSERT INTO `wp_term_relationships` VALUES (19,1,0);
INSERT INTO `wp_term_relationships` VALUES (21,1,0);
INSERT INTO `wp_term_relationships` VALUES (23,3,0);
INSERT INTO `wp_term_relationships` VALUES (23,9,0);
INSERT INTO `wp_term_relationships` VALUES (23,12,0);
INSERT INTO `wp_term_relationships` VALUES (25,3,0);
INSERT INTO `wp_term_relationships` VALUES (25,10,0);
INSERT INTO `wp_term_relationships` VALUES (25,11,0);
INSERT INTO `wp_term_relationships` VALUES (27,3,0);
INSERT INTO `wp_term_relationships` VALUES (27,8,0);
INSERT INTO `wp_term_relationships` VALUES (27,9,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (29,6,0);
INSERT INTO `wp_term_relationships` VALUES (29,7,0);
INSERT INTO `wp_term_relationships` VALUES (39,2,0);
INSERT INTO `wp_term_relationships` VALUES (40,2,0);
INSERT INTO `wp_term_relationships` VALUES (41,2,0);
INSERT INTO `wp_term_relationships` VALUES (43,2,0);
INSERT INTO `wp_term_relationships` VALUES (67,5,0);
INSERT INTO `wp_term_relationships` VALUES (71,5,0);
INSERT INTO `wp_term_relationships` VALUES (74,5,0);
INSERT INTO `wp_term_relationships` VALUES (77,5,0);
INSERT INTO `wp_term_relationships` VALUES (81,2,0);
INSERT INTO `wp_term_relationships` VALUES (83,14,0);
INSERT INTO `wp_term_relationships` VALUES (84,14,0);
INSERT INTO `wp_term_relationships` VALUES (85,14,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','Buďte v obraze',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Prohlédněte si, jak to u nás vypadá',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'post_tag','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'category','Reprezentujte nás na svém oblečení\r\n\r\n',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'nav_menu','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'header_menu','header_menu',0);
INSERT INTO `wp_terms` VALUES (3,'Akce','akce',0);
INSERT INTO `wp_terms` VALUES (5,'Galerie','galerie',0);
INSERT INTO `wp_terms` VALUES (6,'16.5.2021','16-5-2021',0);
INSERT INTO `wp_terms` VALUES (7,'Melodka','melodka',0);
INSERT INTO `wp_terms` VALUES (8,'16.4.2021','16-4-2021',0);
INSERT INTO `wp_terms` VALUES (9,'Vibe','vibe',0);
INSERT INTO `wp_terms` VALUES (10,'16.3.2021','16-3-2021',0);
INSERT INTO `wp_terms` VALUES (11,'Kabinet Múz','kabinet-muz',0);
INSERT INTO `wp_terms` VALUES (12,'16.2.2021','16-2-2021',0);
INSERT INTO `wp_terms` VALUES (13,'Merch','merch',0);
INSERT INTO `wp_terms` VALUES (14,'footer_menu','footer_menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"68e272ef9e064fd05da6b73b4cdf05cc256e59446ecdf2ceb99bc022279c7597\";a:4:{s:10:\"expiration\";i:1642174182;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36\";s:5:\"login\";i:1642001382;}s:64:\"cd06e0404f77b32ca19ca00d5dbb515222911ae38e4e0fb970fc62ea3a709f4c\";a:4:{s:10:\"expiration\";i:1642257102;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36\";s:5:\"login\";i:1642084302;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','14');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BYln0.S59HDlWoc9I9GhlQBZZ8QGj/1','admin','dev-email@flywheel.local','http://tension.local','2022-01-12 15:28:55','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-16 23:19:05
