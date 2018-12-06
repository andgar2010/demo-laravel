-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-12-2018 a las 19:01:59
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_demo_andgar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ad', '2018-12-06 23:59:06', '2018-12-06 23:59:06'),
(2, 'voluptas', '2018-12-06 23:59:06', '2018-12-06 23:59:06'),
(3, 'ipsum', '2018-12-06 23:59:06', '2018-12-06 23:59:06'),
(4, 'pariatur', '2018-12-06 23:59:06', '2018-12-06 23:59:06'),
(5, 'quod', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(6, 'id', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(7, 'voluptas', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(8, 'eum', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(9, 'repellat', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(10, 'nobis', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(11, 'quas', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(12, 'id', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(13, 'harum', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(14, 'necessitatibus', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(15, 'commodi', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(16, 'voluptate', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(17, 'doloremque', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(18, 'voluptates', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(19, 'tenetur', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(20, 'et', '2018-12-06 23:59:07', '2018-12-06 23:59:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2018_12_06_170101_create_categories_table', 1),
(16, '2018_12_06_170128_create_restaurants_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurants_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `restaurants`
--

INSERT INTO `restaurants` (`id`, `category_id`, `name`, `telephone`, `address`, `schedule`, `description`, `img_path`, `created_at`, `updated_at`) VALUES
(1, 20, 'Theresa Fisher', '+1-896-524-7458', '81803 Reynolds Parkway Apt. 448\nLake Allenestad, IA 76424-5488', '2007-02-12 21:20:59', 'culpa', 'https://lorempixel.com/640/480/?29792', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(2, 1, 'Dr. Gerson Kerluke', '1-538-630-7735 x4887', '134 Langworth Cliff Apt. 240\nMarcelleborough, AR 42787-8889', '1982-10-12 03:25:45', 'rerum', 'https://lorempixel.com/640/480/?19717', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(3, 16, 'Douglas Raynor', '+1-421-226-9696', '157 Christiansen Cove\nWest Kayleetown, VA 18214-7039', '1980-01-19 22:03:37', 'omnis', 'https://lorempixel.com/640/480/?89121', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(4, 17, 'Jeffery Metz', '221-693-2786', '21000 Stanton Skyway\nHuelston, RI 95315', '1987-03-03 05:39:10', 'a', 'https://lorempixel.com/640/480/?57814', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(5, 14, 'Miss Shyann Hermann MD', '680-380-2496 x1928', '702 Rowena Passage Apt. 749\nKaliport, WI 88545-9449', '1989-07-07 08:56:15', 'dolores', 'https://lorempixel.com/640/480/?34570', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(6, 3, 'Prof. Samson Hudson', '+1-763-921-6411', '62145 Turcotte Grove\nEast Nicolette, IA 72340', '1983-08-02 15:53:58', 'dolor', 'https://lorempixel.com/640/480/?73127', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(7, 19, 'Ronny Mann', '645-588-7704 x459', '178 Wilhelm Rest\nPort Verda, WV 01311-8080', '1977-03-29 08:20:00', 'qui', 'https://lorempixel.com/640/480/?29667', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(8, 15, 'Miss Leila Altenwerth', '(690) 282-6586', '7559 Ruben Knoll Suite 706\nNew Brownland, LA 56760', '2018-03-23 10:36:36', 'qui', 'https://lorempixel.com/640/480/?66945', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(9, 10, 'Woodrow Ryan', '227.505.2559', '606 Quigley Crossing Suite 487\nEmmerichchester, UT 26910-0562', '2005-08-21 22:10:44', 'totam', 'https://lorempixel.com/640/480/?70962', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(10, 10, 'Caterina Keeling DVM', '882.924.9030 x35742', '60610 Grimes Ferry\nNadertown, WY 34086', '2009-10-22 19:31:04', 'deserunt', 'https://lorempixel.com/640/480/?20459', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(11, 4, 'Dr. Cordelia Mraz III', '1-721-363-6840 x0135', '98775 Laurianne Neck\nWunschbury, WA 62556-2165', '2017-05-06 20:53:45', 'vitae', 'https://lorempixel.com/640/480/?74244', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(12, 4, 'Amber Ruecker', '1-510-564-4863', '719 Bergnaum Roads Suite 873\nPort Heath, TX 97682', '1989-10-11 10:46:38', 'aut', 'https://lorempixel.com/640/480/?74493', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(13, 16, 'Felicita Strosin', '+1-230-791-7994', '9903 Hahn Park\nPourosberg, IL 23088', '1998-09-07 07:38:46', 'aut', 'https://lorempixel.com/640/480/?82055', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(14, 11, 'Myrna Becker', '965-963-7833 x13709', '97187 Aniyah Mountains\nLake Velma, DE 50122-7114', '2018-02-17 11:07:11', 'et', 'https://lorempixel.com/640/480/?96277', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(15, 8, 'Colin Legros II', '1-738-849-1917', '280 Barrows Passage\nBahringerton, CO 51148', '1997-02-09 18:31:15', 'nisi', 'https://lorempixel.com/640/480/?33927', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(16, 20, 'Dr. Alfredo Bins', '+1.567.450.6277', '93829 Calista Garden Apt. 587\nNorth Ravenberg, WY 91060-8557', '2007-11-30 17:42:25', 'praesentium', 'https://lorempixel.com/640/480/?95826', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(17, 3, 'Juliana Dach', '+1-396-255-5408', '535 Jamie Isle\nLegrosshire, GA 40590', '2017-08-08 22:29:02', 'et', 'https://lorempixel.com/640/480/?16992', '2018-12-06 23:59:07', '2018-12-06 23:59:07'),
(18, 9, 'Alexzander Schowalter', '926-213-9412 x484', '461 Johns Grove Apt. 237\nSchroederfurt, MO 15942', '2009-05-23 23:15:50', 'explicabo', 'https://lorempixel.com/640/480/?51312', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(19, 12, 'Janis Morar', '+14185792670', '567 Alvah Garden\nEast Rozella, FL 85094-5267', '1974-11-11 04:27:58', 'provident', 'https://lorempixel.com/640/480/?16152', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(20, 13, 'Vance Shields', '(716) 320-7796 x726', '5414 Lessie Coves\nPort Monty, AZ 48893', '2003-07-22 23:28:59', 'aliquid', 'https://lorempixel.com/640/480/?41230', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(21, 16, 'Eino Bechtelar II', '(950) 932-8387', '77408 Josh Loop\nWest Casimir, IN 98938', '1986-12-03 01:44:12', 'quo', 'https://lorempixel.com/640/480/?72434', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(22, 5, 'Kaden Gerhold', '+1 (932) 452-3815', '37753 Cartwright Meadows Suite 679\nGloverton, MI 88676-4974', '2012-12-01 03:09:35', 'perferendis', 'https://lorempixel.com/640/480/?11086', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(23, 13, 'Prof. Osvaldo Towne MD', '234-374-5531', '455 Brakus Square Suite 755\nJeromefort, OR 53938', '1972-10-13 04:30:24', 'quibusdam', 'https://lorempixel.com/640/480/?54839', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(24, 19, 'Mrs. Audreanne Doyle MD', '683.864.6858', '83675 Hodkiewicz Station\nLake Diamond, AZ 69888-5539', '1976-12-23 10:44:41', 'maiores', 'https://lorempixel.com/640/480/?59865', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(25, 10, 'Micheal Schmeler', '768-828-8435 x346', '79821 Hackett Landing Suite 747\nArmstrongmouth, GA 15948', '2003-06-09 11:13:14', 'commodi', 'https://lorempixel.com/640/480/?79368', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(26, 9, 'Abraham Ondricka DDS', '+13407964359', '94540 Welch Orchard\nNorth Peterview, WA 36069-9718', '1978-03-21 03:19:26', 'rem', 'https://lorempixel.com/640/480/?88908', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(27, 1, 'Manuela Pfeffer', '(897) 866-2247', '70972 Collins Tunnel\nPort Jessie, VA 22197', '2017-03-01 11:49:01', 'quasi', 'https://lorempixel.com/640/480/?87940', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(28, 18, 'Prof. Leonor Roberts III', '469-842-6827', '270 Kuhn Expressway\nStrackehaven, AZ 26982-0660', '2018-10-02 12:44:51', 'voluptas', 'https://lorempixel.com/640/480/?52476', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(29, 14, 'Mrs. Karen Goyette', '962.219.0218', '8692 Bertrand Plains Suite 234\nBraulioton, PA 77059-6652', '1995-01-27 13:32:02', 'sit', 'https://lorempixel.com/640/480/?54712', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(30, 14, 'Violette Thiel', '+17155079004', '407 Lockman Turnpike Suite 972\nEast Staceyview, MO 29264', '2010-09-15 06:39:20', 'debitis', 'https://lorempixel.com/640/480/?57654', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(31, 12, 'Hester Predovic', '+1-591-386-6359', '4769 Macie Valley Suite 333\nDouglasview, MD 37567-2432', '1973-09-09 11:06:50', 'laboriosam', 'https://lorempixel.com/640/480/?75457', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(32, 4, 'Odessa Kessler Jr.', '+13542920108', '32401 Duane Way Apt. 986\nHettingerland, NH 45947-2023', '2011-03-09 21:20:49', 'vel', 'https://lorempixel.com/640/480/?43007', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(33, 14, 'Margarete Von', '236-761-2083', '4166 Hudson Haven\nEast Gino, IL 83425', '1992-07-24 20:16:01', 'non', 'https://lorempixel.com/640/480/?94512', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(34, 1, 'Mr. Arnulfo Hill', '1-386-681-0883', '1712 Trevion Path\nMonaville, ID 33583-3974', '1995-08-23 11:02:20', 'autem', 'https://lorempixel.com/640/480/?28738', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(35, 2, 'Kaley Doyle', '+1-970-209-6642', '3985 Garth Shore Apt. 560\nLednertown, AZ 73421', '1970-01-06 11:44:08', 'debitis', 'https://lorempixel.com/640/480/?18321', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(36, 2, 'Daryl Rempel', '668-473-7007 x714', '33579 Kimberly Orchard\nAutumnshire, AK 49828', '1986-06-30 23:40:06', 'dolorum', 'https://lorempixel.com/640/480/?14993', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(37, 5, 'Wilma McKenzie', '1-650-477-9504 x6581', '785 Cale Freeway\nEast Dakotaburgh, OK 80330', '2006-07-13 15:00:32', 'nam', 'https://lorempixel.com/640/480/?32806', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(38, 15, 'Dr. Arthur Bailey', '231-582-3705 x0466', '86052 Kailey Springs\nNew Laurenville, NC 78754-1189', '1992-03-11 09:50:21', 'ea', 'https://lorempixel.com/640/480/?83736', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(39, 10, 'Prof. Keshaun Kihn III', '650-788-4900', '68344 Justice Loop Suite 406\nLake Doyleborough, OH 20332', '1972-12-03 21:13:28', 'delectus', 'https://lorempixel.com/640/480/?41276', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(40, 11, 'Marcia Wolf', '1-320-962-7299 x66431', '25438 Schinner Harbors Apt. 315\nArdellaville, DC 52810', '1983-08-04 14:17:43', 'delectus', 'https://lorempixel.com/640/480/?54461', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(41, 12, 'Mr. Chase Dietrich DDS', '680-900-9738', '59742 Malcolm Viaduct\nTownefort, CA 62414', '1970-04-25 00:33:38', 'et', 'https://lorempixel.com/640/480/?21523', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(42, 13, 'Edwin Moen MD', '547.388.2117', '776 Linwood Union\nNorth Janiya, MO 22574-4397', '1981-03-29 12:46:12', 'sed', 'https://lorempixel.com/640/480/?66141', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(43, 19, 'Kelley Wolff', '640-520-4150', '73691 Mohammad Street Apt. 488\nDomingomouth, IL 05517-0898', '2003-03-11 23:09:26', 'quaerat', 'https://lorempixel.com/640/480/?46527', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(44, 16, 'Hazle Eichmann IV', '(941) 501-6797', '81781 Bins Brook Apt. 676\nLake Noah, OH 72835-4081', '2015-08-02 19:12:28', 'odit', 'https://lorempixel.com/640/480/?80771', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(45, 7, 'Maxie Armstrong', '636.813.1054', '47748 Broderick Inlet Suite 120\nStiedemannton, MI 80404', '1990-02-18 01:22:41', 'ut', 'https://lorempixel.com/640/480/?81342', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(46, 15, 'Wellington Heidenreich', '1-620-692-6765 x69392', '45384 Kunde Corner\nElseton, IL 93895-0335', '1993-03-11 20:32:57', 'omnis', 'https://lorempixel.com/640/480/?64294', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(47, 19, 'Jazmyn Turner', '263.562.8668 x6307', '31192 Elizabeth Plaza Apt. 626\nWest Hanktown, TX 60329', '2011-11-09 07:07:22', 'doloribus', 'https://lorempixel.com/640/480/?55971', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(48, 14, 'Jaime Collins', '980-654-2256 x7074', '9776 Lillie Common\nGutmannchester, MN 85097', '1984-12-05 00:16:17', 'repellat', 'https://lorempixel.com/640/480/?20800', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(49, 9, 'Annie Conn', '+13688979310', '6647 Mills Green Suite 182\nPort Sterlingfort, MI 28912-8291', '1981-05-05 16:53:36', 'consequatur', 'https://lorempixel.com/640/480/?84294', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(50, 15, 'Kaitlin Daugherty', '638.878.4664 x41661', '7260 Glover Square Apt. 607\nKulasport, WA 64606', '1970-04-16 14:18:56', 'veritatis', 'https://lorempixel.com/640/480/?55022', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(51, 15, 'Vince Schaefer', '+19423449761', '870 Lowell Square Apt. 378\nWest Fermin, KS 01090', '1978-07-07 02:25:04', 'cupiditate', 'https://lorempixel.com/640/480/?57846', '2018-12-06 23:59:08', '2018-12-06 23:59:08'),
(52, 18, 'Dr. Orrin Stanton Jr.', '923-930-6234', '8140 O\'Connell Mill\nValentinaborough, WV 95431-5004', '2009-01-09 18:11:45', 'quidem', 'https://lorempixel.com/640/480/?39728', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(53, 6, 'Jeremie Paucek', '+1 (739) 946-2623', '6045 Marielle Estates\nXavierfort, ME 81174-2934', '1994-06-04 20:53:53', 'illum', 'https://lorempixel.com/640/480/?40512', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(54, 2, 'Louie Leffler', '(439) 310-2326 x78739', '95018 Liliane Cliffs Apt. 249\nSouth Breannebury, MT 82570', '2017-10-28 06:13:16', 'dolorem', 'https://lorempixel.com/640/480/?82376', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(55, 8, 'Nestor Boehm', '(595) 682-5862', '57373 Heller Brook Apt. 368\nSouth Nellieberg, MD 92901', '1994-08-25 01:47:25', 'odit', 'https://lorempixel.com/640/480/?76599', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(56, 20, 'Mr. Sid Welch IV', '737.450.5500 x050', '867 Sofia Road Apt. 459\nNew Jaydenport, MN 03738', '1998-07-29 19:29:07', 'dolores', 'https://lorempixel.com/640/480/?32683', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(57, 20, 'Irving Koelpin IV', '1-746-566-8499', '3778 Lebsack Island\nEast Lillian, WY 00422-9764', '1991-12-03 05:52:07', 'in', 'https://lorempixel.com/640/480/?85951', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(58, 14, 'Dorothea Homenick III', '(291) 329-9052 x418', '54071 Shanna Coves Suite 987\nDelilahburgh, WV 58582', '2002-11-14 06:54:40', 'quas', 'https://lorempixel.com/640/480/?73381', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(59, 2, 'Prof. Brown Johnston IV', '905-615-9067', '5530 Moriah Spur\nNorth Myles, MO 87375', '1998-02-05 14:44:34', 'delectus', 'https://lorempixel.com/640/480/?32229', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(60, 13, 'Miss Beryl Dickens', '1-326-647-5239 x0935', '946 Lenora Road\nArnulfofort, MO 66530-3756', '1999-01-18 07:45:47', 'eligendi', 'https://lorempixel.com/640/480/?12547', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(61, 10, 'Vita Ledner DDS', '235.298.0546 x840', '67720 Luciano Camp\nSouth Emileport, WI 22591-9836', '1979-09-07 07:35:18', 'maxime', 'https://lorempixel.com/640/480/?76182', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(62, 20, 'Lenna Sawayn Jr.', '(734) 897-8945 x85804', '662 Oma Estates\nNew Casimerstad, DC 70726-5447', '1981-01-11 01:19:28', 'repellat', 'https://lorempixel.com/640/480/?85053', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(63, 16, 'Ms. Britney Crooks PhD', '1-564-623-3353 x1256', '3382 Edward Forges\nRaynorchester, IN 82631', '1986-12-16 00:27:56', 'enim', 'https://lorempixel.com/640/480/?51228', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(64, 16, 'Dr. Sage Johnston PhD', '641-242-9039 x3410', '3085 Athena Dale Apt. 529\nWest Esmeralda, CO 06982-8206', '2017-03-14 07:09:51', 'non', 'https://lorempixel.com/640/480/?74999', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(65, 9, 'Mrs. Barbara Streich IV', '238-207-5519 x611', '5650 Milo Ferry\nLake Clovis, IL 01762', '2012-05-16 23:42:15', 'porro', 'https://lorempixel.com/640/480/?68245', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(66, 3, 'Prof. Shana Braun', '1-607-760-7114 x59510', '988 Oberbrunner Stream\nRociotown, OH 76083-5944', '1980-06-27 14:22:56', 'quia', 'https://lorempixel.com/640/480/?90701', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(67, 19, 'Mason Green', '690.258.2283 x06020', '9502 Pfannerstill Meadow\nGleasonborough, SC 97397', '1993-01-01 09:49:49', 'molestiae', 'https://lorempixel.com/640/480/?76786', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(68, 18, 'Mr. Antwan Swaniawski III', '378-933-2908', '621 Schamberger Run Suite 023\nSadyetown, FL 45149', '2014-02-07 05:03:31', 'quidem', 'https://lorempixel.com/640/480/?77408', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(69, 8, 'Therese Swift', '832.407.1483 x4200', '2558 Botsford Ridges Suite 645\nNew Charlene, WA 44828-9317', '2011-02-13 17:43:03', 'sed', 'https://lorempixel.com/640/480/?57300', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(70, 6, 'Dejon Kuhlman', '+1-494-462-0820', '3845 Carmine Glen Suite 991\nBentonfort, NH 99164', '1994-02-05 13:06:22', 'ipsa', 'https://lorempixel.com/640/480/?21980', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(71, 15, 'Mr. Deven Stracke IV', '843-859-3956', '25799 Jarrell Spurs Suite 023\nNorth Winonabury, ND 64513', '1997-02-04 21:47:42', 'temporibus', 'https://lorempixel.com/640/480/?76907', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(72, 11, 'Ms. Christine Leuschke MD', '908.768.3675 x2546', '49926 Rippin Mountain Suite 366\nHanetown, HI 76389-2590', '2008-08-21 20:30:48', 'quod', 'https://lorempixel.com/640/480/?51206', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(73, 12, 'Parker Kilback', '598-560-7667 x98312', '57425 Abbott Spring Suite 528\nWest Zion, FL 24841-2676', '2008-01-20 13:48:38', 'sequi', 'https://lorempixel.com/640/480/?82354', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(74, 13, 'Karen Thompson', '293-477-4811 x36861', '310 Anderson Drive Apt. 643\nOkunevaport, AZ 91322', '2013-10-29 21:43:38', 'laudantium', 'https://lorempixel.com/640/480/?74406', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(75, 5, 'German Mraz', '628-489-6226 x93649', '33733 Lucile Manors Suite 939\nNew Oceane, ME 81199-8270', '1980-05-22 20:47:09', 'quibusdam', 'https://lorempixel.com/640/480/?56342', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(76, 10, 'Catharine Hamill', '697-954-3987 x726', '763 Conn Road\nAmeliafort, IN 60531', '2011-01-22 12:02:12', 'tenetur', 'https://lorempixel.com/640/480/?90908', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(77, 20, 'Bryana Fahey II', '+1-747-605-4433', '9595 Krajcik Plains\nAlanahaven, GA 84012-4528', '2008-07-18 00:27:00', 'dicta', 'https://lorempixel.com/640/480/?71004', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(78, 14, 'Albert O\'Reilly', '585.823.7042', '23056 Emard Road\nMonicamouth, MT 34094', '1976-01-08 04:03:41', 'quis', 'https://lorempixel.com/640/480/?84708', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(79, 7, 'Durward Muller', '887-357-8105 x723', '281 Eudora Manor\nTownetown, GA 82249-8154', '2009-12-03 03:53:00', 'distinctio', 'https://lorempixel.com/640/480/?38792', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(80, 18, 'Preston Muller', '209.885.4050 x735', '6602 Flavio Highway Apt. 639\nRossview, ME 10866-7396', '1993-04-03 13:12:42', 'optio', 'https://lorempixel.com/640/480/?39368', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(81, 12, 'Garnett Bergnaum', '1-256-432-6096', '965 Smith Ranch\nLake Susanchester, MT 77272', '1983-01-27 02:53:01', 'dolores', 'https://lorempixel.com/640/480/?25650', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(82, 5, 'Keshawn Kovacek', '+1-643-430-5506', '6400 Vivianne Ports Apt. 334\nNorth Aurore, KY 46231', '2015-12-27 04:56:51', 'omnis', 'https://lorempixel.com/640/480/?74533', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(83, 13, 'Dr. Devante Botsford', '654-929-7265 x6869', '98475 Nicholas Village\nFayestad, ND 19270-5602', '2009-11-16 07:50:31', 'accusantium', 'https://lorempixel.com/640/480/?66909', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(84, 18, 'Oswaldo Kub', '897-757-4578 x5295', '234 Hermiston Passage Suite 297\nLake Moriah, NH 41524-2294', '1985-08-31 00:42:03', 'sunt', 'https://lorempixel.com/640/480/?33237', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(85, 15, 'Dr. Carmine Rolfson', '1-283-872-7565 x282', '6685 Keebler Parks\nSouth Altheaberg, AR 83558', '1985-09-21 20:07:16', 'dignissimos', 'https://lorempixel.com/640/480/?86956', '2018-12-06 23:59:09', '2018-12-06 23:59:09'),
(86, 18, 'Marcelo Bartoletti', '968.947.9692 x901', '45706 Casper Spurs\nShieldsmouth, MD 40570', '1975-06-07 10:49:48', 'rerum', 'https://lorempixel.com/640/480/?20233', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(87, 20, 'Dr. Gerhard Kuhic PhD', '307.833.6908 x491', '812 Price Passage\nEast Ruby, VA 08817-0706', '2012-11-25 19:05:05', 'et', 'https://lorempixel.com/640/480/?79387', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(88, 11, 'Prof. Arvel Cormier', '+1-831-829-6960', '55260 Renner Drive Suite 038\nPort Shemar, CT 34337', '2003-12-12 22:42:21', 'laboriosam', 'https://lorempixel.com/640/480/?23056', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(89, 10, 'Hanna Bayer', '1-653-934-7232 x7242', '1985 Joanny Run Apt. 728\nSamsonbury, NM 28459-2512', '1983-03-21 19:30:13', 'qui', 'https://lorempixel.com/640/480/?88639', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(90, 8, 'Scarlett Rohan I', '+18092347031', '739 Wilkinson Camp\nLake Fabiola, CT 08445', '2006-04-26 05:51:37', 'repellendus', 'https://lorempixel.com/640/480/?49982', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(91, 15, 'Tracey Macejkovic', '1-794-908-2543', '89271 Wilhelmine Path Suite 323\nEast Raymundoville, WY 82495', '1991-02-13 16:05:40', 'aut', 'https://lorempixel.com/640/480/?15268', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(92, 16, 'Lesly Kuhlman I', '943.496.1758 x52417', '97479 Wilfred Meadow Suite 924\nGregland, HI 34229-5766', '2012-06-29 13:43:24', 'vitae', 'https://lorempixel.com/640/480/?59991', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(93, 4, 'Gabriel Reynolds', '385-686-7254', '7508 Queenie Fort Suite 907\nWest Wilbert, TN 35935-2538', '1993-07-14 11:16:01', 'molestiae', 'https://lorempixel.com/640/480/?49026', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(94, 6, 'Dr. Chet Kub DVM', '1-301-310-5952', '423 Hagenes Roads Apt. 062\nStrackeborough, NE 61070', '1987-01-24 00:48:44', 'rerum', 'https://lorempixel.com/640/480/?14764', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(95, 2, 'Rosemary Schoen', '(870) 587-5143 x5908', '3431 Collins Trail\nEast Minervastad, FL 74026', '1995-02-14 19:00:56', 'fuga', 'https://lorempixel.com/640/480/?52983', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(96, 15, 'Prof. Nasir Walsh MD', '+15313012143', '966 Luettgen Road\nWest Tiannaborough, DE 40216', '2014-07-27 21:36:53', 'ducimus', 'https://lorempixel.com/640/480/?49198', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(97, 4, 'Carmelo Rodriguez', '335-765-0669 x506', '3824 Koby Spurs Apt. 435\nNew Gillian, SD 53048-5053', '1995-10-23 07:32:05', 'iusto', 'https://lorempixel.com/640/480/?92824', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(98, 8, 'Robyn Prohaska', '+1-572-527-8609', '559 Kevin Rapids\nSkilesshire, DC 46033-3480', '1988-06-07 16:40:39', 'qui', 'https://lorempixel.com/640/480/?57511', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(99, 12, 'Ashleigh VonRueden', '+1-327-971-6760', '423 Kuhn Union\nLake Madalynfort, NY 01920', '1991-02-20 23:01:05', 'rem', 'https://lorempixel.com/640/480/?15743', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(100, 4, 'Ezra Schneider', '1-606-942-4648 x798', '45627 Marcia Ways\nGreenfort, VT 58795-8905', '2007-09-22 20:18:58', 'voluptatem', 'https://lorempixel.com/640/480/?71241', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(101, 20, 'Bradford Erdman DVM', '(426) 993-4534', '11763 Hill Crossing\nCartwrightville, WI 79893-6396', '1977-07-04 03:45:29', 'molestiae', 'https://lorempixel.com/640/480/?19523', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(102, 20, 'Tyreek Harber', '(254) 389-1068', '571 Schaden Grove\nLake Cleve, CA 29594-2013', '2016-10-17 22:11:37', 'officia', 'https://lorempixel.com/640/480/?82556', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(103, 5, 'Cleta Cummerata PhD', '+1-953-453-8785', '49584 Schultz Center\nPort Deven, AL 07077-1997', '2015-12-23 04:34:51', 'ut', 'https://lorempixel.com/640/480/?50016', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(104, 4, 'Liza Mante', '(783) 673-6849 x4404', '7014 Rhoda Lake\nEast Madeline, SD 83379-9419', '1977-12-12 12:42:16', 'inventore', 'https://lorempixel.com/640/480/?10829', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(105, 6, 'Erich Swift', '679.220.7321', '74894 Blair Pike Suite 586\nFelipeton, NJ 96742', '1995-01-18 08:23:20', 'est', 'https://lorempixel.com/640/480/?24521', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(106, 16, 'Ms. Angeline Hegmann', '+1-665-698-4326', '271 Gottlieb Inlet\nPfefferberg, VA 63584-5092', '1998-01-19 07:26:38', 'ipsa', 'https://lorempixel.com/640/480/?88617', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(107, 9, 'Oliver Towne', '(918) 854-5188', '6772 Larkin Alley Suite 675\nKundestad, MD 08581-7309', '1985-04-17 04:08:53', 'veniam', 'https://lorempixel.com/640/480/?71454', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(108, 4, 'Nickolas Schroeder', '353-898-4854', '507 Kelvin Stream Apt. 888\nNew Henri, AZ 45745-6527', '1991-06-19 21:41:12', 'numquam', 'https://lorempixel.com/640/480/?74478', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(109, 15, 'Libbie Schowalter', '+12655160609', '609 Zemlak Ramp Apt. 780\nNew Leanneville, CA 20306-1423', '1990-10-14 01:42:27', 'incidunt', 'https://lorempixel.com/640/480/?20546', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(110, 9, 'Eden Corwin', '1-550-462-6560 x45437', '55780 Shane Mission Apt. 932\nElijahside, WI 17211-6280', '1979-11-23 07:30:09', 'eius', 'https://lorempixel.com/640/480/?16139', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(111, 14, 'Prof. Alvis Toy', '1-969-931-9886', '8976 Jacobson Burg Apt. 232\nLake Oceanehaven, OH 11299', '1986-03-13 16:58:42', 'in', 'https://lorempixel.com/640/480/?92302', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(112, 18, 'Neil Reynolds', '1-980-430-7268 x3139', '79701 Eduardo Pass Apt. 442\nDemarcoberg, CA 12541-9085', '1999-11-03 15:17:07', 'ea', 'https://lorempixel.com/640/480/?60402', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(113, 20, 'Dr. Geovanny Bruen PhD', '415.542.0672', '956 Art Ville Apt. 425\nNew Russ, CA 59192', '1976-08-17 07:37:16', 'quam', 'https://lorempixel.com/640/480/?71336', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(114, 2, 'Alexandro Boehm', '+1-936-463-8554', '3322 Willard Bypass Apt. 374\nEast Melvinahaven, AL 38484', '2006-05-10 23:09:24', 'distinctio', 'https://lorempixel.com/640/480/?65004', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(115, 5, 'Edwardo Hills', '+1.482.909.0698', '582 Effertz Islands\nNorth Rogerside, NC 25557-4725', '2012-12-15 14:49:31', 'velit', 'https://lorempixel.com/640/480/?56562', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(116, 16, 'Florencio O\'Keefe', '+19168742469', '1710 Parisian Dam Apt. 604\nKihnbury, MD 13526', '2002-12-23 19:38:09', 'dicta', 'https://lorempixel.com/640/480/?71435', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(117, 2, 'Mr. Francis Turner', '506.590.9408', '523 Murazik Cove\nElmoberg, MD 64347', '2012-08-06 21:16:49', 'possimus', 'https://lorempixel.com/640/480/?76178', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(118, 12, 'Antonia Koch', '1-809-814-5013 x7159', '63096 Reynolds Trafficway\nPort Aldafurt, MA 76966-3125', '1980-01-31 18:09:39', 'vel', 'https://lorempixel.com/640/480/?47924', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(119, 1, 'Consuelo Roob', '+1 (639) 656-7484', '38026 Amina Radial Suite 757\nNorth Barry, IL 22278', '1999-05-14 00:28:54', 'cum', 'https://lorempixel.com/640/480/?16957', '2018-12-06 23:59:10', '2018-12-06 23:59:10'),
(120, 7, 'Makayla Friesen', '531.686.9264', '336 Darrin Ports\nWilliamsonfort, MO 76261', '1980-05-01 13:45:46', 'numquam', 'https://lorempixel.com/640/480/?48076', '2018-12-06 23:59:10', '2018-12-06 23:59:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
