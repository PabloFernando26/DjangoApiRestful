-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-12-2024 a las 15:13:02
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacenn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categoria', 7, 'add_categoria'),
(26, 'Can change categoria', 7, 'change_categoria'),
(27, 'Can delete categoria', 7, 'delete_categoria'),
(28, 'Can view categoria', 7, 'view_categoria'),
(29, 'Can add producto', 8, 'add_producto'),
(30, 'Can change producto', 8, 'change_producto'),
(31, 'Can delete producto', 8, 'delete_producto'),
(32, 'Can view producto', 8, 'view_producto'),
(33, 'Can add detalle venta', 9, 'add_detalleventa'),
(34, 'Can change detalle venta', 9, 'change_detalleventa'),
(35, 'Can delete detalle venta', 9, 'delete_detalleventa'),
(36, 'Can view detalle venta', 9, 'view_detalleventa'),
(37, 'Can add venta', 10, 'add_venta'),
(38, 'Can change venta', 10, 'change_venta'),
(39, 'Can delete venta', 10, 'delete_venta'),
(40, 'Can view venta', 10, 'view_venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$iRXUh2jJTtZ5TBhjtsrV7b$4FSCkivwLZ8YnJkrBYZJHkcAFZ0ktvctBtT3/u9AyBE=', '2024-11-17 03:08:16.438655', 1, 'pablo-gonzalez', '', '', 'pablo@gmail.com', 1, 1, '2024-11-17 03:08:03.303386'),
(2, 'pbkdf2_sha256$870000$R6NmlAYtFtUg9YSRa4Lo5o$9JCEqh/g/1CM39zYwmGIztv81AdocujGc9Sly/qF9pk=', '2024-11-27 19:08:33.992072', 1, 'pgnzz', '', '', 'pablo@gmail.com', 1, 1, '2024-11-27 02:50:34.325125'),
(3, 'pbkdf2_sha256$870000$ZMV27xKTZggMmSemdr4EgO$KGfSi9r4llMDCrkrlO/OmZx5z7cTr/2GKkZxbhwLBTg=', '2024-11-27 19:07:51.314654', 0, 'cliente', '', '', '', 0, 1, '2024-11-27 04:36:01.000000'),
(4, 'pbkdf2_sha256$870000$S84uUpFi6XMdoTGKHa0rEv$wIylrlr83YTVrjKt7ifh/mMG10w86UDcFGmLeraALX0=', '2024-11-27 18:57:30.312965', 0, 'kss', '', '', '', 0, 1, '2024-11-27 18:57:22.544898');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(51, 3, 31),
(50, 3, 30),
(49, 3, 29),
(48, 3, 27),
(47, 3, 26),
(46, 3, 25),
(45, 3, 36),
(44, 3, 35),
(43, 3, 34),
(42, 3, 33),
(41, 3, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-11-17 03:09:28.272785', '1', 'Bebidas', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-11-27 03:02:27.110506', '2', 'frutas', 1, '[{\"added\": {}}]', 7, 2),
(3, '2024-11-27 04:36:02.268800', '3', 'cliente', 1, '[{\"added\": {}}]', 4, 2),
(4, '2024-11-27 04:38:12.805423', '3', 'cliente', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 2),
(5, '2024-11-27 04:38:48.909968', '3', 'cliente', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 2),
(6, '2024-11-27 04:44:17.510618', '3', 'cliente', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 2),
(7, '2024-11-27 17:46:19.759809', '2', 'frutas', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 7, 2),
(8, '2024-11-27 17:46:48.408926', '1', 'Bebidas', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 7, 2),
(9, '2024-11-27 17:49:44.471226', '5', 'vino tinto', 1, '[{\"added\": {}}]', 8, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'productos', 'categoria'),
(8, 'productos', 'producto'),
(9, 'productos', 'detalleventa'),
(10, 'productos', 'venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-11-17 03:07:05.380192'),
(2, 'auth', '0001_initial', '2024-11-17 03:07:05.687312'),
(3, 'admin', '0001_initial', '2024-11-17 03:07:05.804013'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-11-17 03:07:05.820047'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-17 03:07:05.824986'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-11-17 03:07:05.867518'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-11-17 03:07:05.889520'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-11-17 03:07:05.924132'),
(9, 'auth', '0004_alter_user_username_opts', '2024-11-17 03:07:05.929132'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-11-17 03:07:05.950625'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-11-17 03:07:05.951659'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-11-17 03:07:05.957622'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-11-17 03:07:05.979628'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-11-17 03:07:06.002626'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-11-17 03:07:06.023625'),
(16, 'auth', '0011_update_proxy_permissions', '2024-11-17 03:07:06.030969'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-11-17 03:07:06.053446'),
(18, 'productos', '0001_initial', '2024-11-17 03:07:06.128531'),
(19, 'productos', '0002_categoria_imagen_alter_categoria_descripcion_and_more', '2024-11-17 03:07:06.199140'),
(20, 'sessions', '0001_initial', '2024-11-17 03:07:06.223135'),
(21, 'productos', '0003_detalleventa_venta_detalleventa_venta', '2024-11-27 03:46:58.783697');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cipsxpfg11xrxqyvlapqn5oi09ywls2o', '.eJxVjMsOwiAQRf-FtSE8plBcuvcbyAxMpWogKe3K-O_apAvd3nPOfYmI21ri1nmJcxZnocXpdyNMD647yHestyZTq-syk9wVedAury3z83K4fwcFe_nWASwFo8mECSgPAB4IgQNrlbIfybHOFr1zxsMweufRJkdskYxWEyjx_gDUDDdv:1tCVe4:QRE8wFTX1jB5ase6qZgcIiMammmRV3L4cZOaTRQwVAU', '2024-12-01 03:08:16.440662');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categoria`
--

DROP TABLE IF EXISTS `productos_categoria`;
CREATE TABLE IF NOT EXISTS `productos_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos_categoria`
--

INSERT INTO `productos_categoria` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Bebidas', 'bebidas a la venta', 'categorias/bebidas.jpg'),
(2, 'frutas', 'las frutas mas frescas', 'categorias/fruta.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_detalleventa`
--

DROP TABLE IF EXISTS `productos_detalleventa`;
CREATE TABLE IF NOT EXISTS `productos_detalleventa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int UNSIGNED NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `producto_id` bigint NOT NULL,
  `venta_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_detalleventa_producto_id_afcab9e7` (`producto_id`),
  KEY `productos_detalleventa_venta_id_16dc222d` (`venta_id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_producto`
--

DROP TABLE IF EXISTS `productos_producto`;
CREATE TABLE IF NOT EXISTS `productos_producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int UNSIGNED NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_producto_categoria_id_1fef506a` (`categoria_id`)
) ;

--
-- Volcado de datos para la tabla `productos_producto`
--

INSERT INTO `productos_producto` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `categoria_id`) VALUES
(7, 'aassd', 'aaa', 1111.00, 50, '', 2),
(5, 'vino tinto', 'Vino tinto si', 6000.00, 45, 'productos/vinotinto.JPG', 1),
(6, 'Manzana', 'manzana fresca', 800.00, 100, 'productos/manza.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

DROP TABLE IF EXISTS `productos_venta`;
CREATE TABLE IF NOT EXISTS `productos_venta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_venta` datetime(6) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `cliente_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_venta_cliente_id_66308656` (`cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
