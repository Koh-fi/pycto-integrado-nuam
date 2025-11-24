-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2025 at 04:56 PM
-- Server version: 11.8.3-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nuamdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Administrador'),
(3, 'Auditor'),
(2, 'Corredor');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 21),
(2, 1, 22),
(3, 1, 23),
(4, 1, 24),
(5, 1, 25),
(6, 1, 26),
(7, 1, 27),
(8, 1, 28),
(9, 1, 29),
(10, 1, 30),
(11, 1, 31),
(12, 1, 32),
(13, 1, 33),
(14, 1, 34),
(15, 1, 35),
(16, 1, 36),
(17, 1, 37),
(18, 1, 38),
(19, 1, 39),
(20, 1, 40),
(21, 1, 41),
(22, 1, 42),
(23, 1, 43),
(24, 1, 44),
(25, 1, 45),
(26, 1, 46),
(27, 1, 47),
(28, 1, 48),
(29, 1, 49),
(30, 1, 50),
(31, 1, 51),
(32, 1, 52),
(33, 1, 53),
(34, 1, 54),
(35, 1, 55),
(36, 1, 56),
(42, 2, 21),
(43, 2, 22),
(44, 2, 23),
(45, 2, 24),
(46, 2, 25),
(37, 2, 33),
(38, 2, 34),
(39, 2, 35),
(40, 2, 36),
(41, 2, 49),
(50, 3, 22),
(51, 3, 24),
(52, 3, 25),
(53, 3, 26),
(54, 3, 27),
(55, 3, 28),
(47, 3, 34),
(48, 3, 36),
(49, 3, 49);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add calificacion_tributaria', 6, 'add_calificacion_tributaria'),
(22, 'Can change calificacion_tributaria', 6, 'change_calificacion_tributaria'),
(23, 'Can delete calificacion_tributaria', 6, 'delete_calificacion_tributaria'),
(24, 'Can view calificacion_tributaria', 6, 'view_calificacion_tributaria'),
(25, 'Can add instrumento_financiero', 7, 'add_instrumento_financiero'),
(26, 'Can change instrumento_financiero', 7, 'change_instrumento_financiero'),
(27, 'Can delete instrumento_financiero', 7, 'delete_instrumento_financiero'),
(28, 'Can view instrumento_financiero', 7, 'view_instrumento_financiero'),
(29, 'Can add rol', 8, 'add_rol'),
(30, 'Can change rol', 8, 'change_rol'),
(31, 'Can delete rol', 8, 'delete_rol'),
(32, 'Can view rol', 8, 'view_rol'),
(33, 'Can add califica', 9, 'add_califica'),
(34, 'Can change califica', 9, 'change_califica'),
(35, 'Can delete califica', 9, 'delete_califica'),
(36, 'Can view califica', 9, 'view_califica'),
(37, 'Can add categoria_factor', 10, 'add_categoria_factor'),
(38, 'Can change categoria_factor', 10, 'change_categoria_factor'),
(39, 'Can delete categoria_factor', 10, 'delete_categoria_factor'),
(40, 'Can view categoria_factor', 10, 'view_categoria_factor'),
(41, 'Can add factor_calificacion', 11, 'add_factor_calificacion'),
(42, 'Can change factor_calificacion', 11, 'change_factor_calificacion'),
(43, 'Can delete factor_calificacion', 11, 'delete_factor_calificacion'),
(44, 'Can view factor_calificacion', 11, 'view_factor_calificacion'),
(45, 'Can add usuario', 12, 'add_usuario'),
(46, 'Can change usuario', 12, 'change_usuario'),
(47, 'Can delete usuario', 12, 'delete_usuario'),
(48, 'Can view usuario', 12, 'view_usuario'),
(49, 'Can add solicitud', 13, 'add_solicitud'),
(50, 'Can change solicitud', 13, 'change_solicitud'),
(51, 'Can delete solicitud', 13, 'delete_solicitud'),
(52, 'Can view solicitud', 13, 'view_solicitud'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-11-24 13:16:53.505035', '1', 'Administrador', 1, '[{\"added\": {}}]', 3, 1),
(2, '2025-11-24 13:18:24.382498', '2', 'Corredor', 1, '[{\"added\": {}}]', 3, 1),
(3, '2025-11-24 13:20:13.961087', '3', 'Auditor', 1, '[{\"added\": {}}]', 3, 1),
(4, '2025-11-24 13:24:14.048357', '2', 'corredor@nuam.com', 1, '[{\"added\": {}}]', 14, 1),
(5, '2025-11-24 13:24:36.690909', '3', 'auditor@nuam.com', 1, '[{\"added\": {}}]', 14, 1),
(6, '2025-11-24 13:24:54.030406', '4', 'admin@nuam.com', 1, '[{\"added\": {}}]', 14, 1),
(7, '2025-11-24 13:45:16.354339', '4', 'admin@nuam.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 14, 1),
(8, '2025-11-24 13:45:25.861612', '3', 'auditor@nuam.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 14, 1),
(9, '2025-11-24 13:45:35.449998', '2', 'corredor@nuam.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(9, 'Intranet', 'califica'),
(6, 'Intranet', 'calificacion_tributaria'),
(10, 'Intranet', 'categoria_factor'),
(11, 'Intranet', 'factor_calificacion'),
(7, 'Intranet', 'instrumento_financiero'),
(8, 'Intranet', 'rol'),
(13, 'Intranet', 'solicitud'),
(14, 'Intranet', 'user'),
(12, 'Intranet', 'usuario'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-11-24 12:27:24.376079'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-11-24 12:27:25.485118'),
(3, 'auth', '0001_initial', '2025-11-24 12:27:29.775182'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-11-24 12:27:30.563318'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-11-24 12:27:30.605554'),
(6, 'auth', '0004_alter_user_username_opts', '2025-11-24 12:27:30.639522'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-11-24 12:27:30.782822'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-11-24 12:27:30.828354'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-11-24 12:27:30.869979'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-11-24 12:27:30.915854'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-11-24 12:27:30.953852'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-11-24 12:27:31.430591'),
(13, 'auth', '0011_update_proxy_permissions', '2025-11-24 12:27:31.469590'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-11-24 12:27:31.503685'),
(15, 'Intranet', '0001_initial', '2025-11-24 12:27:46.754847'),
(16, 'admin', '0001_initial', '2025-11-24 12:27:49.403272'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-11-24 12:27:49.447495'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-24 12:27:49.481534'),
(19, 'sessions', '0001_initial', '2025-11-24 12:27:51.542795');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wgfxcjrvgpy8gkyzrviwsacmjvpgs1zt', '.eJxVjDsOwjAQBe_iGlnrP6ak5wzWrtfgALKlOKkQd4dIKaB9M_NeIuG61LSOMqeJxUlYcfjdCPOjtA3wHduty9zbMk8kN0XudMhL5_I87-7fQcVRv7UCUjroTF4ZY5kzeIqooouGCYJXBTRRztEHz1cXCrByLgBYHcMRjXh_AMvBNwE:1vNYYi:BhSBFz81XiCkgz7kr8vdgNIlMqfOB9L0300PQRiSrx4', '2025-12-08 15:32:56.196829');

-- --------------------------------------------------------

--
-- Table structure for table `intranet_califica`
--

CREATE TABLE `intranet_califica` (
  `id` bigint(20) NOT NULL,
  `valor` double NOT NULL,
  `calificacion_id` int(11) NOT NULL,
  `factor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intranet_calificacion_tributaria`
--

CREATE TABLE `intranet_calificacion_tributaria` (
  `calificacion_id` int(11) NOT NULL,
  `mercado` varchar(50) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `fecha_pago` date NOT NULL,
  `secuencia_evento` bigint(20) NOT NULL,
  `dividendo` int(11) DEFAULT NULL,
  `valor_historico` bigint(20) DEFAULT NULL,
  `anio` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `instrumento_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intranet_categoria_factor`
--

CREATE TABLE `intranet_categoria_factor` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `padre_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_categoria_factor`
--

INSERT INTO `intranet_categoria_factor` (`id`, `nombre`, `padre_id`) VALUES
(1, 'Afectos a los Impuestos Global Complementario y/o Impuesto Adicional', NULL),
(2, 'Rentas Exentas e Ingresos no Constitutivos de Renta (REX)', NULL),
(3, 'Rentas con Tributación Cumplida', 2),
(4, 'Rentas Exentas', 2),
(5, 'Acumulados a Contar del 01/01/2017', NULL),
(6, 'Asociados a Rentas Afectas', 5),
(7, 'Asociados a Rentas Exentas', 5),
(8, 'No Sujetos a Restitución generados hasta el 31/12/2019', 6),
(9, 'No Sujetos a Restitución a contar del 01/01/2020', 6),
(10, 'Sujetos a Restitución', 6),
(11, 'Sujetos a Restitución', 7),
(12, 'Acumulados Hasta el 31/12/2016', NULL),
(13, 'Asociados a Rentas Afectas', 12),
(14, 'Asociados a Rentas Exentas (Art. 11, Ley 18.401)', 12);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_factor_calificacion`
--

CREATE TABLE `intranet_factor_calificacion` (
  `factor_id` int(11) NOT NULL,
  `nombre_factor` varchar(120) NOT NULL,
  `categoria_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_factor_calificacion`
--

INSERT INTO `intranet_factor_calificacion` (`factor_id`, `nombre_factor`, `categoria_id`) VALUES
(8, 'Con crédito IDPC generados a contar del 01/01/2017', 1),
(9, 'Con crédito IDPC acumulados hasta el 31/12/2016', 1),
(10, 'Con derecho a crédito por pago de IDPC voluntario', 1),
(11, 'Sin derecho a crédito', 1),
(12, 'Rentas provenientes del registro RAP y Diferencia Inicial de sociedad acogida al ex Art. 14 TER A) LIR', 3),
(13, 'Otras ventas percibidas Sin Prioridad en su orden de imputación', 3),
(14, 'Exceso Distribuciones Desproporcionadas (Nº9 Art.14 A)', 3),
(15, 'Utilidades afectadas con impuesto sustitutivo al FUT (ISFUT) Ley Nº20.780', 3),
(16, 'Rentas generadas hasta el 31/12/1983 y/o utilidades afectadas con impuesto sustitutivo al FUT (ISFUT) Ley Nº21.210', 3),
(17, 'Rentas Exentas de Impuesto Global Complementario (IGC) (Artículo 11, Ley 18.401) Afectas a Impuesto Adicional', 4),
(18, 'Rentas Exentas de Impuesto Global Complementario (IGC) y/o Impuesto Adicional (IA)', 4),
(19, 'Ingresos No Constitutivos de Renta', 2),
(20, 'Sin derecho a devolución', 8),
(21, 'Con derecho a devolución', 8),
(22, 'Sin derecho a devolución', 9),
(23, 'Con derecho a devolución', 9),
(24, 'Sin derecho a devolución', 10),
(25, 'Con derecho a devolución', 10),
(26, 'Sin derecho a devolución', 11),
(27, 'Con derecho a devolución', 11),
(28, 'Crédito por IPE', 5),
(29, 'Sin derecho a devolución', 13),
(30, 'Con derecho a devolución', 13),
(31, 'Sin derecho a devolución', 14),
(32, 'Con derecho a devolución', 14),
(33, 'Crédito por IPE', 12),
(34, 'Crédito por Impuesto Tasa Adicional, Ex. Art. 21 LIR', NULL),
(35, 'Tasa Efectiva del crédito del FUT (TEF)', NULL),
(36, 'Tasa Efectiva del crédito del FUNT (TEX)', NULL),
(37, 'Devolución de capital Art. 17 Nº7 LIR', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_instrumento_financiero`
--

CREATE TABLE `intranet_instrumento_financiero` (
  `instrumento_id` int(11) NOT NULL,
  `codigo` varchar(6) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `bolsa` varchar(30) NOT NULL,
  `mercado` varchar(50) NOT NULL,
  `estado` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_instrumento_financiero`
--

INSERT INTO `intranet_instrumento_financiero` (`instrumento_id`, `codigo`, `descripcion`, `categoria`, `bolsa`, `mercado`, `estado`) VALUES
(4, 'ADP', 'DEPOSITO A PLAZO', 'Efectivo y Depósitos', 'BCS', 'Mercado Internacional', 'Ingresado'),
(5, 'ADPCL', 'DEPOSITO A PLAZO CHILE', 'Efectivo y Depósitos', 'BCS', 'Mercado Monetario', 'Ingresado'),
(6, 'AGG', 'FONDOS ETF´s', 'Fondos', 'BVL', 'Fondos de Inversión-Mutuos', 'Ingresado'),
(7, 'AGGCL', 'FONDOS MUTUOS - FONDOS ETF´s', 'Fondos', 'BCS', 'Fondos de Inversión-Mutuos', 'Ingresado'),
(8, 'AIG', 'American International Group. - Dolares', 'Acciones y Participaciones', 'BVC', 'Mercado Internacional', 'Ingresado'),
(9, 'AIGCL', 'American International Group. - Pesos Chilenos', 'Acciones y Participaciones', 'BCS', 'Acciones', 'Ingresado'),
(10, 'AMGN', 'Amgen Inc. opciones, ETFs, fondos, divisas, materias primas y criptomonedas.', 'Fondos', 'BCS', 'Mercado Internacional', 'Ingresado'),
(11, 'AMGCL', 'Amgen Inc.  \r\nPatrocinador en Chile: BCI Corredor de Bolsa S.A. - Pesos Chilenos', 'Acciones y Participaciones', 'BCS', 'Acciones', 'Ingresado'),
(12, 'AXP', 'American Express Compan', 'Otras Cuentas-Derechos', 'BVL', 'Mercado Internacional', 'Ingresado'),
(13, 'AXPCL', 'American Express Compan - Pesos Chilenos', 'Acciones y Participaciones', 'BCS', 'Acciones', 'Ingresado'),
(14, 'BAC', 'Bank Of America Corp - Dolares', 'Otras Cuentas-Derechos', 'BVL', 'Mercado Internacional', 'Ingresado');

-- --------------------------------------------------------

--
-- Table structure for table `intranet_rol`
--

CREATE TABLE `intranet_rol` (
  `rol_id` int(11) NOT NULL,
  `nombre_rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_rol`
--

INSERT INTO `intranet_rol` (`rol_id`, `nombre_rol`) VALUES
(1, 'Administrador'),
(2, 'Auditor'),
(3, 'Corredor');

-- --------------------------------------------------------

--
-- Table structure for table `intranet_solicitud`
--

CREATE TABLE `intranet_solicitud` (
  `solicitud_id` int(11) NOT NULL,
  `motivo` varchar(130) NOT NULL,
  `fecha` date NOT NULL,
  `group_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intranet_user`
--

CREATE TABLE `intranet_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_user`
--

INSERT INTO `intranet_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`) VALUES
(1, 'pbkdf2_sha256$1000000$kDjZrdIQqVExwC3yqJiZVs$gVDCvnJSy+Uae7PdBVbPmJbyT785qyxrbi+Eq7K5pNo=', '2025-11-24 13:43:42.877969', 1, '', '', 1, 1, '2025-11-24 12:59:59.201753', 'superuser@nuam.com'),
(2, 'pbkdf2_sha256$1000000$lo7TUIpiNkYeNiAJ47gUyp$egZcACjqC4DSFeqYM7ybIfbLfGdIRfumWihEmJHV5aM=', '2025-11-24 14:01:19.096864', 0, 'Corredor', 'Doe', 0, 1, '2025-11-24 13:24:13.000000', 'corredor@nuam.com'),
(3, 'pbkdf2_sha256$1000000$H0R3W2f7zlGNhOiEzEUKP2$gh2OokEfUXIBXycbOC//qe8sD4vqlKo/bcKgU0r/kh4=', '2025-11-24 15:24:14.253526', 0, 'Auditor', 'Doe', 0, 1, '2025-11-24 13:24:35.000000', 'auditor@nuam.com'),
(4, 'pbkdf2_sha256$1000000$Ef4KbRWGEOASMDE73AOrp3$cIZWExkmuGLQSujKGfXUQfasyQva/n9Ufhd7D72giLg=', '2025-11-24 15:32:56.152397', 0, 'Admin', 'Doe', 0, 1, '2025-11-24 13:24:53.000000', 'admin@nuam.com'),
(7, '!2WVKpENPc5YoeOhFAcDn78Zm1dtRfhaRy5xhtsoU', NULL, 0, 'John', 'Doe 2', 0, 1, '2025-11-24 15:13:41.947885', 'auditor2@nuam.com');

-- --------------------------------------------------------

--
-- Table structure for table `intranet_user_groups`
--

CREATE TABLE `intranet_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_user_groups`
--

INSERT INTO `intranet_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 2),
(2, 3, 3),
(3, 4, 1),
(7, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_user_user_permissions`
--

CREATE TABLE `intranet_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intranet_usuario`
--

CREATE TABLE `intranet_usuario` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(256) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_usuario`
--

INSERT INTO `intranet_usuario` (`usuario_id`, `nombre`, `email`, `password`, `rol_id`) VALUES
(1, 'Admin Doe', 'admin@nuam.com', '971e4e7eb25f230e29b2fdfa4b34bfd543d75958cc9eb7b01064ecbc6d4667a4eab79fe81169f3498a3c8af44131d7be811615a395013c097de72b66c129e386', 1),
(2, 'Auditor Doe', 'auditor@nuam.com', '0c33fd99344eb07491d674c8737113dff876d1ade54b339df61c0755e10fc2fc1f7e83872aefa0fd432b982e00b3054a36cd941d05679d3b5889deb0e9afbb4b', 2),
(3, 'Corredor Doe', 'corredor@nuam.com', '440bf545e36d4656a1ec83c7db64eb278487ab05d3ede782afdec78d7734feecc6370515793ed182285acda04315110d3fb6f72f7460a80673aa30795cffac5c', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_Intranet_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `intranet_califica`
--
ALTER TABLE `intranet_califica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intranet_califica_factor_id_d90edd10_fk_Intranet_` (`factor_id`),
  ADD KEY `Intranet_califica_calificacion_id_4ede9fe8_fk_Intranet_` (`calificacion_id`);

--
-- Indexes for table `intranet_calificacion_tributaria`
--
ALTER TABLE `intranet_calificacion_tributaria`
  ADD PRIMARY KEY (`calificacion_id`),
  ADD KEY `Intranet_calificacio_instrumento_id_868bd9cb_fk_Intranet_` (`instrumento_id`),
  ADD KEY `Intranet_calificacio_rol_id_e623d16e_fk_Intranet_` (`rol_id`);

--
-- Indexes for table `intranet_categoria_factor`
--
ALTER TABLE `intranet_categoria_factor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intranet_categoria_f_padre_id_2d6b5feb_fk_Intranet_` (`padre_id`);

--
-- Indexes for table `intranet_factor_calificacion`
--
ALTER TABLE `intranet_factor_calificacion`
  ADD PRIMARY KEY (`factor_id`),
  ADD KEY `Intranet_factor_cali_categoria_id_f1d76899_fk_Intranet_` (`categoria_id`);

--
-- Indexes for table `intranet_instrumento_financiero`
--
ALTER TABLE `intranet_instrumento_financiero`
  ADD PRIMARY KEY (`instrumento_id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indexes for table `intranet_rol`
--
ALTER TABLE `intranet_rol`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `intranet_solicitud`
--
ALTER TABLE `intranet_solicitud`
  ADD PRIMARY KEY (`solicitud_id`),
  ADD KEY `Intranet_solicitud_group_id_eb4f1179_fk_Intranet_rol_rol_id` (`group_id`),
  ADD KEY `Intranet_solicitud_usuario_id_72a2a0c5_fk_Intranet_` (`usuario_id`);

--
-- Indexes for table `intranet_user`
--
ALTER TABLE `intranet_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `intranet_user_groups`
--
ALTER TABLE `intranet_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Intranet_user_groups_user_id_group_id_89ebf548_uniq` (`user_id`,`group_id`),
  ADD KEY `Intranet_user_groups_group_id_23c3b620_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `intranet_user_user_permissions`
--
ALTER TABLE `intranet_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Intranet_user_user_permi_user_id_permission_id_8d2bc6ed_uniq` (`user_id`,`permission_id`),
  ADD KEY `Intranet_user_user_p_permission_id_de1b018a_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `intranet_usuario`
--
ALTER TABLE `intranet_usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `Intranet_usuario_rol_id_40863af3_fk_Intranet_rol_rol_id` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `intranet_califica`
--
ALTER TABLE `intranet_califica`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intranet_calificacion_tributaria`
--
ALTER TABLE `intranet_calificacion_tributaria`
  MODIFY `calificacion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intranet_categoria_factor`
--
ALTER TABLE `intranet_categoria_factor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `intranet_factor_calificacion`
--
ALTER TABLE `intranet_factor_calificacion`
  MODIFY `factor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `intranet_instrumento_financiero`
--
ALTER TABLE `intranet_instrumento_financiero`
  MODIFY `instrumento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `intranet_rol`
--
ALTER TABLE `intranet_rol`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `intranet_solicitud`
--
ALTER TABLE `intranet_solicitud`
  MODIFY `solicitud_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intranet_user`
--
ALTER TABLE `intranet_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `intranet_user_groups`
--
ALTER TABLE `intranet_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `intranet_user_user_permissions`
--
ALTER TABLE `intranet_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intranet_usuario`
--
ALTER TABLE `intranet_usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Intranet_user_id` FOREIGN KEY (`user_id`) REFERENCES `intranet_user` (`id`);

--
-- Constraints for table `intranet_califica`
--
ALTER TABLE `intranet_califica`
  ADD CONSTRAINT `Intranet_califica_calificacion_id_4ede9fe8_fk_Intranet_` FOREIGN KEY (`calificacion_id`) REFERENCES `intranet_calificacion_tributaria` (`calificacion_id`),
  ADD CONSTRAINT `Intranet_califica_factor_id_d90edd10_fk_Intranet_` FOREIGN KEY (`factor_id`) REFERENCES `intranet_factor_calificacion` (`factor_id`);

--
-- Constraints for table `intranet_calificacion_tributaria`
--
ALTER TABLE `intranet_calificacion_tributaria`
  ADD CONSTRAINT `Intranet_calificacio_instrumento_id_868bd9cb_fk_Intranet_` FOREIGN KEY (`instrumento_id`) REFERENCES `intranet_instrumento_financiero` (`instrumento_id`),
  ADD CONSTRAINT `Intranet_calificacio_rol_id_e623d16e_fk_Intranet_` FOREIGN KEY (`rol_id`) REFERENCES `intranet_rol` (`rol_id`);

--
-- Constraints for table `intranet_categoria_factor`
--
ALTER TABLE `intranet_categoria_factor`
  ADD CONSTRAINT `Intranet_categoria_f_padre_id_2d6b5feb_fk_Intranet_` FOREIGN KEY (`padre_id`) REFERENCES `intranet_categoria_factor` (`id`);

--
-- Constraints for table `intranet_factor_calificacion`
--
ALTER TABLE `intranet_factor_calificacion`
  ADD CONSTRAINT `Intranet_factor_cali_categoria_id_f1d76899_fk_Intranet_` FOREIGN KEY (`categoria_id`) REFERENCES `intranet_categoria_factor` (`id`);

--
-- Constraints for table `intranet_solicitud`
--
ALTER TABLE `intranet_solicitud`
  ADD CONSTRAINT `Intranet_solicitud_group_id_eb4f1179_fk_Intranet_rol_rol_id` FOREIGN KEY (`group_id`) REFERENCES `intranet_rol` (`rol_id`),
  ADD CONSTRAINT `Intranet_solicitud_usuario_id_72a2a0c5_fk_Intranet_` FOREIGN KEY (`usuario_id`) REFERENCES `intranet_usuario` (`usuario_id`);

--
-- Constraints for table `intranet_user_groups`
--
ALTER TABLE `intranet_user_groups`
  ADD CONSTRAINT `Intranet_user_groups_group_id_23c3b620_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `Intranet_user_groups_user_id_3e881222_fk_Intranet_user_id` FOREIGN KEY (`user_id`) REFERENCES `intranet_user` (`id`);

--
-- Constraints for table `intranet_user_user_permissions`
--
ALTER TABLE `intranet_user_user_permissions`
  ADD CONSTRAINT `Intranet_user_user_p_permission_id_de1b018a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `Intranet_user_user_p_user_id_85bc83e0_fk_Intranet_` FOREIGN KEY (`user_id`) REFERENCES `intranet_user` (`id`);

--
-- Constraints for table `intranet_usuario`
--
ALTER TABLE `intranet_usuario`
  ADD CONSTRAINT `Intranet_usuario_rol_id_40863af3_fk_Intranet_rol_rol_id` FOREIGN KEY (`rol_id`) REFERENCES `intranet_rol` (`rol_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
