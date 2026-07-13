-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2026 at 04:14 AM
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
-- Database: `nuamdb_bkp`
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
(2, 'Auditor'),
(4, 'Bolsa'),
(3, 'Corredor');

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
(37, 2, 22),
(38, 2, 24),
(39, 2, 25),
(40, 2, 26),
(41, 2, 27),
(42, 2, 28),
(29, 2, 32),
(30, 2, 36),
(31, 2, 40),
(32, 2, 44),
(33, 2, 45),
(34, 2, 46),
(35, 2, 47),
(36, 2, 48),
(48, 3, 21),
(49, 3, 22),
(50, 3, 23),
(51, 3, 24),
(52, 3, 25),
(43, 3, 32),
(44, 3, 36),
(45, 3, 40),
(46, 3, 45),
(47, 3, 48),
(57, 4, 21),
(58, 4, 22),
(59, 4, 25),
(60, 4, 26),
(61, 4, 29),
(62, 4, 30),
(53, 4, 33),
(54, 4, 34),
(55, 4, 37),
(56, 4, 38);

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
(29, 'Can add califica', 8, 'add_califica'),
(30, 'Can change califica', 8, 'change_califica'),
(31, 'Can delete califica', 8, 'delete_califica'),
(32, 'Can view califica', 8, 'view_califica'),
(33, 'Can add categoria_factor', 9, 'add_categoria_factor'),
(34, 'Can change categoria_factor', 9, 'change_categoria_factor'),
(35, 'Can delete categoria_factor', 9, 'delete_categoria_factor'),
(36, 'Can view categoria_factor', 9, 'view_categoria_factor'),
(37, 'Can add factor_calificacion', 10, 'add_factor_calificacion'),
(38, 'Can change factor_calificacion', 10, 'change_factor_calificacion'),
(39, 'Can delete factor_calificacion', 10, 'delete_factor_calificacion'),
(40, 'Can view factor_calificacion', 10, 'view_factor_calificacion'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add solicitud', 12, 'add_solicitud'),
(46, 'Can change solicitud', 12, 'change_solicitud'),
(47, 'Can delete solicitud', 12, 'delete_solicitud'),
(48, 'Can view solicitud', 12, 'view_solicitud'),
(49, 'Can add chat_privado', 13, 'add_chat_privado'),
(50, 'Can change chat_privado', 13, 'change_chat_privado'),
(51, 'Can delete chat_privado', 13, 'delete_chat_privado'),
(52, 'Can view chat_privado', 13, 'view_chat_privado'),
(53, 'Can add mensaje_privado', 14, 'add_mensaje_privado'),
(54, 'Can change mensaje_privado', 14, 'change_mensaje_privado'),
(55, 'Can delete mensaje_privado', 14, 'delete_mensaje_privado'),
(56, 'Can view mensaje_privado', 14, 'view_mensaje_privado'),
(57, 'Can add auditoria', 15, 'add_auditoria'),
(58, 'Can change auditoria', 15, 'change_auditoria'),
(59, 'Can delete auditoria', 15, 'delete_auditoria'),
(60, 'Can view auditoria', 15, 'view_auditoria'),
(61, 'Can add notification', 16, 'add_notification'),
(62, 'Can change notification', 16, 'change_notification'),
(63, 'Can delete notification', 16, 'delete_notification'),
(64, 'Can view notification', 16, 'view_notification');

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
(1, '2025-12-01 08:22:15.482901', '1', 'Administrador', 1, '[{\"added\": {}}]', 3, 1),
(2, '2025-12-01 08:23:29.612287', '2', 'Auditor', 1, '[{\"added\": {}}]', 3, 1),
(3, '2025-12-01 08:24:47.665242', '3', 'Corredor', 1, '[{\"added\": {}}]', 3, 1),
(4, '2025-12-01 08:25:29.586714', '4', 'Bolsa', 1, '[{\"added\": {}}]', 3, 1),
(5, '2025-12-01 08:28:28.928687', '1', 'superuser@nuam.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\"]}}]', 11, 1),
(6, '2025-12-01 08:49:52.583148', '2', 'admin@nuam.com', 3, '', 11, 1),
(7, '2025-12-01 08:49:52.583183', '3', 'auditor@nuam.com', 3, '', 11, 1),
(8, '2025-12-01 08:49:52.583201', '5', 'BCS@nuam.com', 3, '', 11, 1),
(9, '2025-12-01 08:49:52.583215', '8', 'bolsa@nuam.com', 3, '', 11, 1),
(10, '2025-12-01 08:49:52.583229', '7', 'BVC@nuam.com', 3, '', 11, 1),
(11, '2025-12-01 08:49:52.583241', '6', 'BVL@nuam.com', 3, '', 11, 1),
(12, '2025-12-01 08:49:52.583253', '4', 'corredor@nuam.com', 3, '', 11, 1),
(13, '2025-12-01 08:51:48.915163', '9', 'admin@nuam.com', 3, '', 11, 1);

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
(15, 'Intranet', 'auditoria'),
(8, 'Intranet', 'califica'),
(6, 'Intranet', 'calificacion_tributaria'),
(9, 'Intranet', 'categoria_factor'),
(13, 'Intranet', 'chat_privado'),
(10, 'Intranet', 'factor_calificacion'),
(7, 'Intranet', 'instrumento_financiero'),
(14, 'Intranet', 'mensaje_privado'),
(16, 'Intranet', 'notification'),
(12, 'Intranet', 'solicitud'),
(11, 'Intranet', 'user'),
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
(1, 'contenttypes', '0001_initial', '2025-12-01 08:17:07.908744'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-12-01 08:17:09.196048'),
(3, 'auth', '0001_initial', '2025-12-01 08:17:13.011677'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-12-01 08:17:14.054017'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-12-01 08:17:14.122611'),
(6, 'auth', '0004_alter_user_username_opts', '2025-12-01 08:17:14.174213'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-12-01 08:17:14.230523'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-12-01 08:17:14.274971'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-12-01 08:17:14.311300'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-12-01 08:17:14.361909'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-12-01 08:17:14.422347'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-12-01 08:17:14.939747'),
(13, 'auth', '0011_update_proxy_permissions', '2025-12-01 08:17:14.977881'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-12-01 08:17:15.019935'),
(15, 'Intranet', '0001_initial', '2025-12-01 08:17:29.507506'),
(16, 'admin', '0001_initial', '2025-12-01 08:17:31.585900'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-12-01 08:17:31.623304'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-01 08:17:31.665326'),
(19, 'sessions', '0001_initial', '2025-12-01 08:17:32.464430'),
(20, 'Intranet', '0002_chat_privado_mensaje_privado', '2025-12-01 16:44:03.295175'),
(21, 'Intranet', '0003_auditoria', '2025-12-02 19:01:15.257346'),
(22, 'Intranet', '0004_notification', '2025-12-04 16:17:18.970176');

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
('9gdjzhtleymm9c31m5utc52uhpyx7h41', '.eJxVjDEOAiEURO9CbcgCHxYs7T0Dgf9BVg0ky25lvLuSbKHNFPPezIv5sG_F7z2tfiF2ZlKx028ZAz5SHYTuod4ax1a3dYl8KPygnV8bpeflcP8OSujluzaTFUpoDNllisIJFBMCphn1CIkBhZJgKGZIs5WaACw4QkOQI1r2_gAXtDjE:1vVp27:NlCw7kFABl0zmq-hsvDZncU6v_l31YhlWfPor_t8Yg4', '2025-12-31 10:45:27.413470'),
('qgh6vkzflzrc7hlgigum2pc2vqobnmvl', '.eJxVjMsOwiAQRf-FtSE8Wgou3fsNZJgZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mz0FqcfscE-OC6E7pDvTWJra7LnOSuyIN2eW3Ez8vh_h0U6OVbj5Qxk1UwsgvZWAQKblLJDIYpBc9sNGXvU9bAyfowOa0c54CBB0Ql3h813zk1:1vVp9J:SRAuD7PE1Y4MsaaBhgYqClxXL7ZCkF3ZTBlS1cA7A6g', '2025-12-31 10:52:53.800007'),
('sz4bki26ko0a89c7qmwun6e2yf43q25u', '.eJxVjDsOwjAQBe_iGlnZdWLHlPQ5g7UfQwLIlvKpEHeHSCmgfTPzXibRto5pW_KcJjVnA2hOvyOTPHLZid6p3KqVWtZ5Yrsr9qCLHarm5-Vw_w5GWsZvjdAiRpEmBw7E6in2Xe9CT4B8DZkjZ_JCFEBbwa5T8BqbIOAckoB5fwAQGjhR:1votTb:S6d0QD0XJToWu_tmvrhDqNz95zrEhXomeot2ZKYs_yM', '2026-02-22 01:20:39.552738');

-- --------------------------------------------------------

--
-- Table structure for table `intranet_auditoria`
--

CREATE TABLE `intranet_auditoria` (
  `id` bigint(20) NOT NULL,
  `tabla` varchar(100) NOT NULL,
  `registro_id` varchar(100) NOT NULL,
  `accion` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `valores_antes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`valores_antes`)),
  `valores_despues` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`valores_despues`)),
  `usuario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_auditoria`
--

INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(1, 'NoneType', '6846521', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:29:28.802740', '{\"secuencia_evento\": 6846521, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 5, \"descripcion\": \"fdgsdfg\", \"fecha_pago\": \"2025-12-18\", \"dividendo\": 1, \"valor_historico\": 6546, \"anio\": 2023, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(2, 'NoneType', '10004', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:29:36.503556', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": 2000000, \"valor_historico\": 9000000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(3, 'NoneType', '10003', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:29:39.772907', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": 1640000, \"valor_historico\": 7100000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(4, 'NoneType', '10002', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:35:32.744378', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": 1570000, \"valor_historico\": 4550000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(5, 'NoneType', '10001', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:35:36.426888', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": 980000, \"valor_historico\": 6500000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(6, 'NoneType', '10000', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:35:40.951864', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": 1250000, \"valor_historico\": 8700000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(7, 'calificacion_tributaria', '4455456', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:38:06.867173', NULL, '{\"secuencia_evento\": 4455456, \"mercado\": \"ACCIONES\", \"instrumento\": 3, \"descripcion\": \"jajant\", \"fecha_pago\": \"2025-12-11\", \"dividendo\": 1, \"valor_historico\": 5665465, \"anio\": 2026, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(8, 'calificacion_tributaria', '4455456', 'ELIMINAR', 'Ingreso de Calificación Tributaria', '2025-12-02 19:39:04.343849', '{\"secuencia_evento\": 4455456, \"mercado\": \"ACCIONES\", \"instrumento\": 3, \"descripcion\": \"jajant\", \"fecha_pago\": \"2025-12-11\", \"dividendo\": 1, \"valor_historico\": 5665465, \"anio\": 2026, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(9, 'User', '18', 'CREAR', 'Ingreso de Usuario', '2025-12-02 19:45:11.346737', NULL, '{\"id\": 18, \"password\": \"pbkdf2_sha256$1000000$AIXkq5SIMLlMPdzlokTmJj$OB8g8Rp5PmauRTrbaNTeDWCNOSrhOmgvI52UcrAGMN4=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"John\", \"last_name\": \"Doe\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-02T19:45:10.484568+00:00\", \"email\": \"john.doe@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(10, 'User', '18', 'EDITAR', 'Modificación de Usuario', '2025-12-02 19:45:26.060026', '{\"id\": 18, \"password\": \"pbkdf2_sha256$1000000$AIXkq5SIMLlMPdzlokTmJj$OB8g8Rp5PmauRTrbaNTeDWCNOSrhOmgvI52UcrAGMN4=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"John\", \"last_name\": \"Joe\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-02T19:45:10.484568+00:00\", \"email\": \"john.joe@nuam.com\", \"groups\": [2], \"user_permissions\": []}', '{\"id\": 18, \"password\": \"pbkdf2_sha256$1000000$AIXkq5SIMLlMPdzlokTmJj$OB8g8Rp5PmauRTrbaNTeDWCNOSrhOmgvI52UcrAGMN4=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"John\", \"last_name\": \"Joe\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-02T19:45:10.484568+00:00\", \"email\": \"john.joe@nuam.com\", \"groups\": [2], \"user_permissions\": []}', 10),
(11, 'User', '18', 'CREAR', 'Eliminación de Usuario', '2025-12-02 19:45:31.944967', '{\"id\": 18, \"password\": \"pbkdf2_sha256$1000000$AIXkq5SIMLlMPdzlokTmJj$OB8g8Rp5PmauRTrbaNTeDWCNOSrhOmgvI52UcrAGMN4=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"John\", \"last_name\": \"Joe\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-02T19:45:10.484568+00:00\", \"email\": \"john.joe@nuam.com\", \"groups\": [2], \"user_permissions\": []}', NULL, 10),
(12, 'instrumento_financiero', '12', 'CREAR', 'Ingreso de Instrumento Financiero', '2025-12-02 19:45:49.521687', NULL, '{\"instrumento_id\": 12, \"codigo\": \"Nuevo\", \"descripcion\": \"Instrumento de Prueba\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Derivados\", \"estado\": \"Ingresado\"}', 10),
(13, 'instrumento_financiero', '12', 'EDITAR', 'Modificacion de Instrumento Financiero', '2025-12-02 19:46:00.667802', '{\"instrumento_id\": 12, \"codigo\": \"proban\", \"descripcion\": \"Otra Vez\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Renta Fija\", \"estado\": \"Ingresado\"}', '{\"instrumento_id\": 12, \"codigo\": \"proban\", \"descripcion\": \"Otra Vez\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Renta Fija\", \"estado\": \"Ingresado\"}', 10),
(14, 'instrumento_financiero', '12', 'ELIMINAR', 'Eliminación de Instrumento Financiero', '2025-12-02 19:46:05.809985', '{\"instrumento_id\": 12, \"codigo\": \"proban\", \"descripcion\": \"Otra Vez\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Renta Fija\", \"estado\": \"Ingresado\"}', NULL, 10),
(15, 'calificacion_tributaria', '10095', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-03 12:29:53.940338', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(16, 'califica', '211', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:29:54.077190', NULL, '{\"id\": 211, \"factor\": 8, \"calificacion\": 10095, \"valor\": \"0.15\"}', 12),
(17, 'califica', '212', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:29:54.162518', NULL, '{\"id\": 212, \"factor\": 9, \"calificacion\": 10095, \"valor\": \"0.15\"}', 12),
(18, 'califica', '213', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:29:54.245039', NULL, '{\"id\": 213, \"factor\": 10, \"calificacion\": 10095, \"valor\": \"0.15\"}', 12),
(19, 'califica', '214', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:29:54.313743', NULL, '{\"id\": 214, \"factor\": 11, \"calificacion\": 10095, \"valor\": \"0.1\"}', 12),
(20, 'califica', '215', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:29:54.377081', NULL, '{\"id\": 215, \"factor\": 12, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(21, 'califica', '216', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:29:54.461218', NULL, '{\"id\": 216, \"factor\": 13, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(22, 'califica', '217', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:29:54.534206', NULL, '{\"id\": 217, \"factor\": 14, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(23, 'califica', '218', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:29:54.629145', NULL, '{\"id\": 218, \"factor\": 15, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(24, 'califica', '219', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:29:54.699704', NULL, '{\"id\": 219, \"factor\": 16, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(25, 'califica', '220', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:29:54.773556', NULL, '{\"id\": 220, \"factor\": 17, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(26, 'califica', '221', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:29:54.887729', NULL, '{\"id\": 221, \"factor\": 18, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(27, 'califica', '222', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:29:54.978022', NULL, '{\"id\": 222, \"factor\": 19, \"calificacion\": 10095, \"valor\": \"0.12\"}', 12),
(28, 'califica', '223', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:29:55.061653', NULL, '{\"id\": 223, \"factor\": 20, \"calificacion\": 10095, \"valor\": \"0.12\"}', 12),
(29, 'califica', '224', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:29:55.129770', NULL, '{\"id\": 224, \"factor\": 21, \"calificacion\": 10095, \"valor\": \"0.45\"}', 12),
(30, 'califica', '225', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:29:55.193411', NULL, '{\"id\": 225, \"factor\": 22, \"calificacion\": 10095, \"valor\": \"0.12\"}', 12),
(31, 'califica', '226', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:29:55.277844', NULL, '{\"id\": 226, \"factor\": 23, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(32, 'califica', '227', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:29:55.362270', NULL, '{\"id\": 227, \"factor\": 24, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(33, 'califica', '228', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:29:55.445111', NULL, '{\"id\": 228, \"factor\": 25, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(34, 'califica', '229', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:29:55.529201', NULL, '{\"id\": 229, \"factor\": 26, \"calificacion\": 10095, \"valor\": \"0.2\"}', 12),
(35, 'califica', '230', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:29:55.625158', NULL, '{\"id\": 230, \"factor\": 27, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(36, 'califica', '231', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:29:55.695522', NULL, '{\"id\": 231, \"factor\": 28, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(37, 'califica', '232', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:29:55.769936', NULL, '{\"id\": 232, \"factor\": 29, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(38, 'califica', '233', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:29:55.854019', NULL, '{\"id\": 233, \"factor\": 30, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(39, 'califica', '234', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:29:55.938016', NULL, '{\"id\": 234, \"factor\": 31, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(40, 'califica', '235', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:29:56.021358', NULL, '{\"id\": 235, \"factor\": 32, \"calificacion\": 10095, \"valor\": \"0\"}', 12),
(41, 'califica', '236', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:29:56.089745', NULL, '{\"id\": 236, \"factor\": 33, \"calificacion\": 10095, \"valor\": \"0.3\"}', 12),
(42, 'califica', '237', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:29:56.153349', NULL, '{\"id\": 237, \"factor\": 34, \"calificacion\": 10095, \"valor\": \"0.1\"}', 12),
(43, 'califica', '238', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:29:56.250390', NULL, '{\"id\": 238, \"factor\": 35, \"calificacion\": 10095, \"valor\": \"0.4\"}', 12),
(44, 'califica', '239', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:29:56.321613', NULL, '{\"id\": 239, \"factor\": 36, \"calificacion\": 10095, \"valor\": \"0.5\"}', 12),
(45, 'califica', '240', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:29:56.418291', NULL, '{\"id\": 240, \"factor\": 37, \"calificacion\": 10095, \"valor\": \"0.2\"}', 12),
(46, 'calificacion_tributaria', '10000', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:30:11.769808', NULL, '{\"secuencia_evento\": \"10000\", \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"Descripcion prueba 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"100\", \"valor_historico\": \"1000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(47, 'calificacion_tributaria', '10000', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:30:48.223274', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"Descripcion prueba 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"100\", \"valor_historico\": \"1000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": []}', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"Descripcion prueba 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"100\", \"valor_historico\": \"1000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": []}', 12),
(48, 'califica', '241', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:30:48.328710', NULL, '{\"id\": 241, \"factor\": 8, \"calificacion\": 10000, \"valor\": 0.4}', 12),
(49, 'califica', '242', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:30:48.400939', NULL, '{\"id\": 242, \"factor\": 9, \"calificacion\": 10000, \"valor\": 0.45}', 12),
(50, 'califica', '243', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:30:48.484863', NULL, '{\"id\": 243, \"factor\": 10, \"calificacion\": 10000, \"valor\": 0.5}', 12),
(51, 'califica', '244', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:30:48.553316', NULL, '{\"id\": 244, \"factor\": 11, \"calificacion\": 10000, \"valor\": 0.55}', 12),
(52, 'califica', '245', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:30:48.616825', NULL, '{\"id\": 245, \"factor\": 12, \"calificacion\": 10000, \"valor\": 0.6}', 12),
(53, 'califica', '246', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:30:48.700849', NULL, '{\"id\": 246, \"factor\": 13, \"calificacion\": 10000, \"valor\": 0.65}', 12),
(54, 'califica', '247', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:30:48.772774', NULL, '{\"id\": 247, \"factor\": 14, \"calificacion\": 10000, \"valor\": 0.7}', 12),
(55, 'califica', '248', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:30:48.856683', NULL, '{\"id\": 248, \"factor\": 15, \"calificacion\": 10000, \"valor\": 0.75}', 12),
(56, 'califica', '249', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:30:48.926975', NULL, '{\"id\": 249, \"factor\": 16, \"calificacion\": 10000, \"valor\": 0.8}', 12),
(57, 'califica', '250', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:30:48.988847', NULL, '{\"id\": 250, \"factor\": 17, \"calificacion\": 10000, \"valor\": 0.85}', 12),
(58, 'califica', '251', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:30:49.189369', NULL, '{\"id\": 251, \"factor\": 18, \"calificacion\": 10000, \"valor\": 0.9}', 12),
(59, 'califica', '252', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:30:49.261898', NULL, '{\"id\": 252, \"factor\": 19, \"calificacion\": 10000, \"valor\": 0.95}', 12),
(60, 'califica', '253', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:30:49.324918', NULL, '{\"id\": 253, \"factor\": 20, \"calificacion\": 10000, \"valor\": 0.0}', 12),
(61, 'califica', '254', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:30:49.408926', NULL, '{\"id\": 254, \"factor\": 21, \"calificacion\": 10000, \"valor\": 0.05}', 12),
(62, 'califica', '255', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:30:49.481144', NULL, '{\"id\": 255, \"factor\": 22, \"calificacion\": 10000, \"valor\": 0.1}', 12),
(63, 'califica', '256', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:30:49.564942', NULL, '{\"id\": 256, \"factor\": 23, \"calificacion\": 10000, \"valor\": 0.15}', 12),
(64, 'califica', '257', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:30:49.633325', NULL, '{\"id\": 257, \"factor\": 24, \"calificacion\": 10000, \"valor\": 0.2}', 12),
(65, 'califica', '258', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:30:49.717394', NULL, '{\"id\": 258, \"factor\": 25, \"calificacion\": 10000, \"valor\": 0.25}', 12),
(66, 'califica', '259', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:30:49.801459', NULL, '{\"id\": 259, \"factor\": 26, \"calificacion\": 10000, \"valor\": 0.3}', 12),
(67, 'califica', '260', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:30:49.873747', NULL, '{\"id\": 260, \"factor\": 27, \"calificacion\": 10000, \"valor\": 0.35}', 12),
(68, 'califica', '261', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:30:49.936873', NULL, '{\"id\": 261, \"factor\": 28, \"calificacion\": 10000, \"valor\": 0.4}', 12),
(69, 'califica', '262', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:30:50.021132', NULL, '{\"id\": 262, \"factor\": 29, \"calificacion\": 10000, \"valor\": 0.45}', 12),
(70, 'califica', '263', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:30:50.104981', NULL, '{\"id\": 263, \"factor\": 30, \"calificacion\": 10000, \"valor\": 0.5}', 12),
(71, 'califica', '264', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:30:50.189144', NULL, '{\"id\": 264, \"factor\": 31, \"calificacion\": 10000, \"valor\": 0.55}', 12),
(72, 'califica', '265', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:30:50.262280', NULL, '{\"id\": 265, \"factor\": 32, \"calificacion\": 10000, \"valor\": 0.6}', 12),
(73, 'califica', '266', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:30:50.345201', NULL, '{\"id\": 266, \"factor\": 33, \"calificacion\": 10000, \"valor\": 0.65}', 12),
(74, 'califica', '267', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:30:50.417619', NULL, '{\"id\": 267, \"factor\": 34, \"calificacion\": 10000, \"valor\": 0.7}', 12),
(75, 'califica', '268', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:30:50.514165', NULL, '{\"id\": 268, \"factor\": 35, \"calificacion\": 10000, \"valor\": 0.75}', 12),
(76, 'califica', '269', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:30:50.596030', NULL, '{\"id\": 269, \"factor\": 36, \"calificacion\": 10000, \"valor\": 0.8}', 12),
(77, 'califica', '270', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:30:50.657617', NULL, '{\"id\": 270, \"factor\": 37, \"calificacion\": 10000, \"valor\": 0.0}', 12),
(78, 'calificacion_tributaria', '10001', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:30:50.789295', NULL, '{\"secuencia_evento\": \"10001\", \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"Descripcion prueba 2\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"110\", \"valor_historico\": \"1200\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(79, 'califica', '271', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:30:50.881580', NULL, '{\"id\": 271, \"factor\": 8, \"calificacion\": \"10001\", \"valor\": 0.8}', 12),
(80, 'califica', '272', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:30:50.965909', NULL, '{\"id\": 272, \"factor\": 9, \"calificacion\": \"10001\", \"valor\": 0.9}', 12),
(81, 'califica', '273', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:30:51.042273', NULL, '{\"id\": 273, \"factor\": 10, \"calificacion\": \"10001\", \"valor\": 1.0}', 12),
(82, 'califica', '274', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:30:51.137284', NULL, '{\"id\": 274, \"factor\": 11, \"calificacion\": \"10001\", \"valor\": 0.05}', 12),
(83, 'califica', '275', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:30:51.234271', NULL, '{\"id\": 275, \"factor\": 12, \"calificacion\": \"10001\", \"valor\": 0.1}', 12),
(84, 'califica', '276', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:30:51.329246', NULL, '{\"id\": 276, \"factor\": 13, \"calificacion\": \"10001\", \"valor\": 0.15}', 12),
(85, 'califica', '277', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:30:51.398142', NULL, '{\"id\": 277, \"factor\": 14, \"calificacion\": \"10001\", \"valor\": 0.2}', 12),
(86, 'califica', '278', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:30:51.474356', NULL, '{\"id\": 278, \"factor\": 15, \"calificacion\": \"10001\", \"valor\": 0.25}', 12),
(87, 'califica', '279', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:30:51.557574', NULL, '{\"id\": 279, \"factor\": 16, \"calificacion\": \"10001\", \"valor\": 0.3}', 12),
(88, 'califica', '280', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:30:51.629352', NULL, '{\"id\": 280, \"factor\": 17, \"calificacion\": \"10001\", \"valor\": 0.35}', 12),
(89, 'califica', '281', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:30:51.726206', NULL, '{\"id\": 281, \"factor\": 18, \"calificacion\": \"10001\", \"valor\": 0.4}', 12),
(90, 'califica', '282', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:30:51.805751', NULL, '{\"id\": 282, \"factor\": 19, \"calificacion\": \"10001\", \"valor\": 0.45}', 12),
(91, 'califica', '283', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:30:51.870120', NULL, '{\"id\": 283, \"factor\": 20, \"calificacion\": \"10001\", \"valor\": 0.5}', 12),
(92, 'califica', '284', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:30:51.966369', NULL, '{\"id\": 284, \"factor\": 21, \"calificacion\": \"10001\", \"valor\": 0.55}', 12),
(93, 'califica', '285', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:30:52.045455', NULL, '{\"id\": 285, \"factor\": 22, \"calificacion\": \"10001\", \"valor\": 0.6}', 12),
(94, 'califica', '286', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:30:52.149974', NULL, '{\"id\": 286, \"factor\": 23, \"calificacion\": \"10001\", \"valor\": 0.65}', 12),
(95, 'califica', '287', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:30:52.478435', NULL, '{\"id\": 287, \"factor\": 24, \"calificacion\": \"10001\", \"valor\": 0.7}', 12),
(96, 'califica', '288', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:30:52.553585', NULL, '{\"id\": 288, \"factor\": 25, \"calificacion\": \"10001\", \"valor\": 0.75}', 12),
(97, 'califica', '289', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:30:52.637385', NULL, '{\"id\": 289, \"factor\": 26, \"calificacion\": \"10001\", \"valor\": 0.8}', 12),
(98, 'califica', '290', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:30:52.707054', NULL, '{\"id\": 290, \"factor\": 27, \"calificacion\": \"10001\", \"valor\": 0.85}', 12),
(99, 'califica', '291', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:30:52.782234', NULL, '{\"id\": 291, \"factor\": 28, \"calificacion\": \"10001\", \"valor\": 0.9}', 12),
(100, 'califica', '292', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:30:52.865931', NULL, '{\"id\": 292, \"factor\": 29, \"calificacion\": \"10001\", \"valor\": 0.95}', 12),
(101, 'califica', '293', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:30:52.974247', NULL, '{\"id\": 293, \"factor\": 30, \"calificacion\": \"10001\", \"valor\": 0.0}', 12),
(102, 'califica', '294', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:30:53.117302', NULL, '{\"id\": 294, \"factor\": 31, \"calificacion\": \"10001\", \"valor\": 0.05}', 12),
(103, 'califica', '295', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:30:53.250540', NULL, '{\"id\": 295, \"factor\": 32, \"calificacion\": \"10001\", \"valor\": 0.1}', 12),
(104, 'califica', '296', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:30:53.346477', NULL, '{\"id\": 296, \"factor\": 33, \"calificacion\": \"10001\", \"valor\": 0.15}', 12),
(105, 'califica', '297', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:30:53.509406', NULL, '{\"id\": 297, \"factor\": 34, \"calificacion\": \"10001\", \"valor\": 0.2}', 12),
(106, 'califica', '298', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:30:53.609453', NULL, '{\"id\": 298, \"factor\": 35, \"calificacion\": \"10001\", \"valor\": 0.25}', 12),
(107, 'califica', '299', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:30:53.694069', NULL, '{\"id\": 299, \"factor\": 36, \"calificacion\": \"10001\", \"valor\": 0.3}', 12),
(108, 'califica', '300', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:30:53.774518', NULL, '{\"id\": 300, \"factor\": 37, \"calificacion\": \"10001\", \"valor\": 0.0}', 12),
(109, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:30:53.840626', NULL, '{\"secuencia_evento\": \"10002\", \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"Descripcion prueba 3\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"120\", \"valor_historico\": \"1400\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(110, 'califica', '301', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:30:53.922033', NULL, '{\"id\": 301, \"factor\": 8, \"calificacion\": \"10002\", \"valor\": 0.2}', 12),
(111, 'califica', '302', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:30:53.990420', NULL, '{\"id\": 302, \"factor\": 9, \"calificacion\": \"10002\", \"valor\": 0.25}', 12),
(112, 'califica', '303', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:30:54.054039', NULL, '{\"id\": 303, \"factor\": 10, \"calificacion\": \"10002\", \"valor\": 0.3}', 12),
(113, 'califica', '304', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:30:54.137301', NULL, '{\"id\": 304, \"factor\": 11, \"calificacion\": \"10002\", \"valor\": 0.35}', 12),
(114, 'califica', '305', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:30:54.209484', NULL, '{\"id\": 305, \"factor\": 12, \"calificacion\": \"10002\", \"valor\": 0.4}', 12),
(115, 'califica', '306', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:30:54.314255', NULL, '{\"id\": 306, \"factor\": 13, \"calificacion\": \"10002\", \"valor\": 0.45}', 12),
(116, 'califica', '307', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:30:54.398430', NULL, '{\"id\": 307, \"factor\": 14, \"calificacion\": \"10002\", \"valor\": 0.5}', 12),
(117, 'califica', '308', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:30:54.474443', NULL, '{\"id\": 308, \"factor\": 15, \"calificacion\": \"10002\", \"valor\": 0.55}', 12),
(118, 'califica', '309', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:30:54.569891', NULL, '{\"id\": 309, \"factor\": 16, \"calificacion\": \"10002\", \"valor\": 0.6}', 12),
(119, 'califica', '310', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:30:54.638255', NULL, '{\"id\": 310, \"factor\": 17, \"calificacion\": \"10002\", \"valor\": 0.65}', 12),
(120, 'califica', '311', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:30:54.701435', NULL, '{\"id\": 311, \"factor\": 18, \"calificacion\": \"10002\", \"valor\": 0.7}', 12),
(121, 'califica', '312', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:30:54.786461', NULL, '{\"id\": 312, \"factor\": 19, \"calificacion\": \"10002\", \"valor\": 0.75}', 12),
(122, 'califica', '313', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:30:54.917321', NULL, '{\"id\": 313, \"factor\": 20, \"calificacion\": \"10002\", \"valor\": 0.8}', 12),
(123, 'califica', '314', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:30:55.001227', NULL, '{\"id\": 314, \"factor\": 21, \"calificacion\": \"10002\", \"valor\": 0.85}', 12),
(124, 'califica', '315', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:30:55.069413', NULL, '{\"id\": 315, \"factor\": 22, \"calificacion\": \"10002\", \"valor\": 0.9}', 12),
(125, 'califica', '316', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:30:55.133489', NULL, '{\"id\": 316, \"factor\": 23, \"calificacion\": \"10002\", \"valor\": 0.95}', 12),
(126, 'califica', '317', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:30:55.217480', NULL, '{\"id\": 317, \"factor\": 24, \"calificacion\": \"10002\", \"valor\": 0.0}', 12),
(127, 'califica', '318', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:30:55.289424', NULL, '{\"id\": 318, \"factor\": 25, \"calificacion\": \"10002\", \"valor\": 0.05}', 12),
(128, 'califica', '319', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:30:55.374536', NULL, '{\"id\": 319, \"factor\": 26, \"calificacion\": \"10002\", \"valor\": 0.1}', 12),
(129, 'califica', '320', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:30:55.458464', NULL, '{\"id\": 320, \"factor\": 27, \"calificacion\": \"10002\", \"valor\": 0.15}', 12),
(130, 'califica', '321', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:30:55.554136', NULL, '{\"id\": 321, \"factor\": 28, \"calificacion\": \"10002\", \"valor\": 0.2}', 12),
(131, 'califica', '322', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:30:55.633314', NULL, '{\"id\": 322, \"factor\": 29, \"calificacion\": \"10002\", \"valor\": 0.25}', 12),
(132, 'califica', '323', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:30:55.698166', NULL, '{\"id\": 323, \"factor\": 30, \"calificacion\": \"10002\", \"valor\": 0.3}', 12),
(133, 'califica', '324', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:30:55.781278', NULL, '{\"id\": 324, \"factor\": 31, \"calificacion\": \"10002\", \"valor\": 0.35}', 12),
(134, 'califica', '325', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:30:55.853413', NULL, '{\"id\": 325, \"factor\": 32, \"calificacion\": \"10002\", \"valor\": 0.4}', 12),
(135, 'califica', '326', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:30:55.937396', NULL, '{\"id\": 326, \"factor\": 33, \"calificacion\": \"10002\", \"valor\": 0.45}', 12),
(136, 'califica', '327', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:30:56.005841', NULL, '{\"id\": 327, \"factor\": 34, \"calificacion\": \"10002\", \"valor\": 0.5}', 12),
(137, 'califica', '328', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:30:56.069413', NULL, '{\"id\": 328, \"factor\": 35, \"calificacion\": \"10002\", \"valor\": 0.55}', 12),
(138, 'califica', '329', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:30:56.154606', NULL, '{\"id\": 329, \"factor\": 36, \"calificacion\": \"10002\", \"valor\": 0.6}', 12),
(139, 'califica', '330', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:30:56.261332', NULL, '{\"id\": 330, \"factor\": 37, \"calificacion\": \"10002\", \"valor\": 0.0}', 12),
(140, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:30:56.374313', NULL, '{\"secuencia_evento\": \"10003\", \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"Descripcion prueba 4\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"130\", \"valor_historico\": \"1600\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(141, 'califica', '331', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:30:56.453510', NULL, '{\"id\": 331, \"factor\": 8, \"calificacion\": \"10003\", \"valor\": 0.6}', 12),
(142, 'califica', '332', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:30:56.521499', NULL, '{\"id\": 332, \"factor\": 9, \"calificacion\": \"10003\", \"valor\": 0.65}', 12),
(143, 'califica', '333', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:30:56.605353', NULL, '{\"id\": 333, \"factor\": 10, \"calificacion\": \"10003\", \"valor\": 0.7}', 12),
(144, 'califica', '334', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:30:56.701320', NULL, '{\"id\": 334, \"factor\": 11, \"calificacion\": \"10003\", \"valor\": 0.75}', 12),
(145, 'califica', '335', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:30:56.765634', NULL, '{\"id\": 335, \"factor\": 12, \"calificacion\": \"10003\", \"valor\": 0.8}', 12),
(146, 'califica', '336', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:30:56.874621', NULL, '{\"id\": 336, \"factor\": 13, \"calificacion\": \"10003\", \"valor\": 0.85}', 12),
(147, 'califica', '337', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:30:56.994268', NULL, '{\"id\": 337, \"factor\": 14, \"calificacion\": \"10003\", \"valor\": 0.9}', 12),
(148, 'califica', '338', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:30:57.077960', NULL, '{\"id\": 338, \"factor\": 15, \"calificacion\": \"10003\", \"valor\": 0.95}', 12),
(149, 'califica', '339', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:30:57.194949', NULL, '{\"id\": 339, \"factor\": 16, \"calificacion\": \"10003\", \"valor\": 0.0}', 12),
(150, 'califica', '340', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:30:57.426620', NULL, '{\"id\": 340, \"factor\": 17, \"calificacion\": \"10003\", \"valor\": 0.05}', 12),
(151, 'califica', '341', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:30:57.521994', NULL, '{\"id\": 341, \"factor\": 18, \"calificacion\": \"10003\", \"valor\": 0.1}', 12),
(152, 'califica', '342', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:30:57.750721', NULL, '{\"id\": 342, \"factor\": 19, \"calificacion\": \"10003\", \"valor\": 0.15}', 12),
(153, 'califica', '343', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:30:57.962185', NULL, '{\"id\": 343, \"factor\": 20, \"calificacion\": \"10003\", \"valor\": 0.2}', 12),
(154, 'califica', '344', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:30:58.033829', NULL, '{\"id\": 344, \"factor\": 21, \"calificacion\": \"10003\", \"valor\": 0.25}', 12),
(155, 'califica', '345', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:30:58.109486', NULL, '{\"id\": 345, \"factor\": 22, \"calificacion\": \"10003\", \"valor\": 0.3}', 12),
(156, 'califica', '346', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:30:58.193830', NULL, '{\"id\": 346, \"factor\": 23, \"calificacion\": \"10003\", \"valor\": 0.35}', 12),
(157, 'califica', '347', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:30:58.266077', NULL, '{\"id\": 347, \"factor\": 24, \"calificacion\": \"10003\", \"valor\": 0.4}', 12),
(158, 'califica', '348', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:30:58.349533', NULL, '{\"id\": 348, \"factor\": 25, \"calificacion\": \"10003\", \"valor\": 0.45}', 12),
(159, 'califica', '349', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:30:58.419024', NULL, '{\"id\": 349, \"factor\": 26, \"calificacion\": \"10003\", \"valor\": 0.5}', 12),
(160, 'califica', '350', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:30:58.502193', NULL, '{\"id\": 350, \"factor\": 27, \"calificacion\": \"10003\", \"valor\": 0.55}', 12),
(161, 'califica', '351', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:30:58.574478', NULL, '{\"id\": 351, \"factor\": 28, \"calificacion\": \"10003\", \"valor\": 0.6}', 12),
(162, 'califica', '352', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:30:58.637665', NULL, '{\"id\": 352, \"factor\": 29, \"calificacion\": \"10003\", \"valor\": 0.65}', 12),
(163, 'califica', '353', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:30:58.733764', NULL, '{\"id\": 353, \"factor\": 30, \"calificacion\": \"10003\", \"valor\": 0.7}', 12),
(164, 'califica', '354', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:30:58.813494', NULL, '{\"id\": 354, \"factor\": 31, \"calificacion\": \"10003\", \"valor\": 0.75}', 12),
(165, 'califica', '355', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:30:59.089952', NULL, '{\"id\": 355, \"factor\": 32, \"calificacion\": \"10003\", \"valor\": 0.8}', 12),
(166, 'califica', '356', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:30:59.201706', NULL, '{\"id\": 356, \"factor\": 33, \"calificacion\": \"10003\", \"valor\": 0.85}', 12),
(167, 'califica', '357', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:30:59.285594', NULL, '{\"id\": 357, \"factor\": 34, \"calificacion\": \"10003\", \"valor\": 0.9}', 12),
(168, 'califica', '358', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:30:59.369604', NULL, '{\"id\": 358, \"factor\": 35, \"calificacion\": \"10003\", \"valor\": 0.95}', 12),
(169, 'califica', '359', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:30:59.437399', NULL, '{\"id\": 359, \"factor\": 36, \"calificacion\": \"10003\", \"valor\": 0.0}', 12),
(170, 'califica', '360', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:30:59.521287', NULL, '{\"id\": 360, \"factor\": 37, \"calificacion\": \"10003\", \"valor\": 0.0}', 12),
(171, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:30:59.586521', NULL, '{\"secuencia_evento\": \"10004\", \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"Descripcion prueba 5\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"140\", \"valor_historico\": \"1800\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(172, 'califica', '361', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:30:59.657733', NULL, '{\"id\": 361, \"factor\": 8, \"calificacion\": \"10004\", \"valor\": 0.0}', 12),
(173, 'califica', '362', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:30:59.741685', NULL, '{\"id\": 362, \"factor\": 9, \"calificacion\": \"10004\", \"valor\": 0.05}', 12),
(174, 'califica', '363', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:30:59.809912', NULL, '{\"id\": 363, \"factor\": 10, \"calificacion\": \"10004\", \"valor\": 0.1}', 12),
(175, 'califica', '364', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:30:59.873622', NULL, '{\"id\": 364, \"factor\": 11, \"calificacion\": \"10004\", \"valor\": 0.15}', 12),
(176, 'califica', '365', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:30:59.957545', NULL, '{\"id\": 365, \"factor\": 12, \"calificacion\": \"10004\", \"valor\": 0.2}', 12),
(177, 'califica', '366', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:31:00.029612', NULL, '{\"id\": 366, \"factor\": 13, \"calificacion\": \"10004\", \"valor\": 0.25}', 12),
(178, 'califica', '367', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:31:00.113728', NULL, '{\"id\": 367, \"factor\": 14, \"calificacion\": \"10004\", \"valor\": 0.3}', 12),
(179, 'califica', '368', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:31:00.181417', NULL, '{\"id\": 368, \"factor\": 15, \"calificacion\": \"10004\", \"valor\": 0.35}', 12),
(180, 'califica', '369', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:31:00.245796', NULL, '{\"id\": 369, \"factor\": 16, \"calificacion\": \"10004\", \"valor\": 0.4}', 12),
(181, 'califica', '370', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:31:00.377685', NULL, '{\"id\": 370, \"factor\": 17, \"calificacion\": \"10004\", \"valor\": 0.45}', 12),
(182, 'califica', '371', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:31:00.449652', NULL, '{\"id\": 371, \"factor\": 18, \"calificacion\": \"10004\", \"valor\": 0.5}', 12),
(183, 'califica', '372', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:31:00.533651', NULL, '{\"id\": 372, \"factor\": 19, \"calificacion\": \"10004\", \"valor\": 0.55}', 12),
(184, 'califica', '373', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:31:00.605683', NULL, '{\"id\": 373, \"factor\": 20, \"calificacion\": \"10004\", \"valor\": 0.6}', 12),
(185, 'califica', '374', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:31:00.702460', NULL, '{\"id\": 374, \"factor\": 21, \"calificacion\": \"10004\", \"valor\": 0.65}', 12),
(186, 'califica', '375', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:31:00.786425', NULL, '{\"id\": 375, \"factor\": 22, \"calificacion\": \"10004\", \"valor\": 0.7}', 12),
(187, 'califica', '376', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:31:00.869794', NULL, '{\"id\": 376, \"factor\": 23, \"calificacion\": \"10004\", \"valor\": 0.75}', 12),
(188, 'califica', '377', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:31:00.938122', NULL, '{\"id\": 377, \"factor\": 24, \"calificacion\": \"10004\", \"valor\": 0.8}', 12),
(189, 'califica', '378', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:31:01.001851', NULL, '{\"id\": 378, \"factor\": 25, \"calificacion\": \"10004\", \"valor\": 0.85}', 12),
(190, 'califica', '379', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:31:01.097849', NULL, '{\"id\": 379, \"factor\": 26, \"calificacion\": \"10004\", \"valor\": 0.9}', 12),
(191, 'califica', '380', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:31:01.182478', NULL, '{\"id\": 380, \"factor\": 27, \"calificacion\": \"10004\", \"valor\": 0.95}', 12),
(192, 'califica', '381', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:31:01.301881', NULL, '{\"id\": 381, \"factor\": 28, \"calificacion\": \"10004\", \"valor\": 0.0}', 12),
(193, 'califica', '382', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:31:01.385931', NULL, '{\"id\": 382, \"factor\": 29, \"calificacion\": \"10004\", \"valor\": 0.05}', 12),
(194, 'califica', '383', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:31:01.457832', NULL, '{\"id\": 383, \"factor\": 30, \"calificacion\": \"10004\", \"valor\": 0.1}', 12),
(195, 'califica', '384', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:31:01.541747', NULL, '{\"id\": 384, \"factor\": 31, \"calificacion\": \"10004\", \"valor\": 0.15}', 12),
(196, 'califica', '385', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:31:01.609523', NULL, '{\"id\": 385, \"factor\": 32, \"calificacion\": \"10004\", \"valor\": 0.2}', 12),
(197, 'califica', '386', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:31:01.710788', NULL, '{\"id\": 386, \"factor\": 33, \"calificacion\": \"10004\", \"valor\": 0.25}', 12),
(198, 'califica', '387', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:31:01.794075', NULL, '{\"id\": 387, \"factor\": 34, \"calificacion\": \"10004\", \"valor\": 0.3}', 12),
(199, 'califica', '388', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:31:01.866156', NULL, '{\"id\": 388, \"factor\": 35, \"calificacion\": \"10004\", \"valor\": 0.35}', 12),
(200, 'califica', '389', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:31:01.950179', NULL, '{\"id\": 389, \"factor\": 36, \"calificacion\": \"10004\", \"valor\": 0.4}', 12),
(201, 'califica', '390', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:31:02.045883', NULL, '{\"id\": 390, \"factor\": 37, \"calificacion\": \"10004\", \"valor\": 0.0}', 12),
(202, 'calificacion_tributaria', '10004', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-03 12:33:10.853542', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"Descripcion prueba 5\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": 140, \"valor_historico\": 1800, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(203, 'calificacion_tributaria', '10003', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-03 12:33:14.222390', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"Descripcion prueba 4\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": 130, \"valor_historico\": 1600, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 12),
(204, 'calificacion_tributaria', '10000', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:33:40.041176', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 12),
(205, 'calificacion_tributaria', '10000', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:41:40.595906', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 12),
(206, 'califica', '241', 'EDITAR', 'Califica editado para factor 8', '2025-12-03 12:41:40.657762', '{\"id\": 241, \"factor\": 8, \"calificacion\": 10000, \"valor\": 0.072235}', '{\"id\": 241, \"factor\": 8, \"calificacion\": 10000, \"valor\": 0.072235}', 12),
(207, 'califica', '242', 'EDITAR', 'Califica editado para factor 9', '2025-12-03 12:41:40.716983', '{\"id\": 242, \"factor\": 9, \"calificacion\": 10000, \"valor\": 0.45}', '{\"id\": 242, \"factor\": 9, \"calificacion\": 10000, \"valor\": 0.092551}', 12),
(208, 'califica', '243', 'EDITAR', 'Califica editado para factor 10', '2025-12-03 12:41:40.800967', '{\"id\": 243, \"factor\": 10, \"calificacion\": 10000, \"valor\": 0.5}', '{\"id\": 243, \"factor\": 10, \"calificacion\": 10000, \"valor\": 0.112867}', 12);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(209, 'califica', '244', 'EDITAR', 'Califica editado para factor 11', '2025-12-03 12:41:40.881409', '{\"id\": 244, \"factor\": 11, \"calificacion\": 10000, \"valor\": 0.55}', '{\"id\": 244, \"factor\": 11, \"calificacion\": 10000, \"valor\": 0.069977}', 12),
(210, 'califica', '245', 'EDITAR', 'Califica editado para factor 12', '2025-12-03 12:41:40.945127', '{\"id\": 245, \"factor\": 12, \"calificacion\": 10000, \"valor\": 0.6}', '{\"id\": 245, \"factor\": 12, \"calificacion\": 10000, \"valor\": 0.065463}', 12),
(211, 'califica', '246', 'EDITAR', 'Califica editado para factor 13', '2025-12-03 12:41:41.029629', '{\"id\": 246, \"factor\": 13, \"calificacion\": 10000, \"valor\": 0.65}', '{\"id\": 246, \"factor\": 13, \"calificacion\": 10000, \"valor\": 0.060948}', 12),
(212, 'califica', '247', 'EDITAR', 'Califica editado para factor 14', '2025-12-03 12:41:41.100928', '{\"id\": 247, \"factor\": 14, \"calificacion\": 10000, \"valor\": 0.7}', '{\"id\": 247, \"factor\": 14, \"calificacion\": 10000, \"valor\": 0.103837}', 12),
(213, 'califica', '248', 'EDITAR', 'Califica editado para factor 15', '2025-12-03 12:41:41.185586', '{\"id\": 248, \"factor\": 15, \"calificacion\": 10000, \"valor\": 0.75}', '{\"id\": 248, \"factor\": 15, \"calificacion\": 10000, \"valor\": 0.085779}', 12),
(214, 'califica', '249', 'EDITAR', 'Califica editado para factor 16', '2025-12-03 12:41:41.256881', '{\"id\": 249, \"factor\": 16, \"calificacion\": 10000, \"valor\": 0.8}', '{\"id\": 249, \"factor\": 16, \"calificacion\": 10000, \"valor\": 0.074492}', 12),
(215, 'califica', '250', 'EDITAR', 'Califica editado para factor 17', '2025-12-03 12:41:41.342020', '{\"id\": 250, \"factor\": 17, \"calificacion\": 10000, \"valor\": 0.85}', '{\"id\": 250, \"factor\": 17, \"calificacion\": 10000, \"valor\": 0.079007}', 12),
(216, 'califica', '251', 'EDITAR', 'Califica editado para factor 18', '2025-12-03 12:41:41.425927', '{\"id\": 251, \"factor\": 18, \"calificacion\": 10000, \"valor\": 0.9}', '{\"id\": 251, \"factor\": 18, \"calificacion\": 10000, \"valor\": 0.088036}', 12),
(217, 'califica', '252', 'EDITAR', 'Califica editado para factor 19', '2025-12-03 12:41:41.509924', '{\"id\": 252, \"factor\": 19, \"calificacion\": 10000, \"valor\": 0.95}', '{\"id\": 252, \"factor\": 19, \"calificacion\": 10000, \"valor\": 0.094808}', 12),
(218, 'califica', '253', 'EDITAR', 'Califica editado para factor 20', '2025-12-03 12:41:41.592762', '{\"id\": 253, \"factor\": 20, \"calificacion\": 10000, \"valor\": 0.0}', '{\"id\": 253, \"factor\": 20, \"calificacion\": 10000, \"valor\": 0.099323}', 12),
(219, 'califica', '254', 'EDITAR', 'Califica editado para factor 21', '2025-12-03 12:41:41.676700', '{\"id\": 254, \"factor\": 21, \"calificacion\": 10000, \"valor\": 0.05}', '{\"id\": 254, \"factor\": 21, \"calificacion\": 10000, \"valor\": 0.106095}', 12),
(220, 'califica', '255', 'EDITAR', 'Califica editado para factor 22', '2025-12-03 12:41:41.760753', '{\"id\": 255, \"factor\": 22, \"calificacion\": 10000, \"valor\": 0.1}', '{\"id\": 255, \"factor\": 22, \"calificacion\": 10000, \"valor\": 0.110609}', 12),
(221, 'califica', '256', 'EDITAR', 'Califica editado para factor 23', '2025-12-03 12:41:41.832935', '{\"id\": 256, \"factor\": 23, \"calificacion\": 10000, \"valor\": 0.15}', '{\"id\": 256, \"factor\": 23, \"calificacion\": 10000, \"valor\": 0.115124}', 12),
(222, 'califica', '257', 'EDITAR', 'Califica editado para factor 24', '2025-12-03 12:41:41.917989', '{\"id\": 257, \"factor\": 24, \"calificacion\": 10000, \"valor\": 0.2}', '{\"id\": 257, \"factor\": 24, \"calificacion\": 10000, \"valor\": 0.119639}', 12),
(223, 'califica', '258', 'EDITAR', 'Califica editado para factor 25', '2025-12-03 12:41:42.002018', '{\"id\": 258, \"factor\": 25, \"calificacion\": 10000, \"valor\": 0.25}', '{\"id\": 258, \"factor\": 25, \"calificacion\": 10000, \"valor\": 0.124153}', 12),
(224, 'califica', '259', 'EDITAR', 'Califica editado para factor 26', '2025-12-03 12:41:42.084835', '{\"id\": 259, \"factor\": 26, \"calificacion\": 10000, \"valor\": 0.3}', '{\"id\": 259, \"factor\": 26, \"calificacion\": 10000, \"valor\": 0.128668}', 12),
(225, 'califica', '260', 'EDITAR', 'Califica editado para factor 27', '2025-12-03 12:41:42.158029', '{\"id\": 260, \"factor\": 27, \"calificacion\": 10000, \"valor\": 0.35}', '{\"id\": 260, \"factor\": 27, \"calificacion\": 10000, \"valor\": 0.133183}', 12),
(226, 'califica', '261', 'EDITAR', 'Califica editado para factor 28', '2025-12-03 12:41:42.254066', '{\"id\": 261, \"factor\": 28, \"calificacion\": 10000, \"valor\": 0.4}', '{\"id\": 261, \"factor\": 28, \"calificacion\": 10000, \"valor\": 0.137698}', 12),
(227, 'califica', '262', 'EDITAR', 'Califica editado para factor 29', '2025-12-03 12:41:42.332234', '{\"id\": 262, \"factor\": 29, \"calificacion\": 10000, \"valor\": 0.45}', '{\"id\": 262, \"factor\": 29, \"calificacion\": 10000, \"valor\": 0.142212}', 12),
(228, 'califica', '263', 'EDITAR', 'Califica editado para factor 30', '2025-12-03 12:41:42.398030', '{\"id\": 263, \"factor\": 30, \"calificacion\": 10000, \"valor\": 0.5}', '{\"id\": 263, \"factor\": 30, \"calificacion\": 10000, \"valor\": 0.146727}', 12),
(229, 'califica', '264', 'EDITAR', 'Califica editado para factor 31', '2025-12-03 12:41:42.494014', '{\"id\": 264, \"factor\": 31, \"calificacion\": 10000, \"valor\": 0.55}', '{\"id\": 264, \"factor\": 31, \"calificacion\": 10000, \"valor\": 0.151242}', 12),
(230, 'califica', '265', 'EDITAR', 'Califica editado para factor 32', '2025-12-03 12:41:42.577378', '{\"id\": 265, \"factor\": 32, \"calificacion\": 10000, \"valor\": 0.6}', '{\"id\": 265, \"factor\": 32, \"calificacion\": 10000, \"valor\": 0.155756}', 12),
(231, 'califica', '266', 'EDITAR', 'Califica editado para factor 33', '2025-12-03 12:41:42.644097', '{\"id\": 266, \"factor\": 33, \"calificacion\": 10000, \"valor\": 0.65}', '{\"id\": 266, \"factor\": 33, \"calificacion\": 10000, \"valor\": 0.160271}', 12),
(232, 'califica', '267', 'EDITAR', 'Califica editado para factor 34', '2025-12-03 12:41:42.708981', '{\"id\": 267, \"factor\": 34, \"calificacion\": 10000, \"valor\": 0.7}', '{\"id\": 267, \"factor\": 34, \"calificacion\": 10000, \"valor\": 0.164786}', 12),
(233, 'califica', '268', 'EDITAR', 'Califica editado para factor 35', '2025-12-03 12:41:42.794114', '{\"id\": 268, \"factor\": 35, \"calificacion\": 10000, \"valor\": 0.75}', '{\"id\": 268, \"factor\": 35, \"calificacion\": 10000, \"valor\": 0.1693}', 12),
(234, 'califica', '269', 'EDITAR', 'Califica editado para factor 36', '2025-12-03 12:41:42.878079', '{\"id\": 269, \"factor\": 36, \"calificacion\": 10000, \"valor\": 0.8}', '{\"id\": 269, \"factor\": 36, \"calificacion\": 10000, \"valor\": 0.173815}', 12),
(235, 'califica', '270', 'EDITAR', 'Califica editado para factor 37', '2025-12-03 12:41:42.973684', '{\"id\": 270, \"factor\": 37, \"calificacion\": 10000, \"valor\": 0.0}', '{\"id\": 270, \"factor\": 37, \"calificacion\": 10000, \"valor\": 0.17833}', 12),
(236, 'calificacion_tributaria', '10001', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:41:43.065083', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 12),
(237, 'califica', '271', 'EDITAR', 'Califica editado para factor 8', '2025-12-03 12:41:43.153109', '{\"id\": 271, \"factor\": 8, \"calificacion\": 10001, \"valor\": 0.8}', '{\"id\": 271, \"factor\": 8, \"calificacion\": 10001, \"valor\": 0.120614}', 12),
(238, 'califica', '272', 'EDITAR', 'Califica editado para factor 9', '2025-12-03 12:41:43.249016', '{\"id\": 272, \"factor\": 9, \"calificacion\": 10001, \"valor\": 0.9}', '{\"id\": 272, \"factor\": 9, \"calificacion\": 10001, \"valor\": 0.131579}', 12),
(239, 'califica', '273', 'EDITAR', 'Califica editado para factor 10', '2025-12-03 12:41:43.334099', '{\"id\": 273, \"factor\": 10, \"calificacion\": 10001, \"valor\": 1.0}', '{\"id\": 273, \"factor\": 10, \"calificacion\": 10001, \"valor\": 0.109649}', 12),
(240, 'califica', '274', 'EDITAR', 'Califica editado para factor 11', '2025-12-03 12:41:43.412214', '{\"id\": 274, \"factor\": 11, \"calificacion\": 10001, \"valor\": 0.05}', '{\"id\": 274, \"factor\": 11, \"calificacion\": 10001, \"valor\": 0.041667}', 12),
(241, 'califica', '275', 'EDITAR', 'Califica editado para factor 12', '2025-12-03 12:41:43.497312', '{\"id\": 275, \"factor\": 12, \"calificacion\": 10001, \"valor\": 0.1}', '{\"id\": 275, \"factor\": 12, \"calificacion\": 10001, \"valor\": 0.046053}', 12),
(242, 'califica', '276', 'EDITAR', 'Califica editado para factor 13', '2025-12-03 12:41:43.580446', '{\"id\": 276, \"factor\": 13, \"calificacion\": 10001, \"valor\": 0.15}', '{\"id\": 276, \"factor\": 13, \"calificacion\": 10001, \"valor\": 0.050439}', 12),
(243, 'califica', '277', 'EDITAR', 'Califica editado para factor 14', '2025-12-03 12:41:43.645077', '{\"id\": 277, \"factor\": 14, \"calificacion\": 10001, \"valor\": 0.2}', '{\"id\": 277, \"factor\": 14, \"calificacion\": 10001, \"valor\": 0.054825}', 12),
(244, 'califica', '278', 'EDITAR', 'Califica editado para factor 15', '2025-12-03 12:41:43.742050', '{\"id\": 278, \"factor\": 15, \"calificacion\": 10001, \"valor\": 0.25}', '{\"id\": 278, \"factor\": 15, \"calificacion\": 10001, \"valor\": 0.066886}', 12),
(245, 'califica', '279', 'EDITAR', 'Califica editado para factor 16', '2025-12-03 12:41:43.813092', '{\"id\": 279, \"factor\": 16, \"calificacion\": 10001, \"valor\": 0.3}', '{\"id\": 279, \"factor\": 16, \"calificacion\": 10001, \"valor\": 0.078947}', 12),
(246, 'califica', '280', 'EDITAR', 'Califica editado para factor 17', '2025-12-03 12:41:43.898491', '{\"id\": 280, \"factor\": 17, \"calificacion\": 10001, \"valor\": 0.35}', '{\"id\": 280, \"factor\": 17, \"calificacion\": 10001, \"valor\": 0.091009}', 12),
(247, 'califica', '281', 'EDITAR', 'Califica editado para factor 18', '2025-12-03 12:41:43.982182', '{\"id\": 281, \"factor\": 18, \"calificacion\": 10001, \"valor\": 0.4}', '{\"id\": 281, \"factor\": 18, \"calificacion\": 10001, \"valor\": 0.099781}', 12),
(248, 'califica', '282', 'EDITAR', 'Califica editado para factor 19', '2025-12-03 12:41:44.077690', '{\"id\": 282, \"factor\": 19, \"calificacion\": 10001, \"valor\": 0.45}', '{\"id\": 282, \"factor\": 19, \"calificacion\": 10001, \"valor\": 0.108553}', 12),
(249, 'califica', '283', 'EDITAR', 'Califica editado para factor 20', '2025-12-03 12:41:44.149172', '{\"id\": 283, \"factor\": 20, \"calificacion\": 10001, \"valor\": 0.5}', '{\"id\": 283, \"factor\": 20, \"calificacion\": 10001, \"valor\": 0.093202}', 12),
(250, 'califica', '284', 'EDITAR', 'Califica editado para factor 21', '2025-12-03 12:41:44.246077', '{\"id\": 284, \"factor\": 21, \"calificacion\": 10001, \"valor\": 0.55}', '{\"id\": 284, \"factor\": 21, \"calificacion\": 10001, \"valor\": 0.083333}', 12),
(251, 'califica', '285', 'EDITAR', 'Califica editado para factor 22', '2025-12-03 12:41:44.330547', '{\"id\": 285, \"factor\": 22, \"calificacion\": 10001, \"valor\": 0.6}', '{\"id\": 285, \"factor\": 22, \"calificacion\": 10001, \"valor\": 0.074013}', 12),
(252, 'califica', '286', 'EDITAR', 'Califica editado para factor 23', '2025-12-03 12:41:44.426057', '{\"id\": 286, \"factor\": 23, \"calificacion\": 10001, \"valor\": 0.65}', '{\"id\": 286, \"factor\": 23, \"calificacion\": 10001, \"valor\": 0.059211}', 12),
(253, 'califica', '287', 'EDITAR', 'Califica editado para factor 24', '2025-12-03 12:41:44.504106', '{\"id\": 287, \"factor\": 24, \"calificacion\": 10001, \"valor\": 0.7}', '{\"id\": 287, \"factor\": 24, \"calificacion\": 10001, \"valor\": 0.053728}', 12),
(254, 'califica', '288', 'EDITAR', 'Califica editado para factor 25', '2025-12-03 12:41:44.588777', '{\"id\": 288, \"factor\": 25, \"calificacion\": 10001, \"valor\": 0.75}', '{\"id\": 288, \"factor\": 25, \"calificacion\": 10001, \"valor\": 0.048246}', 12),
(255, 'califica', '289', 'EDITAR', 'Califica editado para factor 26', '2025-12-03 12:41:44.684219', '{\"id\": 289, \"factor\": 26, \"calificacion\": 10001, \"valor\": 0.8}', '{\"id\": 289, \"factor\": 26, \"calificacion\": 10001, \"valor\": 0.042763}', 12),
(256, 'califica', '290', 'EDITAR', 'Califica editado para factor 27', '2025-12-03 12:41:44.749358', '{\"id\": 290, \"factor\": 27, \"calificacion\": 10001, \"valor\": 0.85}', '{\"id\": 290, \"factor\": 27, \"calificacion\": 10001, \"valor\": 0.038377}', 12),
(257, 'califica', '291', 'EDITAR', 'Califica editado para factor 28', '2025-12-03 12:41:44.865352', '{\"id\": 291, \"factor\": 28, \"calificacion\": 10001, \"valor\": 0.9}', '{\"id\": 291, \"factor\": 28, \"calificacion\": 10001, \"valor\": 0.033991}', 12),
(258, 'califica', '292', 'EDITAR', 'Califica editado para factor 29', '2025-12-03 12:41:44.941792', '{\"id\": 292, \"factor\": 29, \"calificacion\": 10001, \"valor\": 0.95}', '{\"id\": 292, \"factor\": 29, \"calificacion\": 10001, \"valor\": 0.029605}', 12),
(259, 'califica', '293', 'EDITAR', 'Califica editado para factor 30', '2025-12-03 12:41:45.038118', '{\"id\": 293, \"factor\": 30, \"calificacion\": 10001, \"valor\": 0.0}', '{\"id\": 293, \"factor\": 30, \"calificacion\": 10001, \"valor\": 0.025219}', 12),
(260, 'califica', '294', 'EDITAR', 'Califica editado para factor 31', '2025-12-03 12:41:45.122312', '{\"id\": 294, \"factor\": 31, \"calificacion\": 10001, \"valor\": 0.05}', '{\"id\": 294, \"factor\": 31, \"calificacion\": 10001, \"valor\": 0.020833}', 12),
(261, 'califica', '295', 'EDITAR', 'Califica editado para factor 32', '2025-12-03 12:41:45.218132', '{\"id\": 295, \"factor\": 32, \"calificacion\": 10001, \"valor\": 0.1}', '{\"id\": 295, \"factor\": 32, \"calificacion\": 10001, \"valor\": 0.016447}', 12),
(262, 'califica', '296', 'EDITAR', 'Califica editado para factor 33', '2025-12-03 12:41:45.302097', '{\"id\": 296, \"factor\": 33, \"calificacion\": 10001, \"valor\": 0.15}', '{\"id\": 296, \"factor\": 33, \"calificacion\": 10001, \"valor\": 0.012061}', 12),
(263, 'califica', '297', 'EDITAR', 'Califica editado para factor 34', '2025-12-03 12:41:45.398300', '{\"id\": 297, \"factor\": 34, \"calificacion\": 10001, \"valor\": 0.2}', '{\"id\": 297, \"factor\": 34, \"calificacion\": 10001, \"valor\": 0.009868}', 12),
(264, 'califica', '298', 'EDITAR', 'Califica editado para factor 35', '2025-12-03 12:41:45.477200', '{\"id\": 298, \"factor\": 35, \"calificacion\": 10001, \"valor\": 0.25}', '{\"id\": 298, \"factor\": 35, \"calificacion\": 10001, \"valor\": 0.007675}', 12),
(265, 'califica', '299', 'EDITAR', 'Califica editado para factor 36', '2025-12-03 12:41:45.553186', '{\"id\": 299, \"factor\": 36, \"calificacion\": 10001, \"valor\": 0.3}', '{\"id\": 299, \"factor\": 36, \"calificacion\": 10001, \"valor\": 0.005482}', 12),
(266, 'califica', '300', 'EDITAR', 'Califica editado para factor 37', '2025-12-03 12:41:45.637203', '{\"id\": 300, \"factor\": 37, \"calificacion\": 10001, \"valor\": 0.0}', '{\"id\": 300, \"factor\": 37, \"calificacion\": 10001, \"valor\": 0.003289}', 12),
(267, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:41:45.727791', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 12),
(268, 'califica', '301', 'EDITAR', 'Califica editado para factor 8', '2025-12-03 12:41:45.805290', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.2}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', 12),
(269, 'califica', '302', 'EDITAR', 'Califica editado para factor 9', '2025-12-03 12:41:45.877710', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.25}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', 12),
(270, 'califica', '303', 'EDITAR', 'Califica editado para factor 10', '2025-12-03 12:41:45.974302', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.3}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', 12),
(271, 'califica', '304', 'EDITAR', 'Califica editado para factor 11', '2025-12-03 12:41:46.057454', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.35}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', 12),
(272, 'califica', '305', 'EDITAR', 'Califica editado para factor 12', '2025-12-03 12:41:46.141292', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.4}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', 12),
(273, 'califica', '306', 'EDITAR', 'Califica editado para factor 13', '2025-12-03 12:41:46.221351', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.45}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', 12),
(274, 'califica', '307', 'EDITAR', 'Califica editado para factor 14', '2025-12-03 12:41:46.298530', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.5}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', 12),
(275, 'califica', '308', 'EDITAR', 'Califica editado para factor 15', '2025-12-03 12:41:46.393233', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.55}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', 12),
(276, 'califica', '309', 'EDITAR', 'Califica editado para factor 16', '2025-12-03 12:41:46.465955', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.6}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', 12),
(277, 'califica', '310', 'EDITAR', 'Califica editado para factor 17', '2025-12-03 12:41:46.561301', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.65}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', 12),
(278, 'califica', '311', 'EDITAR', 'Califica editado para factor 18', '2025-12-03 12:41:46.633236', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.7}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', 12),
(279, 'califica', '312', 'EDITAR', 'Califica editado para factor 19', '2025-12-03 12:41:46.718480', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.75}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', 12),
(280, 'califica', '313', 'EDITAR', 'Califica editado para factor 20', '2025-12-03 12:41:46.813457', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.8}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', 12),
(281, 'califica', '314', 'EDITAR', 'Califica editado para factor 21', '2025-12-03 12:41:46.897509', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.85}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', 12),
(282, 'califica', '315', 'EDITAR', 'Califica editado para factor 22', '2025-12-03 12:41:46.969253', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.9}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', 12),
(283, 'califica', '316', 'EDITAR', 'Califica editado para factor 23', '2025-12-03 12:41:47.054038', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.95}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', 12),
(284, 'califica', '317', 'EDITAR', 'Califica editado para factor 24', '2025-12-03 12:41:47.138640', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.0}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', 12),
(285, 'califica', '318', 'EDITAR', 'Califica editado para factor 25', '2025-12-03 12:41:47.246294', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.05}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', 12),
(286, 'califica', '319', 'EDITAR', 'Califica editado para factor 26', '2025-12-03 12:41:47.317405', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.1}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', 12),
(287, 'califica', '320', 'EDITAR', 'Califica editado para factor 27', '2025-12-03 12:41:47.414393', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.15}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', 12),
(288, 'califica', '321', 'EDITAR', 'Califica editado para factor 28', '2025-12-03 12:41:47.493860', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.2}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', 12),
(289, 'califica', '322', 'EDITAR', 'Califica editado para factor 29', '2025-12-03 12:41:47.557591', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.25}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', 12),
(290, 'califica', '323', 'EDITAR', 'Califica editado para factor 30', '2025-12-03 12:41:47.641278', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.3}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', 12),
(291, 'califica', '324', 'EDITAR', 'Califica editado para factor 31', '2025-12-03 12:41:47.713381', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.35}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', 12),
(292, 'califica', '325', 'EDITAR', 'Califica editado para factor 32', '2025-12-03 12:41:47.811419', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.4}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', 12),
(293, 'califica', '326', 'EDITAR', 'Califica editado para factor 33', '2025-12-03 12:41:47.894514', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.45}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', 12),
(294, 'califica', '327', 'EDITAR', 'Califica editado para factor 34', '2025-12-03 12:41:47.990468', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.5}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', 12),
(295, 'califica', '328', 'EDITAR', 'Califica editado para factor 35', '2025-12-03 12:41:48.097376', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.55}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', 12),
(296, 'califica', '329', 'EDITAR', 'Califica editado para factor 36', '2025-12-03 12:41:48.194504', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.6}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', 12),
(297, 'califica', '330', 'EDITAR', 'Califica editado para factor 37', '2025-12-03 12:41:48.325660', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.0}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', 12),
(298, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:41:48.444793', NULL, '{\"secuencia_evento\": \"10003\", \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(299, 'califica', '391', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:41:48.677276', NULL, '{\"id\": 391, \"factor\": 8, \"calificacion\": \"10003\", \"valor\": 0.076739}', 12),
(300, 'califica', '392', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:41:48.745415', NULL, '{\"id\": 392, \"factor\": 9, \"calificacion\": \"10003\", \"valor\": 0.077938}', 12),
(301, 'califica', '393', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:41:48.861468', NULL, '{\"id\": 393, \"factor\": 10, \"calificacion\": \"10003\", \"valor\": 0.079137}', 12),
(302, 'califica', '394', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:41:48.944297', NULL, '{\"id\": 394, \"factor\": 11, \"calificacion\": \"10003\", \"valor\": 0.080336}', 12),
(303, 'califica', '395', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:41:49.009349', NULL, '{\"id\": 395, \"factor\": 12, \"calificacion\": \"10003\", \"valor\": 0.081535}', 12),
(304, 'califica', '396', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:41:49.093341', NULL, '{\"id\": 396, \"factor\": 13, \"calificacion\": \"10003\", \"valor\": 0.082734}', 12),
(305, 'califica', '397', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:41:49.201344', NULL, '{\"id\": 397, \"factor\": 14, \"calificacion\": \"10003\", \"valor\": 0.083933}', 12),
(306, 'califica', '398', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:41:49.285283', NULL, '{\"id\": 398, \"factor\": 15, \"calificacion\": \"10003\", \"valor\": 0.085132}', 12),
(307, 'califica', '399', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:41:49.369442', NULL, '{\"id\": 399, \"factor\": 16, \"calificacion\": \"10003\", \"valor\": 0.086331}', 12),
(308, 'califica', '400', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:41:49.465377', NULL, '{\"id\": 400, \"factor\": 17, \"calificacion\": \"10003\", \"valor\": 0.08753}', 12),
(309, 'califica', '401', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:41:49.532981', NULL, '{\"id\": 401, \"factor\": 18, \"calificacion\": \"10003\", \"valor\": 0.088729}', 12),
(310, 'califica', '402', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:41:49.597322', NULL, '{\"id\": 402, \"factor\": 19, \"calificacion\": \"10003\", \"valor\": 0.089928}', 12),
(311, 'califica', '403', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:41:49.681459', NULL, '{\"id\": 403, \"factor\": 20, \"calificacion\": \"10003\", \"valor\": 0.091127}', 12),
(312, 'califica', '404', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:41:49.766895', NULL, '{\"id\": 404, \"factor\": 21, \"calificacion\": \"10003\", \"valor\": 0.092326}', 12),
(313, 'califica', '405', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:41:49.849420', NULL, '{\"id\": 405, \"factor\": 22, \"calificacion\": \"10003\", \"valor\": 0.093525}', 12),
(314, 'califica', '406', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:41:49.921456', NULL, '{\"id\": 406, \"factor\": 23, \"calificacion\": \"10003\", \"valor\": 0.094724}', 12),
(315, 'califica', '407', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:41:50.005459', NULL, '{\"id\": 407, \"factor\": 24, \"calificacion\": \"10003\", \"valor\": 0.095923}', 12),
(316, 'califica', '408', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:41:50.072332', NULL, '{\"id\": 408, \"factor\": 25, \"calificacion\": \"10003\", \"valor\": 0.097122}', 12),
(317, 'califica', '409', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:41:50.149414', NULL, '{\"id\": 409, \"factor\": 26, \"calificacion\": \"10003\", \"valor\": 0.098321}', 12),
(318, 'califica', '410', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:41:50.252727', NULL, '{\"id\": 410, \"factor\": 27, \"calificacion\": \"10003\", \"valor\": 0.09952}', 12),
(319, 'califica', '411', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:41:50.377804', NULL, '{\"id\": 411, \"factor\": 28, \"calificacion\": \"10003\", \"valor\": 0.100719}', 12),
(320, 'califica', '412', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:41:50.473540', NULL, '{\"id\": 412, \"factor\": 29, \"calificacion\": \"10003\", \"valor\": 0.101918}', 12),
(321, 'califica', '413', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:41:50.570588', NULL, '{\"id\": 413, \"factor\": 30, \"calificacion\": \"10003\", \"valor\": 0.103118}', 12),
(322, 'califica', '414', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:41:50.761444', NULL, '{\"id\": 414, \"factor\": 31, \"calificacion\": \"10003\", \"valor\": 0.104317}', 12),
(323, 'califica', '415', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:41:50.845553', NULL, '{\"id\": 415, \"factor\": 32, \"calificacion\": \"10003\", \"valor\": 0.105516}', 12),
(324, 'califica', '416', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:41:50.929516', NULL, '{\"id\": 416, \"factor\": 33, \"calificacion\": \"10003\", \"valor\": 0.106715}', 12),
(325, 'califica', '417', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:41:51.001592', NULL, '{\"id\": 417, \"factor\": 34, \"calificacion\": \"10003\", \"valor\": 0.107914}', 12),
(326, 'califica', '418', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:41:51.104801', NULL, '{\"id\": 418, \"factor\": 35, \"calificacion\": \"10003\", \"valor\": 0.109113}', 12),
(327, 'califica', '419', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:41:51.176377', NULL, '{\"id\": 419, \"factor\": 36, \"calificacion\": \"10003\", \"valor\": 0.110312}', 12),
(328, 'califica', '420', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:41:51.254666', NULL, '{\"id\": 420, \"factor\": 37, \"calificacion\": \"10003\", \"valor\": 0.111511}', 12),
(329, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-03 12:41:51.350326', NULL, '{\"secuencia_evento\": \"10004\", \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 12),
(330, 'califica', '421', 'CREAR', 'Califica creado para factor 8', '2025-12-03 12:41:51.433652', NULL, '{\"id\": 421, \"factor\": 8, \"calificacion\": \"10004\", \"valor\": 0.092841}', 12),
(331, 'califica', '422', 'CREAR', 'Califica creado para factor 9', '2025-12-03 12:41:51.518664', NULL, '{\"id\": 422, \"factor\": 9, \"calificacion\": \"10004\", \"valor\": 0.091723}', 12),
(332, 'califica', '423', 'CREAR', 'Califica creado para factor 10', '2025-12-03 12:41:51.604414', NULL, '{\"id\": 423, \"factor\": 10, \"calificacion\": \"10004\", \"valor\": 0.090604}', 12),
(333, 'califica', '424', 'CREAR', 'Califica creado para factor 11', '2025-12-03 12:41:51.668951', NULL, '{\"id\": 424, \"factor\": 11, \"calificacion\": \"10004\", \"valor\": 0.089485}', 12),
(334, 'califica', '425', 'CREAR', 'Califica creado para factor 12', '2025-12-03 12:41:51.733923', NULL, '{\"id\": 425, \"factor\": 12, \"calificacion\": \"10004\", \"valor\": 0.087248}', 12),
(335, 'califica', '426', 'CREAR', 'Califica creado para factor 13', '2025-12-03 12:41:51.817849', NULL, '{\"id\": 426, \"factor\": 13, \"calificacion\": \"10004\", \"valor\": 0.085011}', 12),
(336, 'califica', '427', 'CREAR', 'Califica creado para factor 14', '2025-12-03 12:41:51.961724', NULL, '{\"id\": 427, \"factor\": 14, \"calificacion\": \"10004\", \"valor\": 0.082774}', 12),
(337, 'califica', '428', 'CREAR', 'Califica creado para factor 15', '2025-12-03 12:41:52.045524', NULL, '{\"id\": 428, \"factor\": 15, \"calificacion\": \"10004\", \"valor\": 0.080537}', 12),
(338, 'califica', '429', 'CREAR', 'Califica creado para factor 16', '2025-12-03 12:41:52.117611', NULL, '{\"id\": 429, \"factor\": 16, \"calificacion\": \"10004\", \"valor\": 0.0783}', 12),
(339, 'califica', '430', 'CREAR', 'Califica creado para factor 17', '2025-12-03 12:41:52.202796', NULL, '{\"id\": 430, \"factor\": 17, \"calificacion\": \"10004\", \"valor\": 0.076063}', 12),
(340, 'califica', '431', 'CREAR', 'Califica creado para factor 18', '2025-12-03 12:41:52.304439', NULL, '{\"id\": 431, \"factor\": 18, \"calificacion\": \"10004\", \"valor\": 0.073826}', 12),
(341, 'califica', '432', 'CREAR', 'Califica creado para factor 19', '2025-12-03 12:41:52.370803', NULL, '{\"id\": 432, \"factor\": 19, \"calificacion\": \"10004\", \"valor\": 0.071588}', 12),
(342, 'califica', '433', 'CREAR', 'Califica creado para factor 20', '2025-12-03 12:41:52.453605', NULL, '{\"id\": 433, \"factor\": 20, \"calificacion\": \"10004\", \"valor\": 0.069351}', 12),
(343, 'califica', '434', 'CREAR', 'Califica creado para factor 21', '2025-12-03 12:41:52.525800', NULL, '{\"id\": 434, \"factor\": 21, \"calificacion\": \"10004\", \"valor\": 0.067114}', 12),
(344, 'califica', '435', 'CREAR', 'Califica creado para factor 22', '2025-12-03 12:41:52.609734', NULL, '{\"id\": 435, \"factor\": 22, \"calificacion\": \"10004\", \"valor\": 0.064877}', 12),
(345, 'califica', '436', 'CREAR', 'Califica creado para factor 23', '2025-12-03 12:41:52.675993', NULL, '{\"id\": 436, \"factor\": 23, \"calificacion\": \"10004\", \"valor\": 0.06264}', 12),
(346, 'califica', '437', 'CREAR', 'Califica creado para factor 24', '2025-12-03 12:41:52.741738', NULL, '{\"id\": 437, \"factor\": 24, \"calificacion\": \"10004\", \"valor\": 0.060403}', 12),
(347, 'califica', '438', 'CREAR', 'Califica creado para factor 25', '2025-12-03 12:41:52.826030', NULL, '{\"id\": 438, \"factor\": 25, \"calificacion\": \"10004\", \"valor\": 0.058166}', 12),
(348, 'califica', '439', 'CREAR', 'Califica creado para factor 26', '2025-12-03 12:41:52.899041', NULL, '{\"id\": 439, \"factor\": 26, \"calificacion\": \"10004\", \"valor\": 0.055928}', 12),
(349, 'califica', '440', 'CREAR', 'Califica creado para factor 27', '2025-12-03 12:41:52.981670', NULL, '{\"id\": 440, \"factor\": 27, \"calificacion\": \"10004\", \"valor\": 0.053691}', 12),
(350, 'califica', '441', 'CREAR', 'Califica creado para factor 28', '2025-12-03 12:41:53.050464', NULL, '{\"id\": 441, \"factor\": 28, \"calificacion\": \"10004\", \"valor\": 0.051454}', 12),
(351, 'califica', '442', 'CREAR', 'Califica creado para factor 29', '2025-12-03 12:41:53.113784', NULL, '{\"id\": 442, \"factor\": 29, \"calificacion\": \"10004\", \"valor\": 0.049217}', 12),
(352, 'califica', '443', 'CREAR', 'Califica creado para factor 30', '2025-12-03 12:41:53.199179', NULL, '{\"id\": 443, \"factor\": 30, \"calificacion\": \"10004\", \"valor\": 0.04698}', 12),
(353, 'califica', '444', 'CREAR', 'Califica creado para factor 31', '2025-12-03 12:41:53.363030', NULL, '{\"id\": 444, \"factor\": 31, \"calificacion\": \"10004\", \"valor\": 0.044743}', 12),
(354, 'califica', '445', 'CREAR', 'Califica creado para factor 32', '2025-12-03 12:41:53.449579', NULL, '{\"id\": 445, \"factor\": 32, \"calificacion\": \"10004\", \"valor\": 0.042506}', 12),
(355, 'califica', '446', 'CREAR', 'Califica creado para factor 33', '2025-12-03 12:41:53.522762', NULL, '{\"id\": 446, \"factor\": 33, \"calificacion\": \"10004\", \"valor\": 0.040268}', 12),
(356, 'califica', '447', 'CREAR', 'Califica creado para factor 34', '2025-12-03 12:41:53.605549', NULL, '{\"id\": 447, \"factor\": 34, \"calificacion\": \"10004\", \"valor\": 0.038031}', 12),
(357, 'califica', '448', 'CREAR', 'Califica creado para factor 35', '2025-12-03 12:41:53.684592', NULL, '{\"id\": 448, \"factor\": 35, \"calificacion\": \"10004\", \"valor\": 0.035794}', 12),
(358, 'califica', '449', 'CREAR', 'Califica creado para factor 36', '2025-12-03 12:41:53.749667', NULL, '{\"id\": 449, \"factor\": 36, \"calificacion\": \"10004\", \"valor\": 0.033557}', 12),
(359, 'califica', '450', 'CREAR', 'Califica creado para factor 37', '2025-12-03 12:41:53.845719', NULL, '{\"id\": 450, \"factor\": 37, \"calificacion\": \"10004\", \"valor\": 0.03132}', 12),
(360, 'User', '19', 'CREAR', 'Ingreso de Usuario', '2025-12-04 15:21:06.220317', NULL, '{\"id\": 19, \"password\": \"pbkdf2_sha256$1000000$ufL7LwvwqN6tdHQ3Svo1qy$6H2ypjECNNXi/ssM1k99W2TA/0CfBFl3u4+FB50/l9s=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Auditor\", \"last_name\": \"Joe\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-04T15:21:05.294845+00:00\", \"email\": \"auditor3@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(361, 'User', '20', 'CREAR', 'Ingreso de Usuario', '2025-12-04 15:33:07.750070', NULL, '{\"id\": 20, \"password\": \"pbkdf2_sha256$1000000$htHwqzSD8TwSPUz15zTN0w$5S85c69a8qVU9kH5xyIb8d9Lo+dNXBnwSSHjKHKgLwQ=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Admin\", \"last_name\": \"Joe\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-04T15:33:06.909960+00:00\", \"email\": \"admin2@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(362, 'User', '14', 'ELIMINAR', 'Eliminación de Usuario', '2025-12-15 08:53:00.271517', '{\"id\": 14, \"password\": \"pbkdf2_sha256$1000000$2ou3fxtUjxQeKyR7uh3fId$7eU2JJ+19W5C21nUSn+DE7TWltB1tt3b5EVczVL/Je0=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Bolsa\", \"last_name\": \"Valores Lima\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-01T08:59:47.313347+00:00\", \"email\": \"bvl@nuam.com\", \"groups\": [4], \"user_permissions\": []}', NULL, 20),
(363, 'User', '13', 'ELIMINAR', 'Eliminación de Usuario', '2025-12-15 09:01:51.532741', '{\"id\": 13, \"password\": \"pbkdf2_sha256$1000000$rubUklbzI5varzZW2G0wel$ojaa4cNA42MLo67ew6Yjoxo5XvbUZ0/FAyR5yJh+HBE=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Bolsa\", \"last_name\": \"Comercio Santiago\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-01T08:59:30.477192+00:00\", \"email\": \"bcs@nuam.com\", \"groups\": [4], \"user_permissions\": []}', NULL, 20),
(364, 'User', '15', 'ELIMINAR', 'Eliminación de Usuario', '2025-12-15 09:01:53.712031', '{\"id\": 15, \"password\": \"pbkdf2_sha256$1000000$PMhigRh0PeSOyHBkKbuMYt$qKfh8muQ4naFoEfjZn/8OkzetseLzMag9UGTz372urs=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Bolsa\", \"last_name\": \"Valores Colombia\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-01T09:00:05.090741+00:00\", \"email\": \"bvc@nuam.com\", \"groups\": [4], \"user_permissions\": []}', NULL, 20),
(365, 'User', '16', 'ELIMINAR', 'Eliminación de Usuario', '2025-12-15 09:01:55.642140', '{\"id\": 16, \"password\": \"pbkdf2_sha256$1000000$qQeA7iPPqe2ia04vvDF4rS$3GBgZIdDyuB7PVrlGrM0Lxhi2Nr84cZP3A0rcDZol48=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Bolsa\", \"last_name\": \"Valores\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-01T09:00:19.154876+00:00\", \"email\": \"bolsa@nuam.com\", \"groups\": [4], \"user_permissions\": []}', NULL, 20),
(366, 'User', '19', 'EDITAR', 'Modificación de Usuario', '2025-12-15 09:06:14.439027', '{\"id\": 19, \"password\": \"pbkdf2_sha256$1000000$ufL7LwvwqN6tdHQ3Svo1qy$6H2ypjECNNXi/ssM1k99W2TA/0CfBFl3u4+FB50/l9s=\", \"last_login\": \"2025-12-04T16:05:25.790472+00:00\", \"is_superuser\": false, \"first_name\": \"Fernanda\", \"last_name\": \"Toledo\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-04T15:21:05.294845+00:00\", \"email\": \"auditor1@nuam.com\", \"groups\": [2], \"user_permissions\": []}', '{\"id\": 19, \"password\": \"pbkdf2_sha256$1000000$ufL7LwvwqN6tdHQ3Svo1qy$6H2ypjECNNXi/ssM1k99W2TA/0CfBFl3u4+FB50/l9s=\", \"last_login\": \"2025-12-04T16:05:25.790472+00:00\", \"is_superuser\": false, \"first_name\": \"Fernanda\", \"last_name\": \"Toledo\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-04T15:21:05.294845+00:00\", \"email\": \"auditor1@nuam.com\", \"groups\": [2], \"user_permissions\": []}', 20),
(367, 'User', '20', 'EDITAR', 'Modificación de Usuario', '2025-12-15 09:08:51.786513', '{\"id\": 20, \"password\": \"pbkdf2_sha256$1000000$htHwqzSD8TwSPUz15zTN0w$5S85c69a8qVU9kH5xyIb8d9Lo+dNXBnwSSHjKHKgLwQ=\", \"last_login\": \"2025-12-15T08:19:50.228379+00:00\", \"is_superuser\": false, \"first_name\": \"Roberto\", \"last_name\": \"Martinez\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-04T15:33:06.909960+00:00\", \"email\": \"auditor2@nuam.com\", \"groups\": [2], \"user_permissions\": []}', '{\"id\": 20, \"password\": \"pbkdf2_sha256$1000000$htHwqzSD8TwSPUz15zTN0w$5S85c69a8qVU9kH5xyIb8d9Lo+dNXBnwSSHjKHKgLwQ=\", \"last_login\": \"2025-12-15T08:19:50.228379+00:00\", \"is_superuser\": false, \"first_name\": \"Roberto\", \"last_name\": \"Martinez\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-04T15:33:06.909960+00:00\", \"email\": \"auditor2@nuam.com\", \"groups\": [2], \"user_permissions\": []}', 20),
(368, 'User', '21', 'CREAR', 'Ingreso de Usuario', '2025-12-15 09:11:35.173560', NULL, '{\"id\": 21, \"password\": \"pbkdf2_sha256$1000000$aBodG7Jr5VKFoq9VjrSLOO$qwipKo5QBO2qzIEXILcweZ9SztHfLvZK1uzGd0VOyp8=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Felipe\", \"last_name\": \"Castillo\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-15T09:11:34.303432+00:00\", \"email\": \"corredor1@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(369, 'User', '22', 'CREAR', 'Ingreso de Usuario', '2025-12-15 09:11:52.155387', NULL, '{\"id\": 22, \"password\": \"pbkdf2_sha256$1000000$sQRlMpXL6rwodmbikGpnkY$1r+GRWqforoAgTLtQZCLO+UIMh939xfDmTgiDTDRdSo=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Rodrigo\", \"last_name\": \"Robles\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-15T09:11:51.334822+00:00\", \"email\": \"corredor2@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(370, 'User', '23', 'CREAR', 'Ingreso de Usuario', '2025-12-15 09:12:07.047064', NULL, '{\"id\": 23, \"password\": \"pbkdf2_sha256$1000000$NhDURDeT7CA3vk9sT28Mnu$yHYEobhM942cWWvJ9idxvfFfODGShp1uqMbE5jgY/3Y=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Daniel\", \"last_name\": \"Rojas\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-15T09:12:06.203272+00:00\", \"email\": \"admin1@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(371, 'User', '24', 'CREAR', 'Ingreso de Usuario', '2025-12-15 09:12:28.694710', NULL, '{\"id\": 24, \"password\": \"pbkdf2_sha256$1000000$bClH0tRXucQEzL657yWrNU$x6OKOPBM1zS5rbBrWZvLmwAPastAD1q6xB4hia/PnGY=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Emilia\", \"last_name\": \"Pinto\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-15T09:12:27.844850+00:00\", \"email\": \"admin2@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(372, 'User', '25', 'CREAR', 'Ingreso de Usuario', '2025-12-15 09:12:45.348354', NULL, '{\"id\": 25, \"password\": \"pbkdf2_sha256$1000000$DJHCrCTJWU3bBiVsPsEGcp$4DMgyJaRwRmKrBi+7E9Xd4Lg/e9PstapAdHNW/44n5M=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Oscar\", \"last_name\": \"Flores\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-15T09:12:44.301552+00:00\", \"email\": \"admin3@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(373, 'User', '26', 'CREAR', 'Ingreso de Usuario', '2025-12-15 09:13:03.026581', NULL, '{\"id\": 26, \"password\": \"pbkdf2_sha256$1000000$kToakS8gJeTKdXInCce3Jc$IJUbCkFWnGlWQyD0C/3x/RrqpYlvq/GSBeH/s6mI2uQ=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Jose\", \"last_name\": \"Fuentes\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-15T09:13:02.221742+00:00\", \"email\": \"admin4@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(374, 'calificacion_tributaria', '10095', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 03:21:05.362354', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(375, 'calificacion_tributaria', '10095', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 03:22:24.971141', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(376, 'calificacion_tributaria', '10095', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 03:30:40.117318', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(377, 'calificacion_tributaria', '10095', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 03:30:57.798241', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 5\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(378, 'calificacion_tributaria', '10095', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 03:32:18.822109', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 3\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(379, 'calificacion_tributaria', '10095', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 03:32:58.726459', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 3\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(380, 'califica', '211', 'EDITAR', 'Actualización del factor 8', '2025-12-17 03:32:58.759937', '{\"id\": 211, \"factor\": 8, \"calificacion\": 10095, \"valor\": 0.15}', '{\"id\": 211, \"factor\": 8, \"calificacion\": 10095, \"valor\": \"0.15\"}', 10),
(381, 'califica', '212', 'EDITAR', 'Actualización del factor 9', '2025-12-17 03:32:58.783097', '{\"id\": 212, \"factor\": 9, \"calificacion\": 10095, \"valor\": 0.15}', '{\"id\": 212, \"factor\": 9, \"calificacion\": 10095, \"valor\": \"0.15\"}', 10),
(382, 'califica', '213', 'EDITAR', 'Actualización del factor 10', '2025-12-17 03:32:58.807382', '{\"id\": 213, \"factor\": 10, \"calificacion\": 10095, \"valor\": 0.15}', '{\"id\": 213, \"factor\": 10, \"calificacion\": 10095, \"valor\": \"0.15\"}', 10),
(383, 'califica', '214', 'EDITAR', 'Actualización del factor 11', '2025-12-17 03:32:58.831116', '{\"id\": 214, \"factor\": 11, \"calificacion\": 10095, \"valor\": 0.1}', '{\"id\": 214, \"factor\": 11, \"calificacion\": 10095, \"valor\": \"0.1\"}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(384, 'califica', '215', 'EDITAR', 'Actualización del factor 12', '2025-12-17 03:32:58.854452', '{\"id\": 215, \"factor\": 12, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 215, \"factor\": 12, \"calificacion\": 10095, \"valor\": 0}', 10),
(385, 'califica', '216', 'EDITAR', 'Actualización del factor 13', '2025-12-17 03:32:58.878429', '{\"id\": 216, \"factor\": 13, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 216, \"factor\": 13, \"calificacion\": 10095, \"valor\": 0}', 10),
(386, 'califica', '217', 'EDITAR', 'Actualización del factor 14', '2025-12-17 03:32:58.903263', '{\"id\": 217, \"factor\": 14, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 217, \"factor\": 14, \"calificacion\": 10095, \"valor\": 0}', 10),
(387, 'califica', '218', 'EDITAR', 'Actualización del factor 15', '2025-12-17 03:32:58.927212', '{\"id\": 218, \"factor\": 15, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 218, \"factor\": 15, \"calificacion\": 10095, \"valor\": 0}', 10),
(388, 'califica', '219', 'EDITAR', 'Actualización del factor 16', '2025-12-17 03:32:58.950748', '{\"id\": 219, \"factor\": 16, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 219, \"factor\": 16, \"calificacion\": 10095, \"valor\": 0}', 10),
(389, 'califica', '220', 'EDITAR', 'Actualización del factor 17', '2025-12-17 03:32:58.975223', '{\"id\": 220, \"factor\": 17, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 220, \"factor\": 17, \"calificacion\": 10095, \"valor\": 0}', 10),
(390, 'califica', '221', 'EDITAR', 'Actualización del factor 18', '2025-12-17 03:32:58.998716', '{\"id\": 221, \"factor\": 18, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 221, \"factor\": 18, \"calificacion\": 10095, \"valor\": 0}', 10),
(391, 'califica', '222', 'EDITAR', 'Actualización del factor 19', '2025-12-17 03:32:59.023041', '{\"id\": 222, \"factor\": 19, \"calificacion\": 10095, \"valor\": 0.12}', '{\"id\": 222, \"factor\": 19, \"calificacion\": 10095, \"valor\": \"0.12\"}', 10),
(392, 'califica', '223', 'EDITAR', 'Actualización del factor 20', '2025-12-17 03:32:59.059268', '{\"id\": 223, \"factor\": 20, \"calificacion\": 10095, \"valor\": 0.12}', '{\"id\": 223, \"factor\": 20, \"calificacion\": 10095, \"valor\": \"0.12\"}', 10),
(393, 'califica', '224', 'EDITAR', 'Actualización del factor 21', '2025-12-17 03:32:59.083282', '{\"id\": 224, \"factor\": 21, \"calificacion\": 10095, \"valor\": 0.45}', '{\"id\": 224, \"factor\": 21, \"calificacion\": 10095, \"valor\": \"0.45\"}', 10),
(394, 'califica', '225', 'EDITAR', 'Actualización del factor 22', '2025-12-17 03:32:59.117865', '{\"id\": 225, \"factor\": 22, \"calificacion\": 10095, \"valor\": 0.12}', '{\"id\": 225, \"factor\": 22, \"calificacion\": 10095, \"valor\": \"0.12\"}', 10),
(395, 'califica', '226', 'EDITAR', 'Actualización del factor 23', '2025-12-17 03:32:59.149655', '{\"id\": 226, \"factor\": 23, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 226, \"factor\": 23, \"calificacion\": 10095, \"valor\": 0}', 10),
(396, 'califica', '227', 'EDITAR', 'Actualización del factor 24', '2025-12-17 03:32:59.185468', '{\"id\": 227, \"factor\": 24, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 227, \"factor\": 24, \"calificacion\": 10095, \"valor\": 0}', 10),
(397, 'califica', '228', 'EDITAR', 'Actualización del factor 25', '2025-12-17 03:32:59.221339', '{\"id\": 228, \"factor\": 25, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 228, \"factor\": 25, \"calificacion\": 10095, \"valor\": 0}', 10),
(398, 'califica', '229', 'EDITAR', 'Actualización del factor 26', '2025-12-17 03:32:59.250747', '{\"id\": 229, \"factor\": 26, \"calificacion\": 10095, \"valor\": 0.2}', '{\"id\": 229, \"factor\": 26, \"calificacion\": 10095, \"valor\": \"0.2\"}', 10),
(399, 'califica', '230', 'EDITAR', 'Actualización del factor 27', '2025-12-17 03:32:59.274985', '{\"id\": 230, \"factor\": 27, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 230, \"factor\": 27, \"calificacion\": 10095, \"valor\": 0}', 10),
(400, 'califica', '231', 'EDITAR', 'Actualización del factor 28', '2025-12-17 03:32:59.299032', '{\"id\": 231, \"factor\": 28, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 231, \"factor\": 28, \"calificacion\": 10095, \"valor\": 0}', 10),
(401, 'califica', '232', 'EDITAR', 'Actualización del factor 29', '2025-12-17 03:32:59.323721', '{\"id\": 232, \"factor\": 29, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 232, \"factor\": 29, \"calificacion\": 10095, \"valor\": 0}', 10),
(402, 'califica', '233', 'EDITAR', 'Actualización del factor 30', '2025-12-17 03:32:59.347145', '{\"id\": 233, \"factor\": 30, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 233, \"factor\": 30, \"calificacion\": 10095, \"valor\": 0}', 10),
(403, 'califica', '234', 'EDITAR', 'Actualización del factor 31', '2025-12-17 03:32:59.372609', '{\"id\": 234, \"factor\": 31, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 234, \"factor\": 31, \"calificacion\": 10095, \"valor\": 0}', 10),
(404, 'califica', '235', 'EDITAR', 'Actualización del factor 32', '2025-12-17 03:32:59.399287', '{\"id\": 235, \"factor\": 32, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 235, \"factor\": 32, \"calificacion\": 10095, \"valor\": 0}', 10),
(405, 'califica', '236', 'EDITAR', 'Actualización del factor 33', '2025-12-17 03:32:59.423784', '{\"id\": 236, \"factor\": 33, \"calificacion\": 10095, \"valor\": 0.3}', '{\"id\": 236, \"factor\": 33, \"calificacion\": 10095, \"valor\": \"0.3\"}', 10),
(406, 'califica', '237', 'EDITAR', 'Actualización del factor 34', '2025-12-17 03:32:59.447387', '{\"id\": 237, \"factor\": 34, \"calificacion\": 10095, \"valor\": 0.1}', '{\"id\": 237, \"factor\": 34, \"calificacion\": 10095, \"valor\": \"0.1\"}', 10),
(407, 'califica', '238', 'EDITAR', 'Actualización del factor 35', '2025-12-17 03:32:59.471242', '{\"id\": 238, \"factor\": 35, \"calificacion\": 10095, \"valor\": 0.4}', '{\"id\": 238, \"factor\": 35, \"calificacion\": 10095, \"valor\": \"0.4\"}', 10),
(408, 'califica', '239', 'EDITAR', 'Actualización del factor 36', '2025-12-17 03:32:59.495708', '{\"id\": 239, \"factor\": 36, \"calificacion\": 10095, \"valor\": 0.5}', '{\"id\": 239, \"factor\": 36, \"calificacion\": 10095, \"valor\": \"0.5\"}', 10),
(409, 'califica', '240', 'EDITAR', 'Actualización del factor 37', '2025-12-17 03:32:59.519133', '{\"id\": 240, \"factor\": 37, \"calificacion\": 10095, \"valor\": 0.2}', '{\"id\": 240, \"factor\": 37, \"calificacion\": 10095, \"valor\": \"0.2\"}', 10),
(410, 'calificacion_tributaria', '10095', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 03:33:14.657882', NULL, '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 7\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(411, 'califica', '211', 'EDITAR', 'Actualización del factor 8', '2025-12-17 03:33:14.683823', '{\"id\": 211, \"factor\": 8, \"calificacion\": 10095, \"valor\": 0.15}', '{\"id\": 211, \"factor\": 8, \"calificacion\": 10095, \"valor\": \"0.15\"}', 10),
(412, 'califica', '212', 'EDITAR', 'Actualización del factor 9', '2025-12-17 03:33:14.707759', '{\"id\": 212, \"factor\": 9, \"calificacion\": 10095, \"valor\": 0.15}', '{\"id\": 212, \"factor\": 9, \"calificacion\": 10095, \"valor\": \"0.15\"}', 10),
(413, 'califica', '213', 'EDITAR', 'Actualización del factor 10', '2025-12-17 03:33:14.731171', '{\"id\": 213, \"factor\": 10, \"calificacion\": 10095, \"valor\": 0.15}', '{\"id\": 213, \"factor\": 10, \"calificacion\": 10095, \"valor\": \"0.15\"}', 10),
(414, 'califica', '214', 'EDITAR', 'Actualización del factor 11', '2025-12-17 03:33:14.754932', '{\"id\": 214, \"factor\": 11, \"calificacion\": 10095, \"valor\": 0.1}', '{\"id\": 214, \"factor\": 11, \"calificacion\": 10095, \"valor\": \"0.1\"}', 10),
(415, 'califica', '215', 'EDITAR', 'Actualización del factor 12', '2025-12-17 03:33:14.779481', '{\"id\": 215, \"factor\": 12, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 215, \"factor\": 12, \"calificacion\": 10095, \"valor\": 0}', 10),
(416, 'califica', '216', 'EDITAR', 'Actualización del factor 13', '2025-12-17 03:33:14.803035', '{\"id\": 216, \"factor\": 13, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 216, \"factor\": 13, \"calificacion\": 10095, \"valor\": 0}', 10),
(417, 'califica', '217', 'EDITAR', 'Actualización del factor 14', '2025-12-17 03:33:14.827130', '{\"id\": 217, \"factor\": 14, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 217, \"factor\": 14, \"calificacion\": 10095, \"valor\": 0}', 10),
(418, 'califica', '218', 'EDITAR', 'Actualización del factor 15', '2025-12-17 03:33:14.851388', '{\"id\": 218, \"factor\": 15, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 218, \"factor\": 15, \"calificacion\": 10095, \"valor\": 0}', 10),
(419, 'califica', '219', 'EDITAR', 'Actualización del factor 16', '2025-12-17 03:33:14.876395', '{\"id\": 219, \"factor\": 16, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 219, \"factor\": 16, \"calificacion\": 10095, \"valor\": 0}', 10),
(420, 'califica', '220', 'EDITAR', 'Actualización del factor 17', '2025-12-17 03:33:14.899004', '{\"id\": 220, \"factor\": 17, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 220, \"factor\": 17, \"calificacion\": 10095, \"valor\": 0}', 10),
(421, 'califica', '221', 'EDITAR', 'Actualización del factor 18', '2025-12-17 03:33:14.934036', '{\"id\": 221, \"factor\": 18, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 221, \"factor\": 18, \"calificacion\": 10095, \"valor\": 0}', 10),
(422, 'califica', '222', 'EDITAR', 'Actualización del factor 19', '2025-12-17 03:33:14.969984', '{\"id\": 222, \"factor\": 19, \"calificacion\": 10095, \"valor\": 0.12}', '{\"id\": 222, \"factor\": 19, \"calificacion\": 10095, \"valor\": \"0.12\"}', 10),
(423, 'califica', '223', 'EDITAR', 'Actualización del factor 20', '2025-12-17 03:33:15.000890', '{\"id\": 223, \"factor\": 20, \"calificacion\": 10095, \"valor\": 0.12}', '{\"id\": 223, \"factor\": 20, \"calificacion\": 10095, \"valor\": \"0.12\"}', 10),
(424, 'califica', '224', 'EDITAR', 'Actualización del factor 21', '2025-12-17 03:33:15.019208', '{\"id\": 224, \"factor\": 21, \"calificacion\": 10095, \"valor\": 0.45}', '{\"id\": 224, \"factor\": 21, \"calificacion\": 10095, \"valor\": \"0.45\"}', 10),
(425, 'califica', '225', 'EDITAR', 'Actualización del factor 22', '2025-12-17 03:33:15.055835', '{\"id\": 225, \"factor\": 22, \"calificacion\": 10095, \"valor\": 0.12}', '{\"id\": 225, \"factor\": 22, \"calificacion\": 10095, \"valor\": \"0.12\"}', 10),
(426, 'califica', '226', 'EDITAR', 'Actualización del factor 23', '2025-12-17 03:33:15.096010', '{\"id\": 226, \"factor\": 23, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 226, \"factor\": 23, \"calificacion\": 10095, \"valor\": 0}', 10),
(427, 'califica', '227', 'EDITAR', 'Actualización del factor 24', '2025-12-17 03:33:15.119235', '{\"id\": 227, \"factor\": 24, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 227, \"factor\": 24, \"calificacion\": 10095, \"valor\": 0}', 10),
(428, 'califica', '228', 'EDITAR', 'Actualización del factor 25', '2025-12-17 03:33:15.139334', '{\"id\": 228, \"factor\": 25, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 228, \"factor\": 25, \"calificacion\": 10095, \"valor\": 0}', 10),
(429, 'califica', '229', 'EDITAR', 'Actualización del factor 26', '2025-12-17 03:33:15.163012', '{\"id\": 229, \"factor\": 26, \"calificacion\": 10095, \"valor\": 0.2}', '{\"id\": 229, \"factor\": 26, \"calificacion\": 10095, \"valor\": \"0.2\"}', 10),
(430, 'califica', '230', 'EDITAR', 'Actualización del factor 27', '2025-12-17 03:33:15.186932', '{\"id\": 230, \"factor\": 27, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 230, \"factor\": 27, \"calificacion\": 10095, \"valor\": 0}', 10),
(431, 'califica', '231', 'EDITAR', 'Actualización del factor 28', '2025-12-17 03:33:15.214835', '{\"id\": 231, \"factor\": 28, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 231, \"factor\": 28, \"calificacion\": 10095, \"valor\": 0}', 10),
(432, 'califica', '232', 'EDITAR', 'Actualización del factor 29', '2025-12-17 03:33:15.235037', '{\"id\": 232, \"factor\": 29, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 232, \"factor\": 29, \"calificacion\": 10095, \"valor\": 0}', 10),
(433, 'califica', '233', 'EDITAR', 'Actualización del factor 30', '2025-12-17 03:33:15.259177', '{\"id\": 233, \"factor\": 30, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 233, \"factor\": 30, \"calificacion\": 10095, \"valor\": 0}', 10),
(434, 'califica', '234', 'EDITAR', 'Actualización del factor 31', '2025-12-17 03:33:15.283754', '{\"id\": 234, \"factor\": 31, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 234, \"factor\": 31, \"calificacion\": 10095, \"valor\": 0}', 10),
(435, 'califica', '235', 'EDITAR', 'Actualización del factor 32', '2025-12-17 03:33:15.307903', '{\"id\": 235, \"factor\": 32, \"calificacion\": 10095, \"valor\": 0.0}', '{\"id\": 235, \"factor\": 32, \"calificacion\": 10095, \"valor\": 0}', 10),
(436, 'califica', '236', 'EDITAR', 'Actualización del factor 33', '2025-12-17 03:33:15.332799', '{\"id\": 236, \"factor\": 33, \"calificacion\": 10095, \"valor\": 0.3}', '{\"id\": 236, \"factor\": 33, \"calificacion\": 10095, \"valor\": \"0.3\"}', 10),
(437, 'califica', '237', 'EDITAR', 'Actualización del factor 34', '2025-12-17 03:33:15.355379', '{\"id\": 237, \"factor\": 34, \"calificacion\": 10095, \"valor\": 0.1}', '{\"id\": 237, \"factor\": 34, \"calificacion\": 10095, \"valor\": \"0.1\"}', 10),
(438, 'califica', '238', 'EDITAR', 'Actualización del factor 35', '2025-12-17 03:33:15.380922', '{\"id\": 238, \"factor\": 35, \"calificacion\": 10095, \"valor\": 0.4}', '{\"id\": 238, \"factor\": 35, \"calificacion\": 10095, \"valor\": \"0.4\"}', 10),
(439, 'califica', '239', 'EDITAR', 'Actualización del factor 36', '2025-12-17 03:33:15.414116', '{\"id\": 239, \"factor\": 36, \"calificacion\": 10095, \"valor\": 0.5}', '{\"id\": 239, \"factor\": 36, \"calificacion\": 10095, \"valor\": \"0.5\"}', 10),
(440, 'califica', '240', 'EDITAR', 'Actualización del factor 37', '2025-12-17 03:33:15.439298', '{\"id\": 240, \"factor\": 37, \"calificacion\": 10095, \"valor\": 0.2}', '{\"id\": 240, \"factor\": 37, \"calificacion\": 10095, \"valor\": \"0.2\"}', 10),
(441, 'calificacion_tributaria', '10000', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 04:13:12.769665', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"VALIDADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"VALIDADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(442, 'califica', '241', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 04:13:12.796719', '{\"id\": 241, \"factor\": 8, \"calificacion\": 10000, \"valor\": 0.072235}', '{\"id\": 241, \"factor\": 8, \"calificacion\": 10000, \"valor\": 0.072235}', 10),
(443, 'califica', '242', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 04:13:12.820364', '{\"id\": 242, \"factor\": 9, \"calificacion\": 10000, \"valor\": 0.092551}', '{\"id\": 242, \"factor\": 9, \"calificacion\": 10000, \"valor\": 0.092551}', 10),
(444, 'califica', '243', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 04:13:12.844283', '{\"id\": 243, \"factor\": 10, \"calificacion\": 10000, \"valor\": 0.112867}', '{\"id\": 243, \"factor\": 10, \"calificacion\": 10000, \"valor\": 0.112867}', 10),
(445, 'califica', '244', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 04:13:12.868271', '{\"id\": 244, \"factor\": 11, \"calificacion\": 10000, \"valor\": 0.069977}', '{\"id\": 244, \"factor\": 11, \"calificacion\": 10000, \"valor\": 0.069977}', 10),
(446, 'califica', '245', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 04:13:12.893470', '{\"id\": 245, \"factor\": 12, \"calificacion\": 10000, \"valor\": 0.065463}', '{\"id\": 245, \"factor\": 12, \"calificacion\": 10000, \"valor\": 0.065463}', 10),
(447, 'califica', '246', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 04:13:12.917845', '{\"id\": 246, \"factor\": 13, \"calificacion\": 10000, \"valor\": 0.060948}', '{\"id\": 246, \"factor\": 13, \"calificacion\": 10000, \"valor\": 0.060948}', 10),
(448, 'califica', '247', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 04:13:12.940532', '{\"id\": 247, \"factor\": 14, \"calificacion\": 10000, \"valor\": 0.103837}', '{\"id\": 247, \"factor\": 14, \"calificacion\": 10000, \"valor\": 0.103837}', 10),
(449, 'califica', '248', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 04:13:12.965383', '{\"id\": 248, \"factor\": 15, \"calificacion\": 10000, \"valor\": 0.085779}', '{\"id\": 248, \"factor\": 15, \"calificacion\": 10000, \"valor\": 0.085779}', 10),
(450, 'califica', '249', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 04:13:12.988587', '{\"id\": 249, \"factor\": 16, \"calificacion\": 10000, \"valor\": 0.074492}', '{\"id\": 249, \"factor\": 16, \"calificacion\": 10000, \"valor\": 0.074492}', 10),
(451, 'califica', '250', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 04:13:13.012996', '{\"id\": 250, \"factor\": 17, \"calificacion\": 10000, \"valor\": 0.079007}', '{\"id\": 250, \"factor\": 17, \"calificacion\": 10000, \"valor\": 0.079007}', 10),
(452, 'califica', '251', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 04:13:13.036270', '{\"id\": 251, \"factor\": 18, \"calificacion\": 10000, \"valor\": 0.088036}', '{\"id\": 251, \"factor\": 18, \"calificacion\": 10000, \"valor\": 0.088036}', 10),
(453, 'califica', '252', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 04:13:13.060734', '{\"id\": 252, \"factor\": 19, \"calificacion\": 10000, \"valor\": 0.094808}', '{\"id\": 252, \"factor\": 19, \"calificacion\": 10000, \"valor\": 0.094808}', 10),
(454, 'califica', '253', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 04:13:13.086208', '{\"id\": 253, \"factor\": 20, \"calificacion\": 10000, \"valor\": 0.099323}', '{\"id\": 253, \"factor\": 20, \"calificacion\": 10000, \"valor\": 0.099323}', 10),
(455, 'califica', '254', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 04:13:13.112646', '{\"id\": 254, \"factor\": 21, \"calificacion\": 10000, \"valor\": 0.106095}', '{\"id\": 254, \"factor\": 21, \"calificacion\": 10000, \"valor\": 0.106095}', 10),
(456, 'califica', '255', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 04:13:13.142780', '{\"id\": 255, \"factor\": 22, \"calificacion\": 10000, \"valor\": 0.110609}', '{\"id\": 255, \"factor\": 22, \"calificacion\": 10000, \"valor\": 0.110609}', 10),
(457, 'califica', '256', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 04:13:13.168300', '{\"id\": 256, \"factor\": 23, \"calificacion\": 10000, \"valor\": 0.115124}', '{\"id\": 256, \"factor\": 23, \"calificacion\": 10000, \"valor\": 0.115124}', 10),
(458, 'califica', '257', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 04:13:13.192268', '{\"id\": 257, \"factor\": 24, \"calificacion\": 10000, \"valor\": 0.119639}', '{\"id\": 257, \"factor\": 24, \"calificacion\": 10000, \"valor\": 0.119639}', 10),
(459, 'califica', '258', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 04:13:13.217354', '{\"id\": 258, \"factor\": 25, \"calificacion\": 10000, \"valor\": 0.124153}', '{\"id\": 258, \"factor\": 25, \"calificacion\": 10000, \"valor\": 0.124153}', 10),
(460, 'califica', '259', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 04:13:13.251212', '{\"id\": 259, \"factor\": 26, \"calificacion\": 10000, \"valor\": 0.128668}', '{\"id\": 259, \"factor\": 26, \"calificacion\": 10000, \"valor\": 0.128668}', 10),
(461, 'califica', '260', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 04:13:13.286097', '{\"id\": 260, \"factor\": 27, \"calificacion\": 10000, \"valor\": 0.133183}', '{\"id\": 260, \"factor\": 27, \"calificacion\": 10000, \"valor\": 0.133183}', 10),
(462, 'califica', '261', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 04:13:13.322162', '{\"id\": 261, \"factor\": 28, \"calificacion\": 10000, \"valor\": 0.137698}', '{\"id\": 261, \"factor\": 28, \"calificacion\": 10000, \"valor\": 0.137698}', 10),
(463, 'califica', '262', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 04:13:13.360387', '{\"id\": 262, \"factor\": 29, \"calificacion\": 10000, \"valor\": 0.142212}', '{\"id\": 262, \"factor\": 29, \"calificacion\": 10000, \"valor\": 0.142212}', 10),
(464, 'califica', '263', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 04:13:13.385834', '{\"id\": 263, \"factor\": 30, \"calificacion\": 10000, \"valor\": 0.146727}', '{\"id\": 263, \"factor\": 30, \"calificacion\": 10000, \"valor\": 0.146727}', 10),
(465, 'califica', '264', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 04:13:13.408416', '{\"id\": 264, \"factor\": 31, \"calificacion\": 10000, \"valor\": 0.151242}', '{\"id\": 264, \"factor\": 31, \"calificacion\": 10000, \"valor\": 0.151242}', 10),
(466, 'califica', '265', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 04:13:13.432338', '{\"id\": 265, \"factor\": 32, \"calificacion\": 10000, \"valor\": 0.155756}', '{\"id\": 265, \"factor\": 32, \"calificacion\": 10000, \"valor\": 0.155756}', 10),
(467, 'califica', '266', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 04:13:13.456943', '{\"id\": 266, \"factor\": 33, \"calificacion\": 10000, \"valor\": 0.160271}', '{\"id\": 266, \"factor\": 33, \"calificacion\": 10000, \"valor\": 0.160271}', 10),
(468, 'califica', '267', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 04:13:13.494062', '{\"id\": 267, \"factor\": 34, \"calificacion\": 10000, \"valor\": 0.164786}', '{\"id\": 267, \"factor\": 34, \"calificacion\": 10000, \"valor\": 0.164786}', 10),
(469, 'califica', '268', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 04:13:13.528241', '{\"id\": 268, \"factor\": 35, \"calificacion\": 10000, \"valor\": 0.1693}', '{\"id\": 268, \"factor\": 35, \"calificacion\": 10000, \"valor\": 0.1693}', 10),
(470, 'califica', '269', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 04:13:13.562839', '{\"id\": 269, \"factor\": 36, \"calificacion\": 10000, \"valor\": 0.173815}', '{\"id\": 269, \"factor\": 36, \"calificacion\": 10000, \"valor\": 0.173815}', 10),
(471, 'califica', '270', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 04:13:13.598707', '{\"id\": 270, \"factor\": 37, \"calificacion\": 10000, \"valor\": 0.17833}', '{\"id\": 270, \"factor\": 37, \"calificacion\": 10000, \"valor\": 0.17833}', 10),
(472, 'calificacion_tributaria', '10001', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 04:13:13.671255', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"VALIDADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"VALIDADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(473, 'califica', '271', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 04:13:13.708685', '{\"id\": 271, \"factor\": 8, \"calificacion\": 10001, \"valor\": 0.120614}', '{\"id\": 271, \"factor\": 8, \"calificacion\": 10001, \"valor\": 0.120614}', 10),
(474, 'califica', '272', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 04:13:13.742734', '{\"id\": 272, \"factor\": 9, \"calificacion\": 10001, \"valor\": 0.131579}', '{\"id\": 272, \"factor\": 9, \"calificacion\": 10001, \"valor\": 0.131579}', 10),
(475, 'califica', '273', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 04:13:13.769791', '{\"id\": 273, \"factor\": 10, \"calificacion\": 10001, \"valor\": 0.109649}', '{\"id\": 273, \"factor\": 10, \"calificacion\": 10001, \"valor\": 0.109649}', 10),
(476, 'califica', '274', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 04:13:13.793190', '{\"id\": 274, \"factor\": 11, \"calificacion\": 10001, \"valor\": 0.041667}', '{\"id\": 274, \"factor\": 11, \"calificacion\": 10001, \"valor\": 0.041667}', 10),
(477, 'califica', '275', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 04:13:13.816412', '{\"id\": 275, \"factor\": 12, \"calificacion\": 10001, \"valor\": 0.046053}', '{\"id\": 275, \"factor\": 12, \"calificacion\": 10001, \"valor\": 0.046053}', 10),
(478, 'califica', '276', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 04:13:13.840797', '{\"id\": 276, \"factor\": 13, \"calificacion\": 10001, \"valor\": 0.050439}', '{\"id\": 276, \"factor\": 13, \"calificacion\": 10001, \"valor\": 0.050439}', 10),
(479, 'califica', '277', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 04:13:13.864460', '{\"id\": 277, \"factor\": 14, \"calificacion\": 10001, \"valor\": 0.054825}', '{\"id\": 277, \"factor\": 14, \"calificacion\": 10001, \"valor\": 0.054825}', 10),
(480, 'califica', '278', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 04:13:13.888544', '{\"id\": 278, \"factor\": 15, \"calificacion\": 10001, \"valor\": 0.066886}', '{\"id\": 278, \"factor\": 15, \"calificacion\": 10001, \"valor\": 0.066886}', 10),
(481, 'califica', '279', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 04:13:13.912621', '{\"id\": 279, \"factor\": 16, \"calificacion\": 10001, \"valor\": 0.078947}', '{\"id\": 279, \"factor\": 16, \"calificacion\": 10001, \"valor\": 0.078947}', 10),
(482, 'califica', '280', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 04:13:13.937591', '{\"id\": 280, \"factor\": 17, \"calificacion\": 10001, \"valor\": 0.091009}', '{\"id\": 280, \"factor\": 17, \"calificacion\": 10001, \"valor\": 0.091009}', 10),
(483, 'califica', '281', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 04:13:13.966513', '{\"id\": 281, \"factor\": 18, \"calificacion\": 10001, \"valor\": 0.099781}', '{\"id\": 281, \"factor\": 18, \"calificacion\": 10001, \"valor\": 0.099781}', 10),
(484, 'califica', '282', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 04:13:14.007014', '{\"id\": 282, \"factor\": 19, \"calificacion\": 10001, \"valor\": 0.108553}', '{\"id\": 282, \"factor\": 19, \"calificacion\": 10001, \"valor\": 0.108553}', 10),
(485, 'califica', '283', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 04:13:14.040185', '{\"id\": 283, \"factor\": 20, \"calificacion\": 10001, \"valor\": 0.093202}', '{\"id\": 283, \"factor\": 20, \"calificacion\": 10001, \"valor\": 0.093202}', 10),
(486, 'califica', '284', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 04:13:14.080326', '{\"id\": 284, \"factor\": 21, \"calificacion\": 10001, \"valor\": 0.083333}', '{\"id\": 284, \"factor\": 21, \"calificacion\": 10001, \"valor\": 0.083333}', 10),
(487, 'califica', '285', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 04:13:14.104811', '{\"id\": 285, \"factor\": 22, \"calificacion\": 10001, \"valor\": 0.074013}', '{\"id\": 285, \"factor\": 22, \"calificacion\": 10001, \"valor\": 0.074013}', 10),
(488, 'califica', '286', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 04:13:14.129327', '{\"id\": 286, \"factor\": 23, \"calificacion\": 10001, \"valor\": 0.059211}', '{\"id\": 286, \"factor\": 23, \"calificacion\": 10001, \"valor\": 0.059211}', 10),
(489, 'califica', '287', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 04:13:14.152909', '{\"id\": 287, \"factor\": 24, \"calificacion\": 10001, \"valor\": 0.053728}', '{\"id\": 287, \"factor\": 24, \"calificacion\": 10001, \"valor\": 0.053728}', 10),
(490, 'califica', '288', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 04:13:14.176355', '{\"id\": 288, \"factor\": 25, \"calificacion\": 10001, \"valor\": 0.048246}', '{\"id\": 288, \"factor\": 25, \"calificacion\": 10001, \"valor\": 0.048246}', 10),
(491, 'califica', '289', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 04:13:14.201924', '{\"id\": 289, \"factor\": 26, \"calificacion\": 10001, \"valor\": 0.042763}', '{\"id\": 289, \"factor\": 26, \"calificacion\": 10001, \"valor\": 0.042763}', 10),
(492, 'califica', '290', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 04:13:14.232858', '{\"id\": 290, \"factor\": 27, \"calificacion\": 10001, \"valor\": 0.038377}', '{\"id\": 290, \"factor\": 27, \"calificacion\": 10001, \"valor\": 0.038377}', 10),
(493, 'califica', '291', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 04:13:14.260439', '{\"id\": 291, \"factor\": 28, \"calificacion\": 10001, \"valor\": 0.033991}', '{\"id\": 291, \"factor\": 28, \"calificacion\": 10001, \"valor\": 0.033991}', 10),
(494, 'califica', '292', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 04:13:14.285370', '{\"id\": 292, \"factor\": 29, \"calificacion\": 10001, \"valor\": 0.029605}', '{\"id\": 292, \"factor\": 29, \"calificacion\": 10001, \"valor\": 0.029605}', 10),
(495, 'califica', '293', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 04:13:14.343996', '{\"id\": 293, \"factor\": 30, \"calificacion\": 10001, \"valor\": 0.025219}', '{\"id\": 293, \"factor\": 30, \"calificacion\": 10001, \"valor\": 0.025219}', 10),
(496, 'califica', '294', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 04:13:14.373462', '{\"id\": 294, \"factor\": 31, \"calificacion\": 10001, \"valor\": 0.020833}', '{\"id\": 294, \"factor\": 31, \"calificacion\": 10001, \"valor\": 0.020833}', 10),
(497, 'califica', '295', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 04:13:14.392356', '{\"id\": 295, \"factor\": 32, \"calificacion\": 10001, \"valor\": 0.016447}', '{\"id\": 295, \"factor\": 32, \"calificacion\": 10001, \"valor\": 0.016447}', 10),
(498, 'califica', '296', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 04:13:14.416396', '{\"id\": 296, \"factor\": 33, \"calificacion\": 10001, \"valor\": 0.012061}', '{\"id\": 296, \"factor\": 33, \"calificacion\": 10001, \"valor\": 0.012061}', 10),
(499, 'califica', '297', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 04:13:14.441046', '{\"id\": 297, \"factor\": 34, \"calificacion\": 10001, \"valor\": 0.009868}', '{\"id\": 297, \"factor\": 34, \"calificacion\": 10001, \"valor\": 0.009868}', 10),
(500, 'califica', '298', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 04:13:14.464845', '{\"id\": 298, \"factor\": 35, \"calificacion\": 10001, \"valor\": 0.007675}', '{\"id\": 298, \"factor\": 35, \"calificacion\": 10001, \"valor\": 0.007675}', 10),
(501, 'califica', '299', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 04:13:14.489585', '{\"id\": 299, \"factor\": 36, \"calificacion\": 10001, \"valor\": 0.005482}', '{\"id\": 299, \"factor\": 36, \"calificacion\": 10001, \"valor\": 0.005482}', 10),
(502, 'califica', '300', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 04:13:14.512685', '{\"id\": 300, \"factor\": 37, \"calificacion\": 10001, \"valor\": 0.003289}', '{\"id\": 300, \"factor\": 37, \"calificacion\": 10001, \"valor\": 0.003289}', 10),
(503, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 04:13:14.560147', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"RECHAZADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"RECHAZADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(504, 'califica', '301', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 04:13:14.584691', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', 10),
(505, 'califica', '302', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 04:13:14.608632', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', 10),
(506, 'califica', '303', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 04:13:14.641797', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', 10),
(507, 'califica', '304', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 04:13:14.679653', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', 10),
(508, 'califica', '305', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 04:13:14.704624', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', 10),
(509, 'califica', '306', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 04:13:14.729647', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', 10),
(510, 'califica', '307', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 04:13:14.759058', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', 10),
(511, 'califica', '308', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 04:13:14.788780', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', 10),
(512, 'califica', '309', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 04:13:14.812702', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', 10),
(513, 'califica', '310', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 04:13:14.836126', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', 10),
(514, 'califica', '311', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 04:13:14.860389', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', 10),
(515, 'califica', '312', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 04:13:14.895804', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', 10),
(516, 'califica', '313', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 04:13:14.931408', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', 10),
(517, 'califica', '314', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 04:13:14.956785', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', 10),
(518, 'califica', '315', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 04:13:14.980837', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', 10),
(519, 'califica', '316', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 04:13:15.005380', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', 10),
(520, 'califica', '317', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 04:13:15.028386', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', 10),
(521, 'califica', '318', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 04:13:15.052560', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', 10),
(522, 'califica', '319', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 04:13:15.076625', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', 10),
(523, 'califica', '320', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 04:13:15.112445', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', 10),
(524, 'califica', '321', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 04:13:15.144363', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', 10),
(525, 'califica', '322', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 04:13:15.177484', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', 10),
(526, 'califica', '323', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 04:13:15.200396', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', 10),
(527, 'califica', '324', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 04:13:15.225591', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', 10),
(528, 'califica', '325', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 04:13:15.248450', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', 10),
(529, 'califica', '326', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 04:13:15.301225', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', 10),
(530, 'califica', '327', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 04:13:15.329112', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', 10),
(531, 'califica', '328', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 04:13:15.352574', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', 10),
(532, 'califica', '329', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 04:13:15.376664', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', 10),
(533, 'califica', '330', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 04:13:15.401989', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', 10),
(534, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 04:13:15.469712', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(535, 'califica', '391', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 04:13:15.496934', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', 10),
(536, 'califica', '392', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 04:13:15.520836', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', 10),
(537, 'califica', '393', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 04:13:15.544646', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', 10),
(538, 'califica', '394', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 04:13:15.600005', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', 10),
(539, 'califica', '395', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 04:13:15.632310', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', 10),
(540, 'califica', '396', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 04:13:15.662962', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', 10),
(541, 'califica', '397', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 04:13:15.698989', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', 10),
(542, 'califica', '398', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 04:13:15.735470', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', 10),
(543, 'califica', '399', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 04:13:15.760628', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', 10),
(544, 'califica', '400', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 04:13:15.784518', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', 10),
(545, 'califica', '401', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 04:13:15.820182', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', 10),
(546, 'califica', '402', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 04:13:15.844917', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', 10),
(547, 'califica', '403', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 04:13:15.869527', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', 10),
(548, 'califica', '404', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 04:13:15.892403', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', 10),
(549, 'califica', '405', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 04:13:15.940718', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', 10),
(550, 'califica', '406', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 04:13:15.964770', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', 10),
(551, 'califica', '407', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 04:13:15.999473', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', 10),
(552, 'califica', '408', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 04:13:16.035001', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', 10),
(553, 'califica', '409', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 04:13:16.067078', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(554, 'califica', '410', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 04:13:16.096739', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', 10),
(555, 'califica', '411', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 04:13:16.120919', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', 10),
(556, 'califica', '412', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 04:13:16.144910', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', 10),
(557, 'califica', '413', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 04:13:16.169777', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', 10),
(558, 'califica', '414', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 04:13:16.195013', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', 10),
(559, 'califica', '415', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 04:13:16.216886', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', 10),
(560, 'califica', '416', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 04:13:16.241285', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', 10),
(561, 'califica', '417', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 04:13:16.265322', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', 10),
(562, 'califica', '418', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 04:13:16.291228', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', 10),
(563, 'califica', '419', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 04:13:16.315787', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', 10),
(564, 'califica', '420', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 04:13:16.340577', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', 10),
(565, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 04:13:16.384301', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(566, 'califica', '421', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 04:13:16.409750', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', 10),
(567, 'califica', '422', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 04:13:16.433025', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', 10),
(568, 'califica', '423', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 04:13:16.492356', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', 10),
(569, 'califica', '424', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 04:13:16.517747', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', 10),
(570, 'califica', '425', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 04:13:16.541374', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', 10),
(571, 'califica', '426', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 04:13:16.564889', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', 10),
(572, 'califica', '427', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 04:13:16.589635', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', 10),
(573, 'califica', '428', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 04:13:16.612680', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', 10),
(574, 'califica', '429', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 04:13:16.636865', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', 10),
(575, 'califica', '430', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 04:13:16.661311', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', 10),
(576, 'califica', '431', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 04:13:16.685703', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', 10),
(577, 'califica', '432', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 04:13:16.709570', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', 10),
(578, 'califica', '433', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 04:13:16.732804', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', 10),
(579, 'califica', '434', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 04:13:16.757401', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', 10),
(580, 'califica', '435', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 04:13:16.780913', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', 10),
(581, 'califica', '436', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 04:13:16.811319', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', 10),
(582, 'califica', '437', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 04:13:16.841705', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', 10),
(583, 'califica', '438', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 04:13:16.864922', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', 10),
(584, 'califica', '439', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 04:13:16.900574', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', 10),
(585, 'califica', '440', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 04:13:16.926715', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', 10),
(586, 'califica', '441', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 04:13:16.950501', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', 10),
(587, 'califica', '442', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 04:13:16.975067', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', 10),
(588, 'califica', '443', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 04:13:17.007775', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', 10),
(589, 'califica', '444', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 04:13:17.032779', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', 10),
(590, 'califica', '445', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 04:13:17.057646', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', 10),
(591, 'califica', '446', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 04:13:17.080902', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', 10),
(592, 'califica', '447', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 04:13:17.093014', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', 10),
(593, 'califica', '448', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 04:13:17.118586', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', 10),
(594, 'califica', '449', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 04:13:17.143644', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', 10),
(595, 'califica', '450', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 04:13:17.283550', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', 10),
(596, 'calificacion_tributaria', '10002', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 04:15:22.370577', NULL, '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": 1570000, \"valor_historico\": 4550000, \"anio\": 2024, \"estado\": \"RECHAZADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(597, 'califica', '301', 'EDITAR', 'Actualización del factor 8', '2025-12-17 04:15:22.397889', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": \"0.067797\"}', 10),
(598, 'califica', '302', 'EDITAR', 'Actualización del factor 9', '2025-12-17 04:15:22.420160', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": \"0.070621\"}', 10),
(599, 'califica', '303', 'EDITAR', 'Actualización del factor 10', '2025-12-17 04:15:22.444828', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": \"0.073446\"}', 10),
(600, 'califica', '304', 'EDITAR', 'Actualización del factor 11', '2025-12-17 04:15:22.468245', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": \"0.076271\"}', 10),
(601, 'califica', '305', 'EDITAR', 'Actualización del factor 12', '2025-12-17 04:15:22.492029', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": \"0.079096\"}', 10),
(602, 'califica', '306', 'EDITAR', 'Actualización del factor 13', '2025-12-17 04:15:22.516147', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": \"0.081921\"}', 10),
(603, 'califica', '307', 'EDITAR', 'Actualización del factor 14', '2025-12-17 04:15:22.540161', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": \"0.084746\"}', 10),
(604, 'califica', '308', 'EDITAR', 'Actualización del factor 15', '2025-12-17 04:15:22.565029', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": \"0.087571\"}', 10),
(605, 'califica', '309', 'EDITAR', 'Actualización del factor 16', '2025-12-17 04:15:22.614894', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": \"0.090395\"}', 10),
(606, 'califica', '310', 'EDITAR', 'Actualización del factor 17', '2025-12-17 04:15:22.635873', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": \"0.09322\"}', 10),
(607, 'califica', '311', 'EDITAR', 'Actualización del factor 18', '2025-12-17 04:15:22.659925', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": \"0.096045\"}', 10),
(608, 'califica', '312', 'EDITAR', 'Actualización del factor 19', '2025-12-17 04:15:22.683781', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": \"0.09887\"}', 10),
(609, 'califica', '313', 'EDITAR', 'Actualización del factor 20', '2025-12-17 04:15:22.708062', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": \"0.101695\"}', 10),
(610, 'califica', '314', 'EDITAR', 'Actualización del factor 21', '2025-12-17 04:15:22.732295', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": \"0.10452\"}', 10),
(611, 'califica', '315', 'EDITAR', 'Actualización del factor 22', '2025-12-17 04:15:22.756245', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": \"0.107345\"}', 10),
(612, 'califica', '316', 'EDITAR', 'Actualización del factor 23', '2025-12-17 04:15:22.781131', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": \"0.110169\"}', 10),
(613, 'califica', '317', 'EDITAR', 'Actualización del factor 24', '2025-12-17 04:15:22.807257', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": \"0.112994\"}', 10),
(614, 'califica', '318', 'EDITAR', 'Actualización del factor 25', '2025-12-17 04:15:22.828597', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": \"0.115819\"}', 10),
(615, 'califica', '319', 'EDITAR', 'Actualización del factor 26', '2025-12-17 04:15:22.852199', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": \"0.118644\"}', 10),
(616, 'califica', '320', 'EDITAR', 'Actualización del factor 27', '2025-12-17 04:15:22.876671', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": \"0.121469\"}', 10),
(617, 'califica', '321', 'EDITAR', 'Actualización del factor 28', '2025-12-17 04:15:22.900608', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": \"0.124294\"}', 10),
(618, 'califica', '322', 'EDITAR', 'Actualización del factor 29', '2025-12-17 04:15:22.924381', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": \"0.127119\"}', 10),
(619, 'califica', '323', 'EDITAR', 'Actualización del factor 30', '2025-12-17 04:15:22.948117', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": \"0.129944\"}', 10),
(620, 'califica', '324', 'EDITAR', 'Actualización del factor 31', '2025-12-17 04:15:22.972447', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": \"0.132768\"}', 10),
(621, 'califica', '325', 'EDITAR', 'Actualización del factor 32', '2025-12-17 04:15:22.996713', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": \"0.135593\"}', 10),
(622, 'califica', '326', 'EDITAR', 'Actualización del factor 33', '2025-12-17 04:15:23.020074', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": \"0.138418\"}', 10),
(623, 'califica', '327', 'EDITAR', 'Actualización del factor 34', '2025-12-17 04:15:23.044278', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": \"0.141243\"}', 10),
(624, 'califica', '328', 'EDITAR', 'Actualización del factor 35', '2025-12-17 04:15:23.068218', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": \"0.144068\"}', 10),
(625, 'califica', '329', 'EDITAR', 'Actualización del factor 36', '2025-12-17 04:15:23.092188', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": \"0.146893\"}', 10),
(626, 'califica', '330', 'EDITAR', 'Actualización del factor 37', '2025-12-17 04:15:23.116267', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": \"0.149718\"}', 10),
(627, 'calificacion_tributaria', '10095', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:06:04.373637', '{\"secuencia_evento\": 10095, \"mercado\": \"RENTA FIJA\", \"instrumento\": 4, \"descripcion\": \"Prueba Prueba 7\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 0, \"valor_historico\": 0, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"CORREDOR\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(628, 'calificacion_tributaria', '10002', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 10:06:30.185030', NULL, '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST 1\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": 1570000, \"valor_historico\": 4550000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(629, 'califica', '301', 'EDITAR', 'Actualización del factor 8', '2025-12-17 10:06:30.211273', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": \"0.067797\"}', 10),
(630, 'califica', '302', 'EDITAR', 'Actualización del factor 9', '2025-12-17 10:06:30.232770', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": \"0.070621\"}', 10),
(631, 'califica', '303', 'EDITAR', 'Actualización del factor 10', '2025-12-17 10:06:30.256588', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": \"0.073446\"}', 10),
(632, 'califica', '304', 'EDITAR', 'Actualización del factor 11', '2025-12-17 10:06:30.278936', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": \"0.076271\"}', 10),
(633, 'califica', '305', 'EDITAR', 'Actualización del factor 12', '2025-12-17 10:06:30.303295', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": \"0.079096\"}', 10),
(634, 'califica', '306', 'EDITAR', 'Actualización del factor 13', '2025-12-17 10:06:30.327035', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": \"0.081921\"}', 10),
(635, 'califica', '307', 'EDITAR', 'Actualización del factor 14', '2025-12-17 10:06:30.351037', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": \"0.084746\"}', 10),
(636, 'califica', '308', 'EDITAR', 'Actualización del factor 15', '2025-12-17 10:06:30.375246', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": \"0.087571\"}', 10),
(637, 'califica', '309', 'EDITAR', 'Actualización del factor 16', '2025-12-17 10:06:30.398970', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": \"0.090395\"}', 10),
(638, 'califica', '310', 'EDITAR', 'Actualización del factor 17', '2025-12-17 10:06:30.423358', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": \"0.09322\"}', 10),
(639, 'califica', '311', 'EDITAR', 'Actualización del factor 18', '2025-12-17 10:06:30.458385', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": \"0.096045\"}', 10),
(640, 'califica', '312', 'EDITAR', 'Actualización del factor 19', '2025-12-17 10:06:30.483228', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": \"0.09887\"}', 10),
(641, 'califica', '313', 'EDITAR', 'Actualización del factor 20', '2025-12-17 10:06:30.507760', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": \"0.101695\"}', 10),
(642, 'califica', '314', 'EDITAR', 'Actualización del factor 21', '2025-12-17 10:06:30.531710', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": \"0.10452\"}', 10),
(643, 'califica', '315', 'EDITAR', 'Actualización del factor 22', '2025-12-17 10:06:30.555740', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": \"0.107345\"}', 10),
(644, 'califica', '316', 'EDITAR', 'Actualización del factor 23', '2025-12-17 10:06:30.579395', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": \"0.110169\"}', 10),
(645, 'califica', '317', 'EDITAR', 'Actualización del factor 24', '2025-12-17 10:06:30.603724', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": \"0.112994\"}', 10),
(646, 'califica', '318', 'EDITAR', 'Actualización del factor 25', '2025-12-17 10:06:30.627248', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": \"0.115819\"}', 10),
(647, 'califica', '319', 'EDITAR', 'Actualización del factor 26', '2025-12-17 10:06:30.651282', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": \"0.118644\"}', 10),
(648, 'califica', '320', 'EDITAR', 'Actualización del factor 27', '2025-12-17 10:06:30.675135', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": \"0.121469\"}', 10),
(649, 'califica', '321', 'EDITAR', 'Actualización del factor 28', '2025-12-17 10:06:30.699095', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": \"0.124294\"}', 10),
(650, 'califica', '322', 'EDITAR', 'Actualización del factor 29', '2025-12-17 10:06:30.723144', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": \"0.127119\"}', 10),
(651, 'califica', '323', 'EDITAR', 'Actualización del factor 30', '2025-12-17 10:06:30.746980', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": \"0.129944\"}', 10),
(652, 'califica', '324', 'EDITAR', 'Actualización del factor 31', '2025-12-17 10:06:30.771431', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": \"0.132768\"}', 10),
(653, 'califica', '325', 'EDITAR', 'Actualización del factor 32', '2025-12-17 10:06:30.794976', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": \"0.135593\"}', 10),
(654, 'califica', '326', 'EDITAR', 'Actualización del factor 33', '2025-12-17 10:06:30.819163', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": \"0.138418\"}', 10),
(655, 'califica', '327', 'EDITAR', 'Actualización del factor 34', '2025-12-17 10:06:30.843170', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": \"0.141243\"}', 10),
(656, 'califica', '328', 'EDITAR', 'Actualización del factor 35', '2025-12-17 10:06:30.867208', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": \"0.144068\"}', 10),
(657, 'califica', '329', 'EDITAR', 'Actualización del factor 36', '2025-12-17 10:06:30.891214', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": \"0.146893\"}', 10),
(658, 'califica', '330', 'EDITAR', 'Actualización del factor 37', '2025-12-17 10:06:30.915014', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": \"0.149718\"}', 10),
(659, 'User', '27', 'CREAR', 'Ingreso de Usuario', '2025-12-17 10:23:38.519329', NULL, '{\"id\": 27, \"password\": \"pbkdf2_sha256$1000000$1GMxz1r1myP5dJgPJp1pkU$yyx/axiAUB6m3/1sVC+xnprA1jnfGIvfb3Y2mFzF4JI=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Jaime\", \"last_name\": \"Perez\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-17T10:23:37.621867+00:00\", \"email\": \"jaime@nuam.com\", \"groups\": [], \"user_permissions\": []}', 10),
(660, 'User', '27', 'EDITAR', 'Modificación de Usuario', '2025-12-17 10:23:48.069771', '{\"id\": 27, \"password\": \"pbkdf2_sha256$1000000$1GMxz1r1myP5dJgPJp1pkU$yyx/axiAUB6m3/1sVC+xnprA1jnfGIvfb3Y2mFzF4JI=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Jaime\", \"last_name\": \"Gonzales\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-17T10:23:37.621867+00:00\", \"email\": \"jaime@nuam.com\", \"groups\": [3], \"user_permissions\": []}', '{\"id\": 27, \"password\": \"pbkdf2_sha256$1000000$1GMxz1r1myP5dJgPJp1pkU$yyx/axiAUB6m3/1sVC+xnprA1jnfGIvfb3Y2mFzF4JI=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Jaime\", \"last_name\": \"Gonzales\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-17T10:23:37.621867+00:00\", \"email\": \"jaime@nuam.com\", \"groups\": [3], \"user_permissions\": []}', 10),
(661, 'User', '27', 'ELIMINAR', 'Eliminación de Usuario', '2025-12-17 10:23:53.138205', '{\"id\": 27, \"password\": \"pbkdf2_sha256$1000000$1GMxz1r1myP5dJgPJp1pkU$yyx/axiAUB6m3/1sVC+xnprA1jnfGIvfb3Y2mFzF4JI=\", \"last_login\": null, \"is_superuser\": false, \"first_name\": \"Jaime\", \"last_name\": \"Gonzales\", \"is_staff\": false, \"is_active\": true, \"date_joined\": \"2025-12-17T10:23:37.621867+00:00\", \"email\": \"jaime@nuam.com\", \"groups\": [3], \"user_permissions\": []}', NULL, 10),
(662, 'calificacion_tributaria', '12522', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-17 10:25:45.114280', NULL, '{\"secuencia_evento\": 12522, \"mercado\": \"INSTRUMENTOS DEL ESTADO-TESORER\\u00cdA\", \"instrumento\": 5, \"descripcion\": \"Prueba\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 150000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(663, 'califica', '451', 'CREAR', 'Califica creado para factor 8', '2025-12-17 10:25:45.197225', NULL, '{\"id\": 451, \"factor\": 8, \"calificacion\": 12522, \"valor\": \"0.169463\"}', 10),
(664, 'califica', '452', 'CREAR', 'Califica creado para factor 9', '2025-12-17 10:25:45.245156', NULL, '{\"id\": 452, \"factor\": 9, \"calificacion\": 12522, \"valor\": \"0.613848\"}', 10),
(665, 'califica', '453', 'CREAR', 'Califica creado para factor 10', '2025-12-17 10:25:45.293247', NULL, '{\"id\": 453, \"factor\": 10, \"calificacion\": 12522, \"valor\": \"0.061117\"}', 10),
(666, 'califica', '454', 'CREAR', 'Califica creado para factor 11', '2025-12-17 10:25:45.341219', NULL, '{\"id\": 454, \"factor\": 11, \"calificacion\": 12522, \"valor\": \"0.003315\"}', 10),
(667, 'califica', '455', 'CREAR', 'Califica creado para factor 12', '2025-12-17 10:25:45.389171', NULL, '{\"id\": 455, \"factor\": 12, \"calificacion\": 12522, \"valor\": \"0.003437\"}', 10),
(668, 'califica', '456', 'CREAR', 'Califica creado para factor 13', '2025-12-17 10:25:45.437236', NULL, '{\"id\": 456, \"factor\": 13, \"calificacion\": 12522, \"valor\": \"0.061119\"}', 10),
(669, 'califica', '457', 'CREAR', 'Califica creado para factor 14', '2025-12-17 10:25:45.485241', NULL, '{\"id\": 457, \"factor\": 14, \"calificacion\": 12522, \"valor\": \"0.006112\"}', 10),
(670, 'califica', '458', 'CREAR', 'Califica creado para factor 15', '2025-12-17 10:25:45.533268', NULL, '{\"id\": 458, \"factor\": 15, \"calificacion\": 12522, \"valor\": \"0.007328\"}', 10),
(671, 'califica', '459', 'CREAR', 'Califica creado para factor 16', '2025-12-17 10:25:45.617499', NULL, '{\"id\": 459, \"factor\": 16, \"calificacion\": 12522, \"valor\": \"0.033166\"}', 10),
(672, 'califica', '460', 'CREAR', 'Califica creado para factor 17', '2025-12-17 10:25:45.665205', NULL, '{\"id\": 460, \"factor\": 17, \"calificacion\": 12522, \"valor\": \"0.000611\"}', 10),
(673, 'califica', '461', 'CREAR', 'Califica creado para factor 18', '2025-12-17 10:25:45.713320', NULL, '{\"id\": 461, \"factor\": 18, \"calificacion\": 12522, \"valor\": \"0.006113\"}', 10),
(674, 'califica', '462', 'CREAR', 'Califica creado para factor 19', '2025-12-17 10:25:45.761503', NULL, '{\"id\": 462, \"factor\": 19, \"calificacion\": 12522, \"valor\": \"0.034371\"}', 10),
(675, 'califica', '463', 'CREAR', 'Califica creado para factor 20', '2025-12-17 10:25:45.809311', NULL, '{\"id\": 463, \"factor\": 20, \"calificacion\": 12522, \"valor\": \"0.061118\"}', 10),
(676, 'califica', '464', 'CREAR', 'Califica creado para factor 21', '2025-12-17 10:25:45.869267', NULL, '{\"id\": 464, \"factor\": 21, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(677, 'califica', '465', 'CREAR', 'Califica creado para factor 22', '2025-12-17 10:25:45.929296', NULL, '{\"id\": 465, \"factor\": 22, \"calificacion\": 12522, \"valor\": \"0.003317\"}', 10),
(678, 'califica', '466', 'CREAR', 'Califica creado para factor 23', '2025-12-17 10:25:45.977325', NULL, '{\"id\": 466, \"factor\": 23, \"calificacion\": 12522, \"valor\": \"0.006113\"}', 10),
(679, 'califica', '467', 'CREAR', 'Califica creado para factor 24', '2025-12-17 10:25:46.025314', NULL, '{\"id\": 467, \"factor\": 24, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(680, 'califica', '468', 'CREAR', 'Califica creado para factor 25', '2025-12-17 10:25:46.085809', NULL, '{\"id\": 468, \"factor\": 25, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(681, 'califica', '469', 'CREAR', 'Califica creado para factor 26', '2025-12-17 10:25:46.169298', NULL, '{\"id\": 469, \"factor\": 26, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(682, 'califica', '470', 'CREAR', 'Califica creado para factor 27', '2025-12-17 10:25:46.217322', NULL, '{\"id\": 470, \"factor\": 27, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(683, 'califica', '471', 'CREAR', 'Califica creado para factor 28', '2025-12-17 10:25:46.265427', NULL, '{\"id\": 471, \"factor\": 28, \"calificacion\": 12522, \"valor\": \"0.006113\"}', 10),
(684, 'califica', '472', 'CREAR', 'Califica creado para factor 29', '2025-12-17 10:25:46.313340', NULL, '{\"id\": 472, \"factor\": 29, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(685, 'califica', '473', 'CREAR', 'Califica creado para factor 30', '2025-12-17 10:25:46.361398', NULL, '{\"id\": 473, \"factor\": 30, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(686, 'califica', '474', 'CREAR', 'Califica creado para factor 31', '2025-12-17 10:25:46.409364', NULL, '{\"id\": 474, \"factor\": 31, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(687, 'califica', '475', 'CREAR', 'Califica creado para factor 32', '2025-12-17 10:25:46.457354', NULL, '{\"id\": 475, \"factor\": 32, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(688, 'califica', '476', 'CREAR', 'Califica creado para factor 33', '2025-12-17 10:25:46.506511', NULL, '{\"id\": 476, \"factor\": 33, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(689, 'califica', '477', 'CREAR', 'Califica creado para factor 34', '2025-12-17 10:25:46.553490', NULL, '{\"id\": 477, \"factor\": 34, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(690, 'califica', '478', 'CREAR', 'Califica creado para factor 35', '2025-12-17 10:25:46.601502', NULL, '{\"id\": 478, \"factor\": 35, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(691, 'califica', '479', 'CREAR', 'Califica creado para factor 36', '2025-12-17 10:25:46.649369', NULL, '{\"id\": 479, \"factor\": 36, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(692, 'califica', '480', 'CREAR', 'Califica creado para factor 37', '2025-12-17 10:25:46.697366', NULL, '{\"id\": 480, \"factor\": 37, \"calificacion\": 12522, \"valor\": \"0.0\"}', 10),
(693, 'calificacion_tributaria', '12522', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 10:26:07.063208', NULL, '{\"secuencia_evento\": 12522, \"mercado\": \"INSTRUMENTOS DEL ESTADO-TESORER\\u00cdA\", \"instrumento\": 5, \"descripcion\": \"Prueba 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 150000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(694, 'califica', '451', 'EDITAR', 'Actualización del factor 8', '2025-12-17 10:26:07.090642', '{\"id\": 451, \"factor\": 8, \"calificacion\": 12522, \"valor\": 0.169463}', '{\"id\": 451, \"factor\": 8, \"calificacion\": 12522, \"valor\": \"0.169463\"}', 10),
(695, 'califica', '452', 'EDITAR', 'Actualización del factor 9', '2025-12-17 10:26:07.112551', '{\"id\": 452, \"factor\": 9, \"calificacion\": 12522, \"valor\": 0.613848}', '{\"id\": 452, \"factor\": 9, \"calificacion\": 12522, \"valor\": \"0.613848\"}', 10),
(696, 'califica', '453', 'EDITAR', 'Actualización del factor 10', '2025-12-17 10:26:07.136163', '{\"id\": 453, \"factor\": 10, \"calificacion\": 12522, \"valor\": 0.061117}', '{\"id\": 453, \"factor\": 10, \"calificacion\": 12522, \"valor\": \"0.061117\"}', 10),
(697, 'califica', '454', 'EDITAR', 'Actualización del factor 11', '2025-12-17 10:26:07.161430', '{\"id\": 454, \"factor\": 11, \"calificacion\": 12522, \"valor\": 0.003315}', '{\"id\": 454, \"factor\": 11, \"calificacion\": 12522, \"valor\": \"0.003315\"}', 10),
(698, 'califica', '455', 'EDITAR', 'Actualización del factor 12', '2025-12-17 10:26:07.184965', '{\"id\": 455, \"factor\": 12, \"calificacion\": 12522, \"valor\": 0.003437}', '{\"id\": 455, \"factor\": 12, \"calificacion\": 12522, \"valor\": \"0.003437\"}', 10),
(699, 'califica', '456', 'EDITAR', 'Actualización del factor 13', '2025-12-17 10:26:07.208474', '{\"id\": 456, \"factor\": 13, \"calificacion\": 12522, \"valor\": 0.061119}', '{\"id\": 456, \"factor\": 13, \"calificacion\": 12522, \"valor\": \"0.061119\"}', 10),
(700, 'califica', '457', 'EDITAR', 'Actualización del factor 14', '2025-12-17 10:26:07.232440', '{\"id\": 457, \"factor\": 14, \"calificacion\": 12522, \"valor\": 0.006112}', '{\"id\": 457, \"factor\": 14, \"calificacion\": 12522, \"valor\": \"0.006112\"}', 10),
(701, 'califica', '458', 'EDITAR', 'Actualización del factor 15', '2025-12-17 10:26:07.256712', '{\"id\": 458, \"factor\": 15, \"calificacion\": 12522, \"valor\": 0.007328}', '{\"id\": 458, \"factor\": 15, \"calificacion\": 12522, \"valor\": \"0.007328\"}', 10),
(702, 'califica', '459', 'EDITAR', 'Actualización del factor 16', '2025-12-17 10:26:07.280673', '{\"id\": 459, \"factor\": 16, \"calificacion\": 12522, \"valor\": 0.033166}', '{\"id\": 459, \"factor\": 16, \"calificacion\": 12522, \"valor\": \"0.033166\"}', 10),
(703, 'califica', '460', 'EDITAR', 'Actualización del factor 17', '2025-12-17 10:26:07.304487', '{\"id\": 460, \"factor\": 17, \"calificacion\": 12522, \"valor\": 0.000611}', '{\"id\": 460, \"factor\": 17, \"calificacion\": 12522, \"valor\": \"0.000611\"}', 10),
(704, 'califica', '461', 'EDITAR', 'Actualización del factor 18', '2025-12-17 10:26:07.328305', '{\"id\": 461, \"factor\": 18, \"calificacion\": 12522, \"valor\": 0.006113}', '{\"id\": 461, \"factor\": 18, \"calificacion\": 12522, \"valor\": \"0.006113\"}', 10),
(705, 'califica', '462', 'EDITAR', 'Actualización del factor 19', '2025-12-17 10:26:07.352217', '{\"id\": 462, \"factor\": 19, \"calificacion\": 12522, \"valor\": 0.034371}', '{\"id\": 462, \"factor\": 19, \"calificacion\": 12522, \"valor\": \"0.034371\"}', 10),
(706, 'califica', '463', 'EDITAR', 'Actualización del factor 20', '2025-12-17 10:26:07.376794', '{\"id\": 463, \"factor\": 20, \"calificacion\": 12522, \"valor\": 0.061118}', '{\"id\": 463, \"factor\": 20, \"calificacion\": 12522, \"valor\": \"0.061118\"}', 10),
(707, 'califica', '464', 'EDITAR', 'Actualización del factor 21', '2025-12-17 10:26:07.400416', '{\"id\": 464, \"factor\": 21, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 464, \"factor\": 21, \"calificacion\": 12522, \"valor\": 0}', 10),
(708, 'califica', '465', 'EDITAR', 'Actualización del factor 22', '2025-12-17 10:26:07.424793', '{\"id\": 465, \"factor\": 22, \"calificacion\": 12522, \"valor\": 0.003317}', '{\"id\": 465, \"factor\": 22, \"calificacion\": 12522, \"valor\": \"0.003317\"}', 10),
(709, 'califica', '466', 'EDITAR', 'Actualización del factor 23', '2025-12-17 10:26:07.448262', '{\"id\": 466, \"factor\": 23, \"calificacion\": 12522, \"valor\": 0.006113}', '{\"id\": 466, \"factor\": 23, \"calificacion\": 12522, \"valor\": \"0.006113\"}', 10),
(710, 'califica', '467', 'EDITAR', 'Actualización del factor 24', '2025-12-17 10:26:07.472978', '{\"id\": 467, \"factor\": 24, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 467, \"factor\": 24, \"calificacion\": 12522, \"valor\": 0}', 10),
(711, 'califica', '468', 'EDITAR', 'Actualización del factor 25', '2025-12-17 10:26:07.496308', '{\"id\": 468, \"factor\": 25, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 468, \"factor\": 25, \"calificacion\": 12522, \"valor\": 0}', 10),
(712, 'califica', '469', 'EDITAR', 'Actualización del factor 26', '2025-12-17 10:26:07.521924', '{\"id\": 469, \"factor\": 26, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 469, \"factor\": 26, \"calificacion\": 12522, \"valor\": 0}', 10),
(713, 'califica', '470', 'EDITAR', 'Actualización del factor 27', '2025-12-17 10:26:07.544692', '{\"id\": 470, \"factor\": 27, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 470, \"factor\": 27, \"calificacion\": 12522, \"valor\": 0}', 10),
(714, 'califica', '471', 'EDITAR', 'Actualización del factor 28', '2025-12-17 10:26:07.568175', '{\"id\": 471, \"factor\": 28, \"calificacion\": 12522, \"valor\": 0.006113}', '{\"id\": 471, \"factor\": 28, \"calificacion\": 12522, \"valor\": \"0.006113\"}', 10),
(715, 'califica', '472', 'EDITAR', 'Actualización del factor 29', '2025-12-17 10:26:07.592306', '{\"id\": 472, \"factor\": 29, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 472, \"factor\": 29, \"calificacion\": 12522, \"valor\": 0}', 10),
(716, 'califica', '473', 'EDITAR', 'Actualización del factor 30', '2025-12-17 10:26:07.616183', '{\"id\": 473, \"factor\": 30, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 473, \"factor\": 30, \"calificacion\": 12522, \"valor\": 0}', 10),
(717, 'califica', '474', 'EDITAR', 'Actualización del factor 31', '2025-12-17 10:26:07.641428', '{\"id\": 474, \"factor\": 31, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 474, \"factor\": 31, \"calificacion\": 12522, \"valor\": 0}', 10),
(718, 'califica', '475', 'EDITAR', 'Actualización del factor 32', '2025-12-17 10:26:07.664239', '{\"id\": 475, \"factor\": 32, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 475, \"factor\": 32, \"calificacion\": 12522, \"valor\": 0}', 10),
(719, 'califica', '476', 'EDITAR', 'Actualización del factor 33', '2025-12-17 10:26:07.688863', '{\"id\": 476, \"factor\": 33, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 476, \"factor\": 33, \"calificacion\": 12522, \"valor\": 0}', 10),
(720, 'califica', '477', 'EDITAR', 'Actualización del factor 34', '2025-12-17 10:26:07.713084', '{\"id\": 477, \"factor\": 34, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 477, \"factor\": 34, \"calificacion\": 12522, \"valor\": 0}', 10),
(721, 'califica', '478', 'EDITAR', 'Actualización del factor 35', '2025-12-17 10:26:07.735918', '{\"id\": 478, \"factor\": 35, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 478, \"factor\": 35, \"calificacion\": 12522, \"valor\": 0}', 10),
(722, 'califica', '479', 'EDITAR', 'Actualización del factor 36', '2025-12-17 10:26:07.768436', '{\"id\": 479, \"factor\": 36, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 479, \"factor\": 36, \"calificacion\": 12522, \"valor\": 0}', 10),
(723, 'califica', '480', 'EDITAR', 'Actualización del factor 37', '2025-12-17 10:26:07.809093', '{\"id\": 480, \"factor\": 37, \"calificacion\": 12522, \"valor\": 0.0}', '{\"id\": 480, \"factor\": 37, \"calificacion\": 12522, \"valor\": 0}', 10),
(724, 'calificacion_tributaria', '12522', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:26:15.544336', '{\"secuencia_evento\": 12522, \"mercado\": \"INSTRUMENTOS DEL ESTADO-TESORER\\u00cdA\", \"instrumento\": 5, \"descripcion\": \"Prueba 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 150000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(725, 'calificacion_tributaria', '10000', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:26:21.116390', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": 1250000, \"valor_historico\": 8700000, \"anio\": 2024, \"estado\": \"VALIDADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(726, 'calificacion_tributaria', '10001', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:26:24.297531', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": 980000, \"valor_historico\": 6500000, \"anio\": 2024, \"estado\": \"VALIDADA\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(727, 'calificacion_tributaria', '10000', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:26:40.374802', NULL, '{\"secuencia_evento\": \"10000\", \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(728, 'califica', '481', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:26:40.421359', NULL, '{\"id\": 481, \"factor\": 8, \"calificacion\": \"10000\", \"valor\": 0.072235}', 10),
(729, 'califica', '482', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:26:40.469400', NULL, '{\"id\": 482, \"factor\": 9, \"calificacion\": \"10000\", \"valor\": 0.092551}', 10),
(730, 'califica', '483', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:26:40.541419', NULL, '{\"id\": 483, \"factor\": 10, \"calificacion\": \"10000\", \"valor\": 0.112867}', 10),
(731, 'califica', '484', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:26:40.589472', NULL, '{\"id\": 484, \"factor\": 11, \"calificacion\": \"10000\", \"valor\": 0.069977}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(732, 'califica', '485', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:26:40.637444', NULL, '{\"id\": 485, \"factor\": 12, \"calificacion\": \"10000\", \"valor\": 0.065463}', 10),
(733, 'califica', '486', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:26:40.685457', NULL, '{\"id\": 486, \"factor\": 13, \"calificacion\": \"10000\", \"valor\": 0.060948}', 10),
(734, 'califica', '487', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:26:40.734570', NULL, '{\"id\": 487, \"factor\": 14, \"calificacion\": \"10000\", \"valor\": 0.103837}', 10),
(735, 'califica', '488', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:26:40.781403', NULL, '{\"id\": 488, \"factor\": 15, \"calificacion\": \"10000\", \"valor\": 0.085779}', 10),
(736, 'califica', '489', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:26:40.829506', NULL, '{\"id\": 489, \"factor\": 16, \"calificacion\": \"10000\", \"valor\": 0.074492}', 10),
(737, 'califica', '490', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:26:40.877507', NULL, '{\"id\": 490, \"factor\": 17, \"calificacion\": \"10000\", \"valor\": 0.079007}', 10),
(738, 'califica', '491', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:26:40.925412', NULL, '{\"id\": 491, \"factor\": 18, \"calificacion\": \"10000\", \"valor\": 0.088036}', 10),
(739, 'califica', '492', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:26:40.973656', NULL, '{\"id\": 492, \"factor\": 19, \"calificacion\": \"10000\", \"valor\": 0.094808}', 10),
(740, 'califica', '493', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:26:41.021375', NULL, '{\"id\": 493, \"factor\": 20, \"calificacion\": \"10000\", \"valor\": 0.099323}', 10),
(741, 'califica', '494', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:26:41.069429', NULL, '{\"id\": 494, \"factor\": 21, \"calificacion\": \"10000\", \"valor\": 0.106095}', 10),
(742, 'califica', '495', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:26:41.117520', NULL, '{\"id\": 495, \"factor\": 22, \"calificacion\": \"10000\", \"valor\": 0.110609}', 10),
(743, 'califica', '496', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:26:41.165419', NULL, '{\"id\": 496, \"factor\": 23, \"calificacion\": \"10000\", \"valor\": 0.115124}', 10),
(744, 'califica', '497', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:26:41.213425', NULL, '{\"id\": 497, \"factor\": 24, \"calificacion\": \"10000\", \"valor\": 0.119639}', 10),
(745, 'califica', '498', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:26:41.263060', NULL, '{\"id\": 498, \"factor\": 25, \"calificacion\": \"10000\", \"valor\": 0.124153}', 10),
(746, 'califica', '499', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:26:41.309594', NULL, '{\"id\": 499, \"factor\": 26, \"calificacion\": \"10000\", \"valor\": 0.128668}', 10),
(747, 'califica', '500', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:26:41.369613', NULL, '{\"id\": 500, \"factor\": 27, \"calificacion\": \"10000\", \"valor\": 0.133183}', 10),
(748, 'califica', '501', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:26:41.468253', NULL, '{\"id\": 501, \"factor\": 28, \"calificacion\": \"10000\", \"valor\": 0.137698}', 10),
(749, 'califica', '502', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:26:41.607078', NULL, '{\"id\": 502, \"factor\": 29, \"calificacion\": \"10000\", \"valor\": 0.142212}', 10),
(750, 'califica', '503', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:26:41.657495', NULL, '{\"id\": 503, \"factor\": 30, \"calificacion\": \"10000\", \"valor\": 0.146727}', 10),
(751, 'califica', '504', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:26:41.705620', NULL, '{\"id\": 504, \"factor\": 31, \"calificacion\": \"10000\", \"valor\": 0.151242}', 10),
(752, 'califica', '505', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:26:41.753629', NULL, '{\"id\": 505, \"factor\": 32, \"calificacion\": \"10000\", \"valor\": 0.155756}', 10),
(753, 'califica', '506', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:26:41.801643', NULL, '{\"id\": 506, \"factor\": 33, \"calificacion\": \"10000\", \"valor\": 0.160271}', 10),
(754, 'califica', '507', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:26:41.849609', NULL, '{\"id\": 507, \"factor\": 34, \"calificacion\": \"10000\", \"valor\": 0.164786}', 10),
(755, 'califica', '508', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:26:41.898655', NULL, '{\"id\": 508, \"factor\": 35, \"calificacion\": \"10000\", \"valor\": 0.1693}', 10),
(756, 'califica', '509', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:26:41.945506', NULL, '{\"id\": 509, \"factor\": 36, \"calificacion\": \"10000\", \"valor\": 0.173815}', 10),
(757, 'califica', '510', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:26:41.993571', NULL, '{\"id\": 510, \"factor\": 37, \"calificacion\": \"10000\", \"valor\": 0.17833}', 10),
(758, 'calificacion_tributaria', '10001', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:26:42.042865', NULL, '{\"secuencia_evento\": \"10001\", \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(759, 'califica', '511', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:26:42.089650', NULL, '{\"id\": 511, \"factor\": 8, \"calificacion\": \"10001\", \"valor\": 0.120614}', 10),
(760, 'califica', '512', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:26:42.149888', NULL, '{\"id\": 512, \"factor\": 9, \"calificacion\": \"10001\", \"valor\": 0.131579}', 10),
(761, 'califica', '513', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:26:42.207772', NULL, '{\"id\": 513, \"factor\": 10, \"calificacion\": \"10001\", \"valor\": 0.109649}', 10),
(762, 'califica', '514', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:26:42.258799', NULL, '{\"id\": 514, \"factor\": 11, \"calificacion\": \"10001\", \"valor\": 0.041667}', 10),
(763, 'califica', '515', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:26:42.305767', NULL, '{\"id\": 515, \"factor\": 12, \"calificacion\": \"10001\", \"valor\": 0.046053}', 10),
(764, 'califica', '516', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:26:42.353671', NULL, '{\"id\": 516, \"factor\": 13, \"calificacion\": \"10001\", \"valor\": 0.050439}', 10),
(765, 'califica', '517', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:26:42.401567', NULL, '{\"id\": 517, \"factor\": 14, \"calificacion\": \"10001\", \"valor\": 0.054825}', 10),
(766, 'califica', '518', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:26:42.449670', NULL, '{\"id\": 518, \"factor\": 15, \"calificacion\": \"10001\", \"valor\": 0.066886}', 10),
(767, 'califica', '519', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:26:42.497645', NULL, '{\"id\": 519, \"factor\": 16, \"calificacion\": \"10001\", \"valor\": 0.078947}', 10),
(768, 'califica', '520', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:26:42.545630', NULL, '{\"id\": 520, \"factor\": 17, \"calificacion\": \"10001\", \"valor\": 0.091009}', 10),
(769, 'califica', '521', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:26:42.593634', NULL, '{\"id\": 521, \"factor\": 18, \"calificacion\": \"10001\", \"valor\": 0.099781}', 10),
(770, 'califica', '522', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:26:42.641605', NULL, '{\"id\": 522, \"factor\": 19, \"calificacion\": \"10001\", \"valor\": 0.108553}', 10),
(771, 'califica', '523', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:26:42.701681', NULL, '{\"id\": 523, \"factor\": 20, \"calificacion\": \"10001\", \"valor\": 0.093202}', 10),
(772, 'califica', '524', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:26:42.749621', NULL, '{\"id\": 524, \"factor\": 21, \"calificacion\": \"10001\", \"valor\": 0.083333}', 10),
(773, 'califica', '525', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:26:42.809885', NULL, '{\"id\": 525, \"factor\": 22, \"calificacion\": \"10001\", \"valor\": 0.074013}', 10),
(774, 'califica', '526', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:26:42.857656', NULL, '{\"id\": 526, \"factor\": 23, \"calificacion\": \"10001\", \"valor\": 0.059211}', 10),
(775, 'califica', '527', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:26:42.905783', NULL, '{\"id\": 527, \"factor\": 24, \"calificacion\": \"10001\", \"valor\": 0.053728}', 10),
(776, 'califica', '528', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:26:42.953617', NULL, '{\"id\": 528, \"factor\": 25, \"calificacion\": \"10001\", \"valor\": 0.048246}', 10),
(777, 'califica', '529', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:26:43.002870', NULL, '{\"id\": 529, \"factor\": 26, \"calificacion\": \"10001\", \"valor\": 0.042763}', 10),
(778, 'califica', '530', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:26:43.049637', NULL, '{\"id\": 530, \"factor\": 27, \"calificacion\": \"10001\", \"valor\": 0.038377}', 10),
(779, 'califica', '531', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:26:43.097733', NULL, '{\"id\": 531, \"factor\": 28, \"calificacion\": \"10001\", \"valor\": 0.033991}', 10),
(780, 'califica', '532', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:26:43.145631', NULL, '{\"id\": 532, \"factor\": 29, \"calificacion\": \"10001\", \"valor\": 0.029605}', 10),
(781, 'califica', '533', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:26:43.193730', NULL, '{\"id\": 533, \"factor\": 30, \"calificacion\": \"10001\", \"valor\": 0.025219}', 10),
(782, 'califica', '534', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:26:43.243141', NULL, '{\"id\": 534, \"factor\": 31, \"calificacion\": \"10001\", \"valor\": 0.020833}', 10),
(783, 'califica', '535', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:26:43.325749', NULL, '{\"id\": 535, \"factor\": 32, \"calificacion\": \"10001\", \"valor\": 0.016447}', 10),
(784, 'califica', '536', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:26:43.373818', NULL, '{\"id\": 536, \"factor\": 33, \"calificacion\": \"10001\", \"valor\": 0.012061}', 10),
(785, 'califica', '537', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:26:43.421695', NULL, '{\"id\": 537, \"factor\": 34, \"calificacion\": \"10001\", \"valor\": 0.009868}', 10),
(786, 'califica', '538', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:26:43.469690', NULL, '{\"id\": 538, \"factor\": 35, \"calificacion\": \"10001\", \"valor\": 0.007675}', 10),
(787, 'califica', '539', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:26:43.517695', NULL, '{\"id\": 539, \"factor\": 36, \"calificacion\": \"10001\", \"valor\": 0.005482}', 10),
(788, 'califica', '540', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:26:43.565721', NULL, '{\"id\": 540, \"factor\": 37, \"calificacion\": \"10001\", \"valor\": 0.003289}', 10),
(789, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:26:43.617002', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(790, 'califica', '301', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:26:43.641353', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', 10),
(791, 'califica', '302', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:26:43.674791', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', 10),
(792, 'califica', '303', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:26:43.700873', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', 10),
(793, 'califica', '304', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:26:43.724947', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', 10),
(794, 'califica', '305', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:26:43.749078', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', 10),
(795, 'califica', '306', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:26:43.772775', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', 10),
(796, 'califica', '307', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:26:43.796701', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', 10),
(797, 'califica', '308', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:26:43.820746', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', 10),
(798, 'califica', '309', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:26:43.845400', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', 10),
(799, 'califica', '310', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:26:43.868677', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', 10),
(800, 'califica', '311', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:26:43.893378', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', 10),
(801, 'califica', '312', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:26:43.944044', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', 10),
(802, 'califica', '313', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:26:43.978364', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', 10),
(803, 'califica', '314', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:26:44.001112', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', 10),
(804, 'califica', '315', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:26:44.025060', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', 10),
(805, 'califica', '316', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:26:44.049073', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', 10),
(806, 'califica', '317', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:26:44.072691', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', 10),
(807, 'califica', '318', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:26:44.096813', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', 10),
(808, 'califica', '319', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:26:44.120757', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', 10),
(809, 'califica', '320', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:26:44.145653', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', 10),
(810, 'califica', '321', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:26:44.176477', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', 10),
(811, 'califica', '322', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:26:44.205868', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', 10),
(812, 'califica', '323', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:26:44.229681', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', 10),
(813, 'califica', '324', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:26:44.253447', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', 10),
(814, 'califica', '325', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:26:44.289317', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', 10),
(815, 'califica', '326', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:26:44.314304', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', 10),
(816, 'califica', '327', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:26:44.337420', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', 10),
(817, 'califica', '328', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:26:44.362184', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', 10),
(818, 'califica', '329', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:26:44.384679', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', 10),
(819, 'califica', '330', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:26:44.409989', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', 10),
(820, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:26:44.435374', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(821, 'califica', '391', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:26:44.457259', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', 10),
(822, 'califica', '392', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:26:44.480978', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', 10),
(823, 'califica', '393', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:26:44.504857', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', 10),
(824, 'califica', '394', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:26:44.540912', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', 10),
(825, 'califica', '395', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:26:44.564992', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', 10),
(826, 'califica', '396', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:26:44.600944', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', 10),
(827, 'califica', '397', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:26:44.625276', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', 10),
(828, 'califica', '398', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:26:44.673089', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', 10),
(829, 'califica', '399', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:26:44.696983', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', 10),
(830, 'califica', '400', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:26:44.727787', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', 10),
(831, 'califica', '401', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:26:44.757110', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', 10),
(832, 'califica', '402', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:26:44.805036', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', 10),
(833, 'califica', '403', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:26:44.829331', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', 10),
(834, 'califica', '404', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:26:44.865025', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', 10),
(835, 'califica', '405', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:26:44.888928', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', 10),
(836, 'califica', '406', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:26:44.925891', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', 10),
(837, 'califica', '407', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:26:44.949580', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', 10),
(838, 'califica', '408', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:26:44.985132', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', 10),
(839, 'califica', '409', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:26:45.011067', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', 10),
(840, 'califica', '410', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:26:45.054178', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', 10),
(841, 'califica', '411', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:26:45.081187', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', 10),
(842, 'califica', '412', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:26:45.105032', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', 10),
(843, 'califica', '413', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:26:45.129109', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', 10),
(844, 'califica', '414', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:26:45.152742', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', 10),
(845, 'califica', '415', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:26:45.177974', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', 10),
(846, 'califica', '416', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:26:45.204783', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', 10),
(847, 'califica', '417', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:26:45.225507', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', 10),
(848, 'califica', '418', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:26:45.249098', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', 10),
(849, 'califica', '419', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:26:45.272958', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', 10),
(850, 'califica', '420', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:26:45.297024', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', 10),
(851, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:26:45.323208', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(852, 'califica', '421', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:26:45.345881', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', 10),
(853, 'califica', '422', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:26:45.369147', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', 10),
(854, 'califica', '423', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:26:45.394597', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', 10),
(855, 'califica', '424', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:26:45.417286', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', 10),
(856, 'califica', '425', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:26:45.465236', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', 10),
(857, 'califica', '426', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:26:45.488941', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', 10),
(858, 'califica', '427', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:26:45.513255', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', 10),
(859, 'califica', '428', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:26:45.537029', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', 10),
(860, 'califica', '429', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:26:45.561628', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', 10),
(861, 'califica', '430', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:26:45.585052', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', 10),
(862, 'califica', '431', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:26:45.610311', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', 10),
(863, 'califica', '432', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:26:45.633291', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', 10),
(864, 'califica', '433', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:26:45.657132', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', 10),
(865, 'califica', '434', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:26:45.681121', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', 10),
(866, 'califica', '435', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:26:45.705259', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', 10),
(867, 'califica', '436', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:26:45.729813', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', 10),
(868, 'califica', '437', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:26:45.753105', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', 10),
(869, 'califica', '438', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:26:45.777961', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', 10),
(870, 'califica', '439', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:26:45.801008', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', 10),
(871, 'califica', '440', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:26:45.838270', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', 10),
(872, 'califica', '441', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:26:45.862378', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', 10),
(873, 'califica', '442', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:26:45.885017', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', 10),
(874, 'califica', '443', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:26:45.909795', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', 10),
(875, 'califica', '444', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:26:45.933093', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', 10),
(876, 'califica', '445', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:26:45.957075', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', 10),
(877, 'califica', '446', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:26:45.981240', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', 10),
(878, 'califica', '447', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:26:46.026584', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', 10),
(879, 'califica', '448', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:26:46.065217', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', 10),
(880, 'califica', '449', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:26:46.089085', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', 10),
(881, 'califica', '450', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:26:46.113265', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', 10),
(882, 'calificacion_tributaria', '10000', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:27:12.346371', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"Descripcion prueba 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"100\", \"valor_historico\": \"1000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"Descripcion prueba 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"100\", \"valor_historico\": \"1000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(883, 'califica', '481', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:27:12.390016', '{\"id\": 481, \"factor\": 8, \"calificacion\": 10000, \"valor\": 0.072235}', '{\"id\": 481, \"factor\": 8, \"calificacion\": 10000, \"valor\": 0.4}', 10),
(884, 'califica', '482', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:27:12.437989', '{\"id\": 482, \"factor\": 9, \"calificacion\": 10000, \"valor\": 0.092551}', '{\"id\": 482, \"factor\": 9, \"calificacion\": 10000, \"valor\": 0.45}', 10),
(885, 'califica', '483', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:27:12.486119', '{\"id\": 483, \"factor\": 10, \"calificacion\": 10000, \"valor\": 0.112867}', '{\"id\": 483, \"factor\": 10, \"calificacion\": 10000, \"valor\": 0.5}', 10),
(886, 'califica', '484', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:27:12.533929', '{\"id\": 484, \"factor\": 11, \"calificacion\": 10000, \"valor\": 0.069977}', '{\"id\": 484, \"factor\": 11, \"calificacion\": 10000, \"valor\": 0.55}', 10),
(887, 'califica', '485', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:27:12.582103', '{\"id\": 485, \"factor\": 12, \"calificacion\": 10000, \"valor\": 0.065463}', '{\"id\": 485, \"factor\": 12, \"calificacion\": 10000, \"valor\": 0.6}', 10),
(888, 'califica', '486', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:27:12.761965', '{\"id\": 486, \"factor\": 13, \"calificacion\": 10000, \"valor\": 0.060948}', '{\"id\": 486, \"factor\": 13, \"calificacion\": 10000, \"valor\": 0.65}', 10),
(889, 'califica', '487', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:27:12.935267', '{\"id\": 487, \"factor\": 14, \"calificacion\": 10000, \"valor\": 0.103837}', '{\"id\": 487, \"factor\": 14, \"calificacion\": 10000, \"valor\": 0.7}', 10),
(890, 'califica', '488', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:27:13.014063', '{\"id\": 488, \"factor\": 15, \"calificacion\": 10000, \"valor\": 0.085779}', '{\"id\": 488, \"factor\": 15, \"calificacion\": 10000, \"valor\": 0.75}', 10),
(891, 'califica', '489', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:27:13.062038', '{\"id\": 489, \"factor\": 16, \"calificacion\": 10000, \"valor\": 0.074492}', '{\"id\": 489, \"factor\": 16, \"calificacion\": 10000, \"valor\": 0.8}', 10),
(892, 'califica', '490', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:27:13.114756', '{\"id\": 490, \"factor\": 17, \"calificacion\": 10000, \"valor\": 0.079007}', '{\"id\": 490, \"factor\": 17, \"calificacion\": 10000, \"valor\": 0.85}', 10),
(893, 'califica', '491', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:27:13.159348', '{\"id\": 491, \"factor\": 18, \"calificacion\": 10000, \"valor\": 0.088036}', '{\"id\": 491, \"factor\": 18, \"calificacion\": 10000, \"valor\": 0.9}', 10),
(894, 'califica', '492', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:27:13.206204', '{\"id\": 492, \"factor\": 19, \"calificacion\": 10000, \"valor\": 0.094808}', '{\"id\": 492, \"factor\": 19, \"calificacion\": 10000, \"valor\": 0.95}', 10),
(895, 'califica', '493', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:27:13.254069', '{\"id\": 493, \"factor\": 20, \"calificacion\": 10000, \"valor\": 0.099323}', '{\"id\": 493, \"factor\": 20, \"calificacion\": 10000, \"valor\": 0.0}', 10),
(896, 'califica', '494', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:27:13.302196', '{\"id\": 494, \"factor\": 21, \"calificacion\": 10000, \"valor\": 0.106095}', '{\"id\": 494, \"factor\": 21, \"calificacion\": 10000, \"valor\": 0.05}', 10),
(897, 'califica', '495', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:27:13.350258', '{\"id\": 495, \"factor\": 22, \"calificacion\": 10000, \"valor\": 0.110609}', '{\"id\": 495, \"factor\": 22, \"calificacion\": 10000, \"valor\": 0.1}', 10),
(898, 'califica', '496', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:27:13.410104', '{\"id\": 496, \"factor\": 23, \"calificacion\": 10000, \"valor\": 0.115124}', '{\"id\": 496, \"factor\": 23, \"calificacion\": 10000, \"valor\": 0.15}', 10),
(899, 'califica', '497', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:27:13.458097', '{\"id\": 497, \"factor\": 24, \"calificacion\": 10000, \"valor\": 0.119639}', '{\"id\": 497, \"factor\": 24, \"calificacion\": 10000, \"valor\": 0.2}', 10),
(900, 'califica', '498', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:27:13.518396', '{\"id\": 498, \"factor\": 25, \"calificacion\": 10000, \"valor\": 0.124153}', '{\"id\": 498, \"factor\": 25, \"calificacion\": 10000, \"valor\": 0.25}', 10),
(901, 'califica', '499', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:27:13.566085', '{\"id\": 499, \"factor\": 26, \"calificacion\": 10000, \"valor\": 0.128668}', '{\"id\": 499, \"factor\": 26, \"calificacion\": 10000, \"valor\": 0.3}', 10),
(902, 'califica', '500', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:27:13.614232', '{\"id\": 500, \"factor\": 27, \"calificacion\": 10000, \"valor\": 0.133183}', '{\"id\": 500, \"factor\": 27, \"calificacion\": 10000, \"valor\": 0.35}', 10),
(903, 'califica', '501', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:27:13.662170', '{\"id\": 501, \"factor\": 28, \"calificacion\": 10000, \"valor\": 0.137698}', '{\"id\": 501, \"factor\": 28, \"calificacion\": 10000, \"valor\": 0.4}', 10),
(904, 'califica', '502', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:27:13.710814', '{\"id\": 502, \"factor\": 29, \"calificacion\": 10000, \"valor\": 0.142212}', '{\"id\": 502, \"factor\": 29, \"calificacion\": 10000, \"valor\": 0.45}', 10),
(905, 'califica', '503', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:27:13.791566', '{\"id\": 503, \"factor\": 30, \"calificacion\": 10000, \"valor\": 0.146727}', '{\"id\": 503, \"factor\": 30, \"calificacion\": 10000, \"valor\": 0.5}', 10),
(906, 'califica', '504', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:27:13.854180', '{\"id\": 504, \"factor\": 31, \"calificacion\": 10000, \"valor\": 0.151242}', '{\"id\": 504, \"factor\": 31, \"calificacion\": 10000, \"valor\": 0.55}', 10),
(907, 'califica', '505', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:27:13.902148', '{\"id\": 505, \"factor\": 32, \"calificacion\": 10000, \"valor\": 0.155756}', '{\"id\": 505, \"factor\": 32, \"calificacion\": 10000, \"valor\": 0.6}', 10),
(908, 'califica', '506', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:27:13.950404', '{\"id\": 506, \"factor\": 33, \"calificacion\": 10000, \"valor\": 0.160271}', '{\"id\": 506, \"factor\": 33, \"calificacion\": 10000, \"valor\": 0.65}', 10),
(909, 'califica', '507', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:27:13.998252', '{\"id\": 507, \"factor\": 34, \"calificacion\": 10000, \"valor\": 0.164786}', '{\"id\": 507, \"factor\": 34, \"calificacion\": 10000, \"valor\": 0.7}', 10),
(910, 'califica', '508', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:27:14.046218', '{\"id\": 508, \"factor\": 35, \"calificacion\": 10000, \"valor\": 0.1693}', '{\"id\": 508, \"factor\": 35, \"calificacion\": 10000, \"valor\": 0.75}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(911, 'califica', '509', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:27:14.094186', '{\"id\": 509, \"factor\": 36, \"calificacion\": 10000, \"valor\": 0.173815}', '{\"id\": 509, \"factor\": 36, \"calificacion\": 10000, \"valor\": 0.8}', 10),
(912, 'califica', '510', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:27:14.142397', '{\"id\": 510, \"factor\": 37, \"calificacion\": 10000, \"valor\": 0.17833}', '{\"id\": 510, \"factor\": 37, \"calificacion\": 10000, \"valor\": 0.0}', 10),
(913, 'calificacion_tributaria', '10001', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:27:14.194021', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"Descripcion prueba 2\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"110\", \"valor_historico\": \"1200\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"Descripcion prueba 2\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"110\", \"valor_historico\": \"1200\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(914, 'califica', '511', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:27:14.262235', '{\"id\": 511, \"factor\": 8, \"calificacion\": 10001, \"valor\": 0.120614}', '{\"id\": 511, \"factor\": 8, \"calificacion\": 10001, \"valor\": 0.8}', 10),
(915, 'califica', '512', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:27:14.310905', '{\"id\": 512, \"factor\": 9, \"calificacion\": 10001, \"valor\": 0.131579}', '{\"id\": 512, \"factor\": 9, \"calificacion\": 10001, \"valor\": 0.9}', 10),
(916, 'califica', '513', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:27:14.360063', '{\"id\": 513, \"factor\": 10, \"calificacion\": 10001, \"valor\": 0.109649}', '{\"id\": 513, \"factor\": 10, \"calificacion\": 10001, \"valor\": 1.0}', 10),
(917, 'califica', '514', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:27:14.406094', '{\"id\": 514, \"factor\": 11, \"calificacion\": 10001, \"valor\": 0.041667}', '{\"id\": 514, \"factor\": 11, \"calificacion\": 10001, \"valor\": 0.05}', 10),
(918, 'califica', '515', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:27:14.454184', '{\"id\": 515, \"factor\": 12, \"calificacion\": 10001, \"valor\": 0.046053}', '{\"id\": 515, \"factor\": 12, \"calificacion\": 10001, \"valor\": 0.1}', 10),
(919, 'califica', '516', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:27:14.502233', '{\"id\": 516, \"factor\": 13, \"calificacion\": 10001, \"valor\": 0.050439}', '{\"id\": 516, \"factor\": 13, \"calificacion\": 10001, \"valor\": 0.15}', 10),
(920, 'califica', '517', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:27:14.550276', '{\"id\": 517, \"factor\": 14, \"calificacion\": 10001, \"valor\": 0.054825}', '{\"id\": 517, \"factor\": 14, \"calificacion\": 10001, \"valor\": 0.2}', 10),
(921, 'califica', '518', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:27:14.598373', '{\"id\": 518, \"factor\": 15, \"calificacion\": 10001, \"valor\": 0.066886}', '{\"id\": 518, \"factor\": 15, \"calificacion\": 10001, \"valor\": 0.25}', 10),
(922, 'califica', '519', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:27:14.646146', '{\"id\": 519, \"factor\": 16, \"calificacion\": 10001, \"valor\": 0.078947}', '{\"id\": 519, \"factor\": 16, \"calificacion\": 10001, \"valor\": 0.3}', 10),
(923, 'califica', '520', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:27:14.694210', '{\"id\": 520, \"factor\": 17, \"calificacion\": 10001, \"valor\": 0.091009}', '{\"id\": 520, \"factor\": 17, \"calificacion\": 10001, \"valor\": 0.35}', 10),
(924, 'califica', '521', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:27:14.754232', '{\"id\": 521, \"factor\": 18, \"calificacion\": 10001, \"valor\": 0.099781}', '{\"id\": 521, \"factor\": 18, \"calificacion\": 10001, \"valor\": 0.4}', 10),
(925, 'califica', '522', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:27:14.802237', '{\"id\": 522, \"factor\": 19, \"calificacion\": 10001, \"valor\": 0.108553}', '{\"id\": 522, \"factor\": 19, \"calificacion\": 10001, \"valor\": 0.45}', 10),
(926, 'califica', '523', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:27:14.850356', '{\"id\": 523, \"factor\": 20, \"calificacion\": 10001, \"valor\": 0.093202}', '{\"id\": 523, \"factor\": 20, \"calificacion\": 10001, \"valor\": 0.5}', 10),
(927, 'califica', '524', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:27:14.898239', '{\"id\": 524, \"factor\": 21, \"calificacion\": 10001, \"valor\": 0.083333}', '{\"id\": 524, \"factor\": 21, \"calificacion\": 10001, \"valor\": 0.55}', 10),
(928, 'califica', '525', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:27:14.946324', '{\"id\": 525, \"factor\": 22, \"calificacion\": 10001, \"valor\": 0.074013}', '{\"id\": 525, \"factor\": 22, \"calificacion\": 10001, \"valor\": 0.6}', 10),
(929, 'califica', '526', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:27:14.994261', '{\"id\": 526, \"factor\": 23, \"calificacion\": 10001, \"valor\": 0.059211}', '{\"id\": 526, \"factor\": 23, \"calificacion\": 10001, \"valor\": 0.65}', 10),
(930, 'califica', '527', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:27:15.042690', '{\"id\": 527, \"factor\": 24, \"calificacion\": 10001, \"valor\": 0.053728}', '{\"id\": 527, \"factor\": 24, \"calificacion\": 10001, \"valor\": 0.7}', 10),
(931, 'califica', '528', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:27:15.090420', '{\"id\": 528, \"factor\": 25, \"calificacion\": 10001, \"valor\": 0.048246}', '{\"id\": 528, \"factor\": 25, \"calificacion\": 10001, \"valor\": 0.75}', 10),
(932, 'califica', '529', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:27:15.138265', '{\"id\": 529, \"factor\": 26, \"calificacion\": 10001, \"valor\": 0.042763}', '{\"id\": 529, \"factor\": 26, \"calificacion\": 10001, \"valor\": 0.8}', 10),
(933, 'califica', '530', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:27:15.186403', '{\"id\": 530, \"factor\": 27, \"calificacion\": 10001, \"valor\": 0.038377}', '{\"id\": 530, \"factor\": 27, \"calificacion\": 10001, \"valor\": 0.85}', 10),
(934, 'califica', '531', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:27:15.234275', '{\"id\": 531, \"factor\": 28, \"calificacion\": 10001, \"valor\": 0.033991}', '{\"id\": 531, \"factor\": 28, \"calificacion\": 10001, \"valor\": 0.9}', 10),
(935, 'califica', '532', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:27:15.282344', '{\"id\": 532, \"factor\": 29, \"calificacion\": 10001, \"valor\": 0.029605}', '{\"id\": 532, \"factor\": 29, \"calificacion\": 10001, \"valor\": 0.95}', 10),
(936, 'califica', '533', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:27:15.330511', '{\"id\": 533, \"factor\": 30, \"calificacion\": 10001, \"valor\": 0.025219}', '{\"id\": 533, \"factor\": 30, \"calificacion\": 10001, \"valor\": 0.0}', 10),
(937, 'califica', '534', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:27:15.378376', '{\"id\": 534, \"factor\": 31, \"calificacion\": 10001, \"valor\": 0.020833}', '{\"id\": 534, \"factor\": 31, \"calificacion\": 10001, \"valor\": 0.05}', 10),
(938, 'califica', '535', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:27:15.426368', '{\"id\": 535, \"factor\": 32, \"calificacion\": 10001, \"valor\": 0.016447}', '{\"id\": 535, \"factor\": 32, \"calificacion\": 10001, \"valor\": 0.1}', 10),
(939, 'califica', '536', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:27:15.474378', '{\"id\": 536, \"factor\": 33, \"calificacion\": 10001, \"valor\": 0.012061}', '{\"id\": 536, \"factor\": 33, \"calificacion\": 10001, \"valor\": 0.15}', 10),
(940, 'califica', '537', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:27:15.522469', '{\"id\": 537, \"factor\": 34, \"calificacion\": 10001, \"valor\": 0.009868}', '{\"id\": 537, \"factor\": 34, \"calificacion\": 10001, \"valor\": 0.2}', 10),
(941, 'califica', '538', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:27:15.570343', '{\"id\": 538, \"factor\": 35, \"calificacion\": 10001, \"valor\": 0.007675}', '{\"id\": 538, \"factor\": 35, \"calificacion\": 10001, \"valor\": 0.25}', 10),
(942, 'califica', '539', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:27:15.618388', '{\"id\": 539, \"factor\": 36, \"calificacion\": 10001, \"valor\": 0.005482}', '{\"id\": 539, \"factor\": 36, \"calificacion\": 10001, \"valor\": 0.3}', 10),
(943, 'califica', '540', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:27:15.666339', '{\"id\": 540, \"factor\": 37, \"calificacion\": 10001, \"valor\": 0.003289}', '{\"id\": 540, \"factor\": 37, \"calificacion\": 10001, \"valor\": 0.0}', 10),
(944, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:27:15.737710', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"Descripcion prueba 3\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"120\", \"valor_historico\": \"1400\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"Descripcion prueba 3\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"120\", \"valor_historico\": \"1400\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(945, 'califica', '301', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:27:15.786558', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.2}', 10),
(946, 'califica', '302', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:27:15.834356', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.25}', 10),
(947, 'califica', '303', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:27:15.882398', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.3}', 10),
(948, 'califica', '304', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:27:15.931677', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.35}', 10),
(949, 'califica', '305', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:27:15.978428', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.4}', 10),
(950, 'califica', '306', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:27:16.026370', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.45}', 10),
(951, 'califica', '307', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:27:16.110679', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.5}', 10),
(952, 'califica', '308', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:27:16.158503', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.55}', 10),
(953, 'califica', '309', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:27:16.206435', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.6}', 10),
(954, 'califica', '310', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:27:16.254564', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.65}', 10),
(955, 'califica', '311', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:27:16.302417', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.7}', 10),
(956, 'califica', '312', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:27:16.350528', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.75}', 10),
(957, 'califica', '313', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:27:16.398494', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.8}', 10),
(958, 'califica', '314', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:27:16.446448', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.85}', 10),
(959, 'califica', '315', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:27:16.494448', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.9}', 10),
(960, 'califica', '316', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:27:16.542642', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.95}', 10),
(961, 'califica', '317', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:27:16.650581', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.0}', 10),
(962, 'califica', '318', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:27:16.710744', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.05}', 10),
(963, 'califica', '319', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:27:16.770598', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.1}', 10),
(964, 'califica', '320', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:27:16.830544', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.15}', 10),
(965, 'califica', '321', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:27:16.878526', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.2}', 10),
(966, 'califica', '322', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:27:16.986500', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.25}', 10),
(967, 'califica', '323', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:27:17.055502', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.3}', 10),
(968, 'califica', '324', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:27:17.106594', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.35}', 10),
(969, 'califica', '325', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:27:17.178639', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.4}', 10),
(970, 'califica', '326', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:27:17.226573', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.45}', 10),
(971, 'califica', '327', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:27:17.274617', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.5}', 10),
(972, 'califica', '328', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:27:17.322631', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.55}', 10),
(973, 'califica', '329', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:27:17.370519', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.6}', 10),
(974, 'califica', '330', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:27:17.418538', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.0}', 10),
(975, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:27:17.469226', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"Descripcion prueba 4\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"130\", \"valor_historico\": \"1600\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"Descripcion prueba 4\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"130\", \"valor_historico\": \"1600\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(976, 'califica', '391', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:27:17.514703', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.6}', 10),
(977, 'califica', '392', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:27:17.562594', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.65}', 10),
(978, 'califica', '393', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:27:17.610649', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.7}', 10),
(979, 'califica', '394', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:27:17.659084', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.75}', 10),
(980, 'califica', '395', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:27:17.706841', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.8}', 10),
(981, 'califica', '396', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:27:17.754708', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.85}', 10),
(982, 'califica', '397', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:27:17.823469', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.9}', 10),
(983, 'califica', '398', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:27:17.982775', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.95}', 10),
(984, 'califica', '399', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:27:18.162833', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.0}', 10),
(985, 'califica', '400', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:27:18.210796', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.05}', 10),
(986, 'califica', '401', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:27:18.260564', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.1}', 10),
(987, 'califica', '402', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:27:18.306686', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.15}', 10),
(988, 'califica', '403', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:27:18.354871', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.2}', 10),
(989, 'califica', '404', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:27:18.402658', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.25}', 10),
(990, 'califica', '405', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:27:18.450861', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.3}', 10),
(991, 'califica', '406', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:27:18.498824', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.35}', 10),
(992, 'califica', '407', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:27:18.546891', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.4}', 10),
(993, 'califica', '408', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:27:18.595929', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.45}', 10),
(994, 'califica', '409', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:27:18.643144', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.5}', 10),
(995, 'califica', '410', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:27:18.690893', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.55}', 10),
(996, 'califica', '411', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:27:18.738880', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.6}', 10),
(997, 'califica', '412', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:27:18.786890', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.65}', 10),
(998, 'califica', '413', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:27:18.834904', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.7}', 10),
(999, 'califica', '414', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:27:18.882908', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.75}', 10),
(1000, 'califica', '415', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:27:18.930917', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.8}', 10),
(1001, 'califica', '416', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:27:18.978831', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.85}', 10),
(1002, 'califica', '417', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:27:19.026915', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.9}', 10),
(1003, 'califica', '418', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:27:19.074826', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.95}', 10),
(1004, 'califica', '419', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:27:19.122819', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.0}', 10),
(1005, 'califica', '420', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:27:19.170941', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.0}', 10),
(1006, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:27:19.235530', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"Descripcion prueba 5\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"140\", \"valor_historico\": \"1800\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"Descripcion prueba 5\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"140\", \"valor_historico\": \"1800\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1007, 'califica', '421', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:27:19.278895', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.0}', 10),
(1008, 'califica', '422', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:27:19.326911', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.05}', 10),
(1009, 'califica', '423', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:27:19.374806', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.1}', 10),
(1010, 'califica', '424', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:27:19.422799', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.15}', 10),
(1011, 'califica', '425', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:27:19.470817', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.2}', 10),
(1012, 'califica', '426', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:27:19.518913', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.25}', 10),
(1013, 'califica', '427', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:27:19.566920', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.3}', 10),
(1014, 'califica', '428', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:27:19.689723', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.35}', 10),
(1015, 'califica', '429', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:27:19.734883', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.4}', 10),
(1016, 'califica', '430', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:27:19.782988', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.45}', 10),
(1017, 'califica', '431', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:27:19.831007', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.5}', 10),
(1018, 'califica', '432', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:27:19.878995', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.55}', 10),
(1019, 'califica', '433', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:27:19.928072', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.6}', 10),
(1020, 'califica', '434', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:27:19.975071', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.65}', 10),
(1021, 'califica', '435', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:27:20.043537', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.7}', 10),
(1022, 'califica', '436', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:27:20.094886', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.75}', 10),
(1023, 'califica', '437', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:27:20.143112', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.8}', 10),
(1024, 'califica', '438', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:27:20.215039', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.85}', 10),
(1025, 'califica', '439', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:27:20.262931', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.9}', 10),
(1026, 'califica', '440', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:27:20.311050', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.95}', 10),
(1027, 'califica', '441', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:27:20.359249', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.0}', 10),
(1028, 'califica', '442', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:27:20.406923', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.05}', 10),
(1029, 'califica', '443', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:27:20.455013', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.1}', 10),
(1030, 'califica', '444', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:27:20.504272', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.15}', 10),
(1031, 'califica', '445', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:27:20.551086', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.2}', 10),
(1032, 'califica', '446', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:27:20.598962', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.25}', 10),
(1033, 'califica', '447', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:27:20.646972', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.3}', 10),
(1034, 'califica', '448', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:27:20.695042', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.35}', 10),
(1035, 'califica', '449', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:27:20.743128', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.4}', 10),
(1036, 'califica', '450', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:27:20.791029', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.0}', 10),
(1037, 'calificacion_tributaria', '12502', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-17 10:31:27.114359', NULL, '{\"secuencia_evento\": 12502, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"Prueba\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 15000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1038, 'califica', '541', 'CREAR', 'Califica creado para factor 8', '2025-12-17 10:31:27.161448', NULL, '{\"id\": 541, \"factor\": 8, \"calificacion\": 12502, \"valor\": \"0.02052\"}', 10),
(1039, 'califica', '542', 'CREAR', 'Califica creado para factor 9', '2025-12-17 10:31:27.209648', NULL, '{\"id\": 542, \"factor\": 9, \"calificacion\": 12502, \"valor\": \"0.002052\"}', 10),
(1040, 'califica', '543', 'CREAR', 'Califica creado para factor 10', '2025-12-17 10:31:27.257493', NULL, '{\"id\": 543, \"factor\": 10, \"calificacion\": 12502, \"valor\": \"0.002052\"}', 10),
(1041, 'califica', '544', 'CREAR', 'Califica creado para factor 11', '2025-12-17 10:31:27.305546', NULL, '{\"id\": 544, \"factor\": 11, \"calificacion\": 12502, \"valor\": \"0.000205\"}', 10),
(1042, 'califica', '545', 'CREAR', 'Califica creado para factor 12', '2025-12-17 10:31:27.353537', NULL, '{\"id\": 545, \"factor\": 12, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1043, 'califica', '546', 'CREAR', 'Califica creado para factor 13', '2025-12-17 10:31:27.401510', NULL, '{\"id\": 546, \"factor\": 13, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1044, 'califica', '547', 'CREAR', 'Califica creado para factor 14', '2025-12-17 10:31:27.449507', NULL, '{\"id\": 547, \"factor\": 14, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1045, 'califica', '548', 'CREAR', 'Califica creado para factor 15', '2025-12-17 10:31:27.497552', NULL, '{\"id\": 548, \"factor\": 15, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1046, 'califica', '549', 'CREAR', 'Califica creado para factor 16', '2025-12-17 10:31:27.545550', NULL, '{\"id\": 549, \"factor\": 16, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1047, 'califica', '550', 'CREAR', 'Califica creado para factor 17', '2025-12-17 10:31:27.593474', NULL, '{\"id\": 550, \"factor\": 17, \"calificacion\": 12502, \"valor\": \"0.769427\"}', 10),
(1048, 'califica', '551', 'CREAR', 'Califica creado para factor 18', '2025-12-17 10:31:27.641505', NULL, '{\"id\": 551, \"factor\": 18, \"calificacion\": 12502, \"valor\": \"0.205744\"}', 10),
(1049, 'califica', '552', 'CREAR', 'Califica creado para factor 19', '2025-12-17 10:31:27.689593', NULL, '{\"id\": 552, \"factor\": 19, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1050, 'califica', '553', 'CREAR', 'Califica creado para factor 20', '2025-12-17 10:31:27.737516', NULL, '{\"id\": 553, \"factor\": 20, \"calificacion\": 12502, \"valor\": \"0.002108\"}', 10),
(1051, 'califica', '554', 'CREAR', 'Califica creado para factor 21', '2025-12-17 10:31:27.785582', NULL, '{\"id\": 554, \"factor\": 21, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1052, 'califica', '555', 'CREAR', 'Califica creado para factor 22', '2025-12-17 10:31:27.833601', NULL, '{\"id\": 555, \"factor\": 22, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1053, 'califica', '556', 'CREAR', 'Califica creado para factor 23', '2025-12-17 10:31:27.881729', NULL, '{\"id\": 556, \"factor\": 23, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1054, 'califica', '557', 'CREAR', 'Califica creado para factor 24', '2025-12-17 10:31:27.929659', NULL, '{\"id\": 557, \"factor\": 24, \"calificacion\": 12502, \"valor\": \"0.007709\"}', 10),
(1055, 'califica', '558', 'CREAR', 'Califica creado para factor 25', '2025-12-17 10:31:27.977578', NULL, '{\"id\": 558, \"factor\": 25, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1056, 'califica', '559', 'CREAR', 'Califica creado para factor 26', '2025-12-17 10:31:28.025584', NULL, '{\"id\": 559, \"factor\": 26, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1057, 'califica', '560', 'CREAR', 'Califica creado para factor 27', '2025-12-17 10:31:28.073747', NULL, '{\"id\": 560, \"factor\": 27, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1058, 'califica', '561', 'CREAR', 'Califica creado para factor 28', '2025-12-17 10:31:28.121680', NULL, '{\"id\": 561, \"factor\": 28, \"calificacion\": 12502, \"valor\": \"0.000211\"}', 10),
(1059, 'califica', '562', 'CREAR', 'Califica creado para factor 29', '2025-12-17 10:31:28.169705', NULL, '{\"id\": 562, \"factor\": 29, \"calificacion\": 12502, \"valor\": \"0.076938\"}', 10),
(1060, 'califica', '563', 'CREAR', 'Califica creado para factor 30', '2025-12-17 10:31:28.237842', NULL, '{\"id\": 563, \"factor\": 30, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1061, 'califica', '564', 'CREAR', 'Califica creado para factor 31', '2025-12-17 10:31:28.289530', NULL, '{\"id\": 564, \"factor\": 31, \"calificacion\": 12502, \"valor\": \"0.007687\"}', 10),
(1062, 'califica', '565', 'CREAR', 'Califica creado para factor 32', '2025-12-17 10:31:28.337700', NULL, '{\"id\": 565, \"factor\": 32, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1063, 'califica', '566', 'CREAR', 'Califica creado para factor 33', '2025-12-17 10:31:28.385670', NULL, '{\"id\": 566, \"factor\": 33, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1064, 'califica', '567', 'CREAR', 'Califica creado para factor 34', '2025-12-17 10:31:28.433591', NULL, '{\"id\": 567, \"factor\": 34, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1065, 'califica', '568', 'CREAR', 'Califica creado para factor 35', '2025-12-17 10:31:28.483761', NULL, '{\"id\": 568, \"factor\": 35, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1066, 'califica', '569', 'CREAR', 'Califica creado para factor 36', '2025-12-17 10:31:28.529697', NULL, '{\"id\": 569, \"factor\": 36, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1067, 'califica', '570', 'CREAR', 'Califica creado para factor 37', '2025-12-17 10:31:28.577637', NULL, '{\"id\": 570, \"factor\": 37, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1068, 'calificacion_tributaria', '12502', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 10:31:38.931151', NULL, '{\"secuencia_evento\": 12502, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"Prueba 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 15000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1069, 'califica', '541', 'EDITAR', 'Actualización del factor 8', '2025-12-17 10:31:38.962642', '{\"id\": 541, \"factor\": 8, \"calificacion\": 12502, \"valor\": 0.02052}', '{\"id\": 541, \"factor\": 8, \"calificacion\": 12502, \"valor\": \"0.02052\"}', 10),
(1070, 'califica', '542', 'EDITAR', 'Actualización del factor 9', '2025-12-17 10:31:38.984748', '{\"id\": 542, \"factor\": 9, \"calificacion\": 12502, \"valor\": 0.002052}', '{\"id\": 542, \"factor\": 9, \"calificacion\": 12502, \"valor\": \"0.002052\"}', 10),
(1071, 'califica', '543', 'EDITAR', 'Actualización del factor 10', '2025-12-17 10:31:39.008807', '{\"id\": 543, \"factor\": 10, \"calificacion\": 12502, \"valor\": 0.002052}', '{\"id\": 543, \"factor\": 10, \"calificacion\": 12502, \"valor\": \"0.002052\"}', 10),
(1072, 'califica', '544', 'EDITAR', 'Actualización del factor 11', '2025-12-17 10:31:39.032423', '{\"id\": 544, \"factor\": 11, \"calificacion\": 12502, \"valor\": 0.000205}', '{\"id\": 544, \"factor\": 11, \"calificacion\": 12502, \"valor\": \"0.000205\"}', 10),
(1073, 'califica', '545', 'EDITAR', 'Actualización del factor 12', '2025-12-17 10:31:39.056567', '{\"id\": 545, \"factor\": 12, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 545, \"factor\": 12, \"calificacion\": 12502, \"valor\": 0}', 10),
(1074, 'califica', '546', 'EDITAR', 'Actualización del factor 13', '2025-12-17 10:31:39.081015', '{\"id\": 546, \"factor\": 13, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 546, \"factor\": 13, \"calificacion\": 12502, \"valor\": 0}', 10),
(1075, 'califica', '547', 'EDITAR', 'Actualización del factor 14', '2025-12-17 10:31:39.104537', '{\"id\": 547, \"factor\": 14, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 547, \"factor\": 14, \"calificacion\": 12502, \"valor\": 0}', 10),
(1076, 'califica', '548', 'EDITAR', 'Actualización del factor 15', '2025-12-17 10:31:39.129271', '{\"id\": 548, \"factor\": 15, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 548, \"factor\": 15, \"calificacion\": 12502, \"valor\": 0}', 10),
(1077, 'califica', '549', 'EDITAR', 'Actualización del factor 16', '2025-12-17 10:31:39.152428', '{\"id\": 549, \"factor\": 16, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 549, \"factor\": 16, \"calificacion\": 12502, \"valor\": 0}', 10),
(1078, 'califica', '550', 'EDITAR', 'Actualización del factor 17', '2025-12-17 10:31:39.177878', '{\"id\": 550, \"factor\": 17, \"calificacion\": 12502, \"valor\": 0.769427}', '{\"id\": 550, \"factor\": 17, \"calificacion\": 12502, \"valor\": \"0.769427\"}', 10),
(1079, 'califica', '551', 'EDITAR', 'Actualización del factor 18', '2025-12-17 10:31:39.201012', '{\"id\": 551, \"factor\": 18, \"calificacion\": 12502, \"valor\": 0.205744}', '{\"id\": 551, \"factor\": 18, \"calificacion\": 12502, \"valor\": \"0.205744\"}', 10),
(1080, 'califica', '552', 'EDITAR', 'Actualización del factor 19', '2025-12-17 10:31:39.224184', '{\"id\": 552, \"factor\": 19, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 552, \"factor\": 19, \"calificacion\": 12502, \"valor\": 0}', 10),
(1081, 'califica', '553', 'EDITAR', 'Actualización del factor 20', '2025-12-17 10:31:39.248687', '{\"id\": 553, \"factor\": 20, \"calificacion\": 12502, \"valor\": 0.002108}', '{\"id\": 553, \"factor\": 20, \"calificacion\": 12502, \"valor\": \"0.002108\"}', 10),
(1082, 'califica', '554', 'EDITAR', 'Actualización del factor 21', '2025-12-17 10:31:39.277475', '{\"id\": 554, \"factor\": 21, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 554, \"factor\": 21, \"calificacion\": 12502, \"valor\": 0}', 10),
(1083, 'califica', '555', 'EDITAR', 'Actualización del factor 22', '2025-12-17 10:31:39.297126', '{\"id\": 555, \"factor\": 22, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 555, \"factor\": 22, \"calificacion\": 12502, \"valor\": 0}', 10),
(1084, 'califica', '556', 'EDITAR', 'Actualización del factor 23', '2025-12-17 10:31:39.320267', '{\"id\": 556, \"factor\": 23, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 556, \"factor\": 23, \"calificacion\": 12502, \"valor\": 0}', 10),
(1085, 'califica', '557', 'EDITAR', 'Actualización del factor 24', '2025-12-17 10:31:39.368678', '{\"id\": 557, \"factor\": 24, \"calificacion\": 12502, \"valor\": 0.007709}', '{\"id\": 557, \"factor\": 24, \"calificacion\": 12502, \"valor\": \"0.007709\"}', 10),
(1086, 'califica', '558', 'EDITAR', 'Actualización del factor 25', '2025-12-17 10:31:39.395111', '{\"id\": 558, \"factor\": 25, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 558, \"factor\": 25, \"calificacion\": 12502, \"valor\": 0}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(1087, 'califica', '559', 'EDITAR', 'Actualización del factor 26', '2025-12-17 10:31:39.416415', '{\"id\": 559, \"factor\": 26, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 559, \"factor\": 26, \"calificacion\": 12502, \"valor\": 0}', 10),
(1088, 'califica', '560', 'EDITAR', 'Actualización del factor 27', '2025-12-17 10:31:39.440264', '{\"id\": 560, \"factor\": 27, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 560, \"factor\": 27, \"calificacion\": 12502, \"valor\": 0}', 10),
(1089, 'califica', '561', 'EDITAR', 'Actualización del factor 28', '2025-12-17 10:31:39.464655', '{\"id\": 561, \"factor\": 28, \"calificacion\": 12502, \"valor\": 0.000211}', '{\"id\": 561, \"factor\": 28, \"calificacion\": 12502, \"valor\": \"0.000211\"}', 10),
(1090, 'califica', '562', 'EDITAR', 'Actualización del factor 29', '2025-12-17 10:31:39.496261', '{\"id\": 562, \"factor\": 29, \"calificacion\": 12502, \"valor\": 0.076938}', '{\"id\": 562, \"factor\": 29, \"calificacion\": 12502, \"valor\": \"0.076938\"}', 10),
(1091, 'califica', '563', 'EDITAR', 'Actualización del factor 30', '2025-12-17 10:31:39.524879', '{\"id\": 563, \"factor\": 30, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 563, \"factor\": 30, \"calificacion\": 12502, \"valor\": 0}', 10),
(1092, 'califica', '564', 'EDITAR', 'Actualización del factor 31', '2025-12-17 10:31:39.548761', '{\"id\": 564, \"factor\": 31, \"calificacion\": 12502, \"valor\": 0.007687}', '{\"id\": 564, \"factor\": 31, \"calificacion\": 12502, \"valor\": \"0.007687\"}', 10),
(1093, 'califica', '565', 'EDITAR', 'Actualización del factor 32', '2025-12-17 10:31:39.572571', '{\"id\": 565, \"factor\": 32, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 565, \"factor\": 32, \"calificacion\": 12502, \"valor\": 0}', 10),
(1094, 'califica', '566', 'EDITAR', 'Actualización del factor 33', '2025-12-17 10:31:39.596862', '{\"id\": 566, \"factor\": 33, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 566, \"factor\": 33, \"calificacion\": 12502, \"valor\": 0}', 10),
(1095, 'califica', '567', 'EDITAR', 'Actualización del factor 34', '2025-12-17 10:31:39.620413', '{\"id\": 567, \"factor\": 34, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 567, \"factor\": 34, \"calificacion\": 12502, \"valor\": 0}', 10),
(1096, 'califica', '568', 'EDITAR', 'Actualización del factor 35', '2025-12-17 10:31:39.668287', '{\"id\": 568, \"factor\": 35, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 568, \"factor\": 35, \"calificacion\": 12502, \"valor\": 0}', 10),
(1097, 'califica', '569', 'EDITAR', 'Actualización del factor 36', '2025-12-17 10:31:39.693287', '{\"id\": 569, \"factor\": 36, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 569, \"factor\": 36, \"calificacion\": 12502, \"valor\": 0}', 10),
(1098, 'califica', '570', 'EDITAR', 'Actualización del factor 37', '2025-12-17 10:31:39.716816', '{\"id\": 570, \"factor\": 37, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 570, \"factor\": 37, \"calificacion\": 12502, \"valor\": 0}', 10),
(1099, 'calificacion_tributaria', '12502', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:31:44.449322', '{\"secuencia_evento\": 12502, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"Prueba 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 15000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1100, 'calificacion_tributaria', '10000', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:31:48.061925', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"Descripcion prueba 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": 100, \"valor_historico\": 1000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1101, 'calificacion_tributaria', '10001', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:31:51.049752', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"Descripcion prueba 2\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": 110, \"valor_historico\": 1200, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1102, 'calificacion_tributaria', '10000', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:32:03.506388', NULL, '{\"secuencia_evento\": \"10000\", \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1103, 'califica', '571', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:32:03.557882', NULL, '{\"id\": 571, \"factor\": 8, \"calificacion\": \"10000\", \"valor\": 0.072235}', 10),
(1104, 'califica', '572', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:32:03.606776', NULL, '{\"id\": 572, \"factor\": 9, \"calificacion\": \"10000\", \"valor\": 0.092551}', 10),
(1105, 'califica', '573', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:32:03.653679', NULL, '{\"id\": 573, \"factor\": 10, \"calificacion\": \"10000\", \"valor\": 0.112867}', 10),
(1106, 'califica', '574', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:32:03.701770', NULL, '{\"id\": 574, \"factor\": 11, \"calificacion\": \"10000\", \"valor\": 0.069977}', 10),
(1107, 'califica', '575', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:32:03.769048', NULL, '{\"id\": 575, \"factor\": 12, \"calificacion\": \"10000\", \"valor\": 0.065463}', 10),
(1108, 'califica', '576', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:32:03.821977', NULL, '{\"id\": 576, \"factor\": 13, \"calificacion\": \"10000\", \"valor\": 0.060948}', 10),
(1109, 'califica', '577', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:32:03.869763', NULL, '{\"id\": 577, \"factor\": 14, \"calificacion\": \"10000\", \"valor\": 0.103837}', 10),
(1110, 'califica', '578', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:32:03.917778', NULL, '{\"id\": 578, \"factor\": 15, \"calificacion\": \"10000\", \"valor\": 0.085779}', 10),
(1111, 'califica', '579', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:32:03.965742', NULL, '{\"id\": 579, \"factor\": 16, \"calificacion\": \"10000\", \"valor\": 0.074492}', 10),
(1112, 'califica', '580', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:32:04.013787', NULL, '{\"id\": 580, \"factor\": 17, \"calificacion\": \"10000\", \"valor\": 0.079007}', 10),
(1113, 'califica', '581', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:32:04.061645', NULL, '{\"id\": 581, \"factor\": 18, \"calificacion\": \"10000\", \"valor\": 0.088036}', 10),
(1114, 'califica', '582', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:32:04.122062', NULL, '{\"id\": 582, \"factor\": 19, \"calificacion\": \"10000\", \"valor\": 0.094808}', 10),
(1115, 'califica', '583', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:32:04.169968', NULL, '{\"id\": 583, \"factor\": 20, \"calificacion\": \"10000\", \"valor\": 0.099323}', 10),
(1116, 'califica', '584', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:32:04.217916', NULL, '{\"id\": 584, \"factor\": 21, \"calificacion\": \"10000\", \"valor\": 0.106095}', 10),
(1117, 'califica', '585', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:32:04.265973', NULL, '{\"id\": 585, \"factor\": 22, \"calificacion\": \"10000\", \"valor\": 0.110609}', 10),
(1118, 'califica', '586', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:32:04.313933', NULL, '{\"id\": 586, \"factor\": 23, \"calificacion\": \"10000\", \"valor\": 0.115124}', 10),
(1119, 'califica', '587', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:32:04.363442', NULL, '{\"id\": 587, \"factor\": 24, \"calificacion\": \"10000\", \"valor\": 0.119639}', 10),
(1120, 'califica', '588', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:32:04.409919', NULL, '{\"id\": 588, \"factor\": 25, \"calificacion\": \"10000\", \"valor\": 0.124153}', 10),
(1121, 'califica', '589', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:32:04.457815', NULL, '{\"id\": 589, \"factor\": 26, \"calificacion\": \"10000\", \"valor\": 0.128668}', 10),
(1122, 'califica', '590', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:32:04.505822', NULL, '{\"id\": 590, \"factor\": 27, \"calificacion\": \"10000\", \"valor\": 0.133183}', 10),
(1123, 'califica', '591', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:32:04.553938', NULL, '{\"id\": 591, \"factor\": 28, \"calificacion\": \"10000\", \"valor\": 0.137698}', 10),
(1124, 'califica', '592', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:32:04.657586', NULL, '{\"id\": 592, \"factor\": 29, \"calificacion\": \"10000\", \"valor\": 0.142212}', 10),
(1125, 'califica', '593', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:32:04.710087', NULL, '{\"id\": 593, \"factor\": 30, \"calificacion\": \"10000\", \"valor\": 0.146727}', 10),
(1126, 'califica', '594', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:32:04.757992', NULL, '{\"id\": 594, \"factor\": 31, \"calificacion\": \"10000\", \"valor\": 0.151242}', 10),
(1127, 'califica', '595', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:32:04.805946', NULL, '{\"id\": 595, \"factor\": 32, \"calificacion\": \"10000\", \"valor\": 0.155756}', 10),
(1128, 'califica', '596', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:32:04.853850', NULL, '{\"id\": 596, \"factor\": 33, \"calificacion\": \"10000\", \"valor\": 0.160271}', 10),
(1129, 'califica', '597', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:32:04.901935', NULL, '{\"id\": 597, \"factor\": 34, \"calificacion\": \"10000\", \"valor\": 0.164786}', 10),
(1130, 'califica', '598', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:32:04.949993', NULL, '{\"id\": 598, \"factor\": 35, \"calificacion\": \"10000\", \"valor\": 0.1693}', 10),
(1131, 'califica', '599', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:32:04.997893', NULL, '{\"id\": 599, \"factor\": 36, \"calificacion\": \"10000\", \"valor\": 0.173815}', 10),
(1132, 'califica', '600', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:32:05.045875', NULL, '{\"id\": 600, \"factor\": 37, \"calificacion\": \"10000\", \"valor\": 0.17833}', 10),
(1133, 'calificacion_tributaria', '10001', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:32:05.094862', NULL, '{\"secuencia_evento\": \"10001\", \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1134, 'califica', '601', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:32:05.142513', NULL, '{\"id\": 601, \"factor\": 8, \"calificacion\": \"10001\", \"valor\": 0.120614}', 10),
(1135, 'califica', '602', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:32:05.190050', NULL, '{\"id\": 602, \"factor\": 9, \"calificacion\": \"10001\", \"valor\": 0.131579}', 10),
(1136, 'califica', '603', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:32:05.238149', NULL, '{\"id\": 603, \"factor\": 10, \"calificacion\": \"10001\", \"valor\": 0.109649}', 10),
(1137, 'califica', '604', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:32:05.285930', NULL, '{\"id\": 604, \"factor\": 11, \"calificacion\": \"10001\", \"valor\": 0.041667}', 10),
(1138, 'califica', '605', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:32:05.333945', NULL, '{\"id\": 605, \"factor\": 12, \"calificacion\": \"10001\", \"valor\": 0.046053}', 10),
(1139, 'califica', '606', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:32:05.381931', NULL, '{\"id\": 606, \"factor\": 13, \"calificacion\": \"10001\", \"valor\": 0.050439}', 10),
(1140, 'califica', '607', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:32:05.430009', NULL, '{\"id\": 607, \"factor\": 14, \"calificacion\": \"10001\", \"valor\": 0.054825}', 10),
(1141, 'califica', '608', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:32:05.477953', NULL, '{\"id\": 608, \"factor\": 15, \"calificacion\": \"10001\", \"valor\": 0.066886}', 10),
(1142, 'califica', '609', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:32:05.526056', NULL, '{\"id\": 609, \"factor\": 16, \"calificacion\": \"10001\", \"valor\": 0.078947}', 10),
(1143, 'califica', '610', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:32:05.574014', NULL, '{\"id\": 610, \"factor\": 17, \"calificacion\": \"10001\", \"valor\": 0.091009}', 10),
(1144, 'califica', '611', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:32:05.622080', NULL, '{\"id\": 611, \"factor\": 18, \"calificacion\": \"10001\", \"valor\": 0.099781}', 10),
(1145, 'califica', '612', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:32:05.670168', NULL, '{\"id\": 612, \"factor\": 19, \"calificacion\": \"10001\", \"valor\": 0.108553}', 10),
(1146, 'califica', '613', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:32:05.766236', NULL, '{\"id\": 613, \"factor\": 20, \"calificacion\": \"10001\", \"valor\": 0.093202}', 10),
(1147, 'califica', '614', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:32:05.814259', NULL, '{\"id\": 614, \"factor\": 21, \"calificacion\": \"10001\", \"valor\": 0.083333}', 10),
(1148, 'califica', '615', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:32:05.862176', NULL, '{\"id\": 615, \"factor\": 22, \"calificacion\": \"10001\", \"valor\": 0.074013}', 10),
(1149, 'califica', '616', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:32:05.910263', NULL, '{\"id\": 616, \"factor\": 23, \"calificacion\": \"10001\", \"valor\": 0.059211}', 10),
(1150, 'califica', '617', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:32:05.970314', NULL, '{\"id\": 617, \"factor\": 24, \"calificacion\": \"10001\", \"valor\": 0.053728}', 10),
(1151, 'califica', '618', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:32:06.017996', NULL, '{\"id\": 618, \"factor\": 25, \"calificacion\": \"10001\", \"valor\": 0.048246}', 10),
(1152, 'califica', '619', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:32:06.065928', NULL, '{\"id\": 619, \"factor\": 26, \"calificacion\": \"10001\", \"valor\": 0.042763}', 10),
(1153, 'califica', '620', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:32:06.114112', NULL, '{\"id\": 620, \"factor\": 27, \"calificacion\": \"10001\", \"valor\": 0.038377}', 10),
(1154, 'califica', '621', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:32:06.162122', NULL, '{\"id\": 621, \"factor\": 28, \"calificacion\": \"10001\", \"valor\": 0.033991}', 10),
(1155, 'califica', '622', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:32:06.210116', NULL, '{\"id\": 622, \"factor\": 29, \"calificacion\": \"10001\", \"valor\": 0.029605}', 10),
(1156, 'califica', '623', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:32:06.258033', NULL, '{\"id\": 623, \"factor\": 30, \"calificacion\": \"10001\", \"valor\": 0.025219}', 10),
(1157, 'califica', '624', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:32:06.363390', NULL, '{\"id\": 624, \"factor\": 31, \"calificacion\": \"10001\", \"valor\": 0.020833}', 10),
(1158, 'califica', '625', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:32:06.414065', NULL, '{\"id\": 625, \"factor\": 32, \"calificacion\": \"10001\", \"valor\": 0.016447}', 10),
(1159, 'califica', '626', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:32:06.498167', NULL, '{\"id\": 626, \"factor\": 33, \"calificacion\": \"10001\", \"valor\": 0.012061}', 10),
(1160, 'califica', '627', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:32:06.546170', NULL, '{\"id\": 627, \"factor\": 34, \"calificacion\": \"10001\", \"valor\": 0.009868}', 10),
(1161, 'califica', '628', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:32:06.594272', NULL, '{\"id\": 628, \"factor\": 35, \"calificacion\": \"10001\", \"valor\": 0.007675}', 10),
(1162, 'califica', '629', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:32:06.642501', NULL, '{\"id\": 629, \"factor\": 36, \"calificacion\": \"10001\", \"valor\": 0.005482}', 10),
(1163, 'califica', '630', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:32:06.690318', NULL, '{\"id\": 630, \"factor\": 37, \"calificacion\": \"10001\", \"valor\": 0.003289}', 10),
(1164, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:32:06.742032', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1165, 'califica', '301', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:32:06.810350', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.2}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', 10),
(1166, 'califica', '302', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:32:06.858385', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.25}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', 10),
(1167, 'califica', '303', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:32:06.906421', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.3}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', 10),
(1168, 'califica', '304', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:32:06.954334', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.35}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', 10),
(1169, 'califica', '305', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:32:07.002283', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.4}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', 10),
(1170, 'califica', '306', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:32:07.069633', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.45}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', 10),
(1171, 'califica', '307', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:32:07.122183', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.5}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', 10),
(1172, 'califica', '308', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:32:07.170222', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.55}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', 10),
(1173, 'califica', '309', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:32:07.218293', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.6}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', 10),
(1174, 'califica', '310', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:32:07.266311', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.65}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', 10),
(1175, 'califica', '311', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:32:07.314388', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.7}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', 10),
(1176, 'califica', '312', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:32:07.362134', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.75}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', 10),
(1177, 'califica', '313', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:32:07.410174', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.8}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', 10),
(1178, 'califica', '314', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:32:07.458285', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.85}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', 10),
(1179, 'califica', '315', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:32:07.506311', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.9}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', 10),
(1180, 'califica', '316', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:32:07.566685', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.95}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', 10),
(1181, 'califica', '317', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:32:07.626901', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.0}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', 10),
(1182, 'califica', '318', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:32:07.686714', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.05}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', 10),
(1183, 'califica', '319', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:32:07.746229', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.1}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', 10),
(1184, 'califica', '320', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:32:07.794190', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.15}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', 10),
(1185, 'califica', '321', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:32:07.866440', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.2}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', 10),
(1186, 'califica', '322', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:32:07.962435', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.25}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', 10),
(1187, 'califica', '323', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:32:08.022311', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.3}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', 10),
(1188, 'califica', '324', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:32:08.083462', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.35}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', 10),
(1189, 'califica', '325', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:32:08.130808', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.4}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', 10),
(1190, 'califica', '326', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:32:08.178343', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.45}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', 10),
(1191, 'califica', '327', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:32:08.226192', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.5}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', 10),
(1192, 'califica', '328', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:32:08.274430', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.55}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', 10),
(1193, 'califica', '329', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:32:08.322438', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.6}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', 10),
(1194, 'califica', '330', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:32:08.370540', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.0}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', 10),
(1195, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:32:08.420794', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1196, 'califica', '391', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:32:08.466373', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.6}', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', 10),
(1197, 'califica', '392', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:32:08.514444', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.65}', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', 10),
(1198, 'califica', '393', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:32:08.562364', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.7}', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', 10),
(1199, 'califica', '394', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:32:08.610328', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.75}', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', 10),
(1200, 'califica', '395', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:32:08.658332', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.8}', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', 10),
(1201, 'califica', '396', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:32:08.790363', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.85}', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', 10),
(1202, 'califica', '397', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:32:08.838287', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.9}', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', 10),
(1203, 'califica', '398', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:32:08.886316', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.95}', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', 10),
(1204, 'califica', '399', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:32:08.934353', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.0}', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', 10),
(1205, 'califica', '400', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:32:08.982371', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.05}', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', 10),
(1206, 'califica', '401', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:32:09.030220', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.1}', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', 10),
(1207, 'califica', '402', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:32:09.078306', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.15}', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', 10),
(1208, 'califica', '403', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:32:09.126326', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.2}', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', 10),
(1209, 'califica', '404', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:32:09.174296', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.25}', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', 10),
(1210, 'califica', '405', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:32:09.222333', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.3}', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', 10),
(1211, 'califica', '406', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:32:09.270312', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.35}', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', 10),
(1212, 'califica', '407', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:32:09.318308', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.4}', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', 10),
(1213, 'califica', '408', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:32:09.366336', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.45}', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', 10),
(1214, 'califica', '409', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:32:09.414358', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.5}', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', 10),
(1215, 'califica', '410', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:32:09.474580', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.55}', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', 10),
(1216, 'califica', '411', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:32:09.522566', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.6}', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', 10),
(1217, 'califica', '412', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:32:09.570431', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.65}', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', 10),
(1218, 'califica', '413', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:32:09.618339', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.7}', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', 10),
(1219, 'califica', '414', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:32:09.666386', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.75}', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', 10),
(1220, 'califica', '415', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:32:09.738491', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.8}', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', 10),
(1221, 'califica', '416', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:32:09.786494', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.85}', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', 10),
(1222, 'califica', '417', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:32:09.870661', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.9}', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', 10),
(1223, 'califica', '418', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:32:09.918465', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.95}', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', 10),
(1224, 'califica', '419', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:32:09.990442', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.0}', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', 10),
(1225, 'califica', '420', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:32:10.095910', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.0}', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', 10),
(1226, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:32:10.157526', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1227, 'califica', '421', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:32:10.206848', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.0}', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', 10),
(1228, 'califica', '422', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:32:10.254492', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.05}', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', 10),
(1229, 'califica', '423', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:32:10.302613', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.1}', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', 10),
(1230, 'califica', '424', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:32:10.350714', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.15}', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', 10),
(1231, 'califica', '425', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:32:10.398496', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.2}', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', 10),
(1232, 'califica', '426', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:32:10.446640', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.25}', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', 10),
(1233, 'califica', '427', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:32:10.494590', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.3}', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', 10),
(1234, 'califica', '428', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:32:10.542787', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.35}', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', 10),
(1235, 'califica', '429', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:32:10.590663', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.4}', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', 10),
(1236, 'califica', '430', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:32:10.638515', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.45}', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', 10),
(1237, 'califica', '431', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:32:10.686819', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.5}', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', 10),
(1238, 'califica', '432', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:32:10.734485', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.55}', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', 10),
(1239, 'califica', '433', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:32:10.782597', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.6}', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', 10),
(1240, 'califica', '434', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:32:10.830784', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.65}', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', 10),
(1241, 'califica', '435', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:32:10.878955', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.7}', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', 10),
(1242, 'califica', '436', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:32:10.926745', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.75}', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', 10),
(1243, 'califica', '437', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:32:10.974581', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.8}', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', 10),
(1244, 'califica', '438', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:32:11.022618', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.85}', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', 10),
(1245, 'califica', '439', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:32:11.070603', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.9}', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', 10),
(1246, 'califica', '440', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:32:11.118695', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.95}', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', 10),
(1247, 'califica', '441', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:32:11.166660', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.0}', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', 10),
(1248, 'califica', '442', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:32:11.214512', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.05}', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', 10),
(1249, 'califica', '443', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:32:11.262485', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.1}', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', 10),
(1250, 'califica', '444', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:32:11.310807', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.15}', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', 10),
(1251, 'califica', '445', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:32:11.380695', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.2}', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', 10),
(1252, 'califica', '446', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:32:11.562809', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.25}', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', 10),
(1253, 'califica', '447', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:32:11.610780', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.3}', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', 10),
(1254, 'califica', '448', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:32:11.659109', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.35}', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', 10),
(1255, 'califica', '449', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:32:11.706624', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.4}', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', 10),
(1256, 'califica', '450', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:32:11.754669', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.0}', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', 10),
(1257, 'calificacion_tributaria', '12502', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-17 10:34:06.284250', NULL, '{\"secuencia_evento\": 12502, \"mercado\": \"DERIVADOS FINANCIEROS\", \"instrumento\": 5, \"descripcion\": \"PRUEBA\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 150000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1258, 'califica', '631', 'CREAR', 'Califica creado para factor 8', '2025-12-17 10:34:06.330093', NULL, '{\"id\": 631, \"factor\": 8, \"calificacion\": 12502, \"valor\": \"0.011255\"}', 10),
(1259, 'califica', '632', 'CREAR', 'Califica creado para factor 9', '2025-12-17 10:34:06.378068', NULL, '{\"id\": 632, \"factor\": 9, \"calificacion\": 12502, \"valor\": \"0.42239\"}', 10),
(1260, 'califica', '633', 'CREAR', 'Califica creado para factor 10', '2025-12-17 10:34:06.426051', NULL, '{\"id\": 633, \"factor\": 10, \"calificacion\": 12502, \"valor\": \"0.096127\"}', 10),
(1261, 'califica', '634', 'CREAR', 'Califica creado para factor 11', '2025-12-17 10:34:06.474052', NULL, '{\"id\": 634, \"factor\": 11, \"calificacion\": 12502, \"valor\": \"0.35395\"}', 10),
(1262, 'califica', '635', 'CREAR', 'Califica creado para factor 12', '2025-12-17 10:34:06.521942', NULL, '{\"id\": 635, \"factor\": 12, \"calificacion\": 12502, \"valor\": \"0.035134\"}', 10),
(1263, 'califica', '636', 'CREAR', 'Califica creado para factor 13', '2025-12-17 10:34:06.569967', NULL, '{\"id\": 636, \"factor\": 13, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1264, 'califica', '637', 'CREAR', 'Califica creado para factor 14', '2025-12-17 10:34:06.618145', NULL, '{\"id\": 637, \"factor\": 14, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1265, 'califica', '638', 'CREAR', 'Califica creado para factor 15', '2025-12-17 10:34:06.666182', NULL, '{\"id\": 638, \"factor\": 15, \"calificacion\": 12502, \"valor\": \"0.035391\"}', 10),
(1266, 'califica', '639', 'CREAR', 'Califica creado para factor 16', '2025-12-17 10:34:06.714095', NULL, '{\"id\": 639, \"factor\": 16, \"calificacion\": 12502, \"valor\": \"0.042214\"}', 10),
(1267, 'califica', '640', 'CREAR', 'Califica creado para factor 17', '2025-12-17 10:34:06.762097', NULL, '{\"id\": 640, \"factor\": 17, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1268, 'califica', '641', 'CREAR', 'Califica creado para factor 18', '2025-12-17 10:34:06.810087', NULL, '{\"id\": 641, \"factor\": 18, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1269, 'califica', '642', 'CREAR', 'Califica creado para factor 19', '2025-12-17 10:34:06.858161', NULL, '{\"id\": 642, \"factor\": 19, \"calificacion\": 12502, \"valor\": \"0.003539\"}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(1270, 'califica', '643', 'CREAR', 'Califica creado para factor 20', '2025-12-17 10:34:06.906016', NULL, '{\"id\": 643, \"factor\": 20, \"calificacion\": 12502, \"valor\": \"0.355157\"}', 10),
(1271, 'califica', '644', 'CREAR', 'Califica creado para factor 21', '2025-12-17 10:34:06.954067', NULL, '{\"id\": 644, \"factor\": 21, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1272, 'califica', '645', 'CREAR', 'Califica creado para factor 22', '2025-12-17 10:34:07.002157', NULL, '{\"id\": 645, \"factor\": 22, \"calificacion\": 12502, \"valor\": \"0.352831\"}', 10),
(1273, 'califica', '646', 'CREAR', 'Califica creado para factor 23', '2025-12-17 10:34:07.068300', NULL, '{\"id\": 646, \"factor\": 23, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1274, 'califica', '647', 'CREAR', 'Califica creado para factor 24', '2025-12-17 10:34:07.122115', NULL, '{\"id\": 647, \"factor\": 24, \"calificacion\": 12502, \"valor\": \"0.422131\"}', 10),
(1275, 'califica', '648', 'CREAR', 'Califica creado para factor 25', '2025-12-17 10:34:07.170166', NULL, '{\"id\": 648, \"factor\": 25, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1276, 'califica', '649', 'CREAR', 'Califica creado para factor 26', '2025-12-17 10:34:07.218140', NULL, '{\"id\": 649, \"factor\": 26, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1277, 'califica', '650', 'CREAR', 'Califica creado para factor 27', '2025-12-17 10:34:07.266272', NULL, '{\"id\": 650, \"factor\": 27, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1278, 'califica', '651', 'CREAR', 'Califica creado para factor 28', '2025-12-17 10:34:07.314102', NULL, '{\"id\": 651, \"factor\": 28, \"calificacion\": 12502, \"valor\": \"0.012008\"}', 10),
(1279, 'califica', '652', 'CREAR', 'Califica creado para factor 29', '2025-12-17 10:34:07.362124', NULL, '{\"id\": 652, \"factor\": 29, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1280, 'califica', '653', 'CREAR', 'Califica creado para factor 30', '2025-12-17 10:34:07.410130', NULL, '{\"id\": 653, \"factor\": 30, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1281, 'califica', '654', 'CREAR', 'Califica creado para factor 31', '2025-12-17 10:34:07.458125', NULL, '{\"id\": 654, \"factor\": 31, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1282, 'califica', '655', 'CREAR', 'Califica creado para factor 32', '2025-12-17 10:34:07.506188', NULL, '{\"id\": 655, \"factor\": 32, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1283, 'califica', '656', 'CREAR', 'Califica creado para factor 33', '2025-12-17 10:34:07.554231', NULL, '{\"id\": 656, \"factor\": 33, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1284, 'califica', '657', 'CREAR', 'Califica creado para factor 34', '2025-12-17 10:34:07.602125', NULL, '{\"id\": 657, \"factor\": 34, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1285, 'califica', '658', 'CREAR', 'Califica creado para factor 35', '2025-12-17 10:34:07.650208', NULL, '{\"id\": 658, \"factor\": 35, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1286, 'califica', '659', 'CREAR', 'Califica creado para factor 36', '2025-12-17 10:34:07.698260', NULL, '{\"id\": 659, \"factor\": 36, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1287, 'califica', '660', 'CREAR', 'Califica creado para factor 37', '2025-12-17 10:34:07.770197', NULL, '{\"id\": 660, \"factor\": 37, \"calificacion\": 12502, \"valor\": \"0.0\"}', 10),
(1288, 'calificacion_tributaria', '12502', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 10:34:17.407422', NULL, '{\"secuencia_evento\": 12502, \"mercado\": \"DERIVADOS FINANCIEROS\", \"instrumento\": 5, \"descripcion\": \"PRUEBA 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 150000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1289, 'califica', '631', 'EDITAR', 'Actualización del factor 8', '2025-12-17 10:34:17.434140', '{\"id\": 631, \"factor\": 8, \"calificacion\": 12502, \"valor\": 0.011255}', '{\"id\": 631, \"factor\": 8, \"calificacion\": 12502, \"valor\": \"0.011255\"}', 10),
(1290, 'califica', '632', 'EDITAR', 'Actualización del factor 9', '2025-12-17 10:34:17.457194', '{\"id\": 632, \"factor\": 9, \"calificacion\": 12502, \"valor\": 0.42239}', '{\"id\": 632, \"factor\": 9, \"calificacion\": 12502, \"valor\": \"0.42239\"}', 10),
(1291, 'califica', '633', 'EDITAR', 'Actualización del factor 10', '2025-12-17 10:34:17.481731', '{\"id\": 633, \"factor\": 10, \"calificacion\": 12502, \"valor\": 0.096127}', '{\"id\": 633, \"factor\": 10, \"calificacion\": 12502, \"valor\": \"0.096127\"}', 10),
(1292, 'califica', '634', 'EDITAR', 'Actualización del factor 11', '2025-12-17 10:34:17.505299', '{\"id\": 634, \"factor\": 11, \"calificacion\": 12502, \"valor\": 0.35395}', '{\"id\": 634, \"factor\": 11, \"calificacion\": 12502, \"valor\": \"0.35395\"}', 10),
(1293, 'califica', '635', 'EDITAR', 'Actualización del factor 12', '2025-12-17 10:34:17.529051', '{\"id\": 635, \"factor\": 12, \"calificacion\": 12502, \"valor\": 0.035134}', '{\"id\": 635, \"factor\": 12, \"calificacion\": 12502, \"valor\": \"0.035134\"}', 10),
(1294, 'califica', '636', 'EDITAR', 'Actualización del factor 13', '2025-12-17 10:34:17.553658', '{\"id\": 636, \"factor\": 13, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 636, \"factor\": 13, \"calificacion\": 12502, \"valor\": 0}', 10),
(1295, 'califica', '637', 'EDITAR', 'Actualización del factor 14', '2025-12-17 10:34:17.578278', '{\"id\": 637, \"factor\": 14, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 637, \"factor\": 14, \"calificacion\": 12502, \"valor\": 0}', 10),
(1296, 'califica', '638', 'EDITAR', 'Actualización del factor 15', '2025-12-17 10:34:17.601475', '{\"id\": 638, \"factor\": 15, \"calificacion\": 12502, \"valor\": 0.035391}', '{\"id\": 638, \"factor\": 15, \"calificacion\": 12502, \"valor\": \"0.035391\"}', 10),
(1297, 'califica', '639', 'EDITAR', 'Actualización del factor 16', '2025-12-17 10:34:17.625110', '{\"id\": 639, \"factor\": 16, \"calificacion\": 12502, \"valor\": 0.042214}', '{\"id\": 639, \"factor\": 16, \"calificacion\": 12502, \"valor\": \"0.042214\"}', 10),
(1298, 'califica', '640', 'EDITAR', 'Actualización del factor 17', '2025-12-17 10:34:17.667567', '{\"id\": 640, \"factor\": 17, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 640, \"factor\": 17, \"calificacion\": 12502, \"valor\": 0}', 10),
(1299, 'califica', '641', 'EDITAR', 'Actualización del factor 18', '2025-12-17 10:34:17.697077', '{\"id\": 641, \"factor\": 18, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 641, \"factor\": 18, \"calificacion\": 12502, \"valor\": 0}', 10),
(1300, 'califica', '642', 'EDITAR', 'Actualización del factor 19', '2025-12-17 10:34:17.721614', '{\"id\": 642, \"factor\": 19, \"calificacion\": 12502, \"valor\": 0.003539}', '{\"id\": 642, \"factor\": 19, \"calificacion\": 12502, \"valor\": \"0.003539\"}', 10),
(1301, 'califica', '643', 'EDITAR', 'Actualización del factor 20', '2025-12-17 10:34:17.745676', '{\"id\": 643, \"factor\": 20, \"calificacion\": 12502, \"valor\": 0.355157}', '{\"id\": 643, \"factor\": 20, \"calificacion\": 12502, \"valor\": \"0.355157\"}', 10),
(1302, 'califica', '644', 'EDITAR', 'Actualización del factor 21', '2025-12-17 10:34:17.769617', '{\"id\": 644, \"factor\": 21, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 644, \"factor\": 21, \"calificacion\": 12502, \"valor\": 0}', 10),
(1303, 'califica', '645', 'EDITAR', 'Actualización del factor 22', '2025-12-17 10:34:17.793723', '{\"id\": 645, \"factor\": 22, \"calificacion\": 12502, \"valor\": 0.352831}', '{\"id\": 645, \"factor\": 22, \"calificacion\": 12502, \"valor\": \"0.352831\"}', 10),
(1304, 'califica', '646', 'EDITAR', 'Actualización del factor 23', '2025-12-17 10:34:17.817522', '{\"id\": 646, \"factor\": 23, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 646, \"factor\": 23, \"calificacion\": 12502, \"valor\": 0}', 10),
(1305, 'califica', '647', 'EDITAR', 'Actualización del factor 24', '2025-12-17 10:34:17.841110', '{\"id\": 647, \"factor\": 24, \"calificacion\": 12502, \"valor\": 0.422131}', '{\"id\": 647, \"factor\": 24, \"calificacion\": 12502, \"valor\": \"0.422131\"}', 10),
(1306, 'califica', '648', 'EDITAR', 'Actualización del factor 25', '2025-12-17 10:34:17.865154', '{\"id\": 648, \"factor\": 25, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 648, \"factor\": 25, \"calificacion\": 12502, \"valor\": 0}', 10),
(1307, 'califica', '649', 'EDITAR', 'Actualización del factor 26', '2025-12-17 10:34:17.889059', '{\"id\": 649, \"factor\": 26, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 649, \"factor\": 26, \"calificacion\": 12502, \"valor\": 0}', 10),
(1308, 'califica', '650', 'EDITAR', 'Actualización del factor 27', '2025-12-17 10:34:17.913481', '{\"id\": 650, \"factor\": 27, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 650, \"factor\": 27, \"calificacion\": 12502, \"valor\": 0}', 10),
(1309, 'califica', '651', 'EDITAR', 'Actualización del factor 28', '2025-12-17 10:34:17.949107', '{\"id\": 651, \"factor\": 28, \"calificacion\": 12502, \"valor\": 0.012008}', '{\"id\": 651, \"factor\": 28, \"calificacion\": 12502, \"valor\": \"0.012008\"}', 10),
(1310, 'califica', '652', 'EDITAR', 'Actualización del factor 29', '2025-12-17 10:34:17.973200', '{\"id\": 652, \"factor\": 29, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 652, \"factor\": 29, \"calificacion\": 12502, \"valor\": 0}', 10),
(1311, 'califica', '653', 'EDITAR', 'Actualización del factor 30', '2025-12-17 10:34:17.997085', '{\"id\": 653, \"factor\": 30, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 653, \"factor\": 30, \"calificacion\": 12502, \"valor\": 0}', 10),
(1312, 'califica', '654', 'EDITAR', 'Actualización del factor 31', '2025-12-17 10:34:18.022194', '{\"id\": 654, \"factor\": 31, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 654, \"factor\": 31, \"calificacion\": 12502, \"valor\": 0}', 10),
(1313, 'califica', '655', 'EDITAR', 'Actualización del factor 32', '2025-12-17 10:34:18.045343', '{\"id\": 655, \"factor\": 32, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 655, \"factor\": 32, \"calificacion\": 12502, \"valor\": 0}', 10),
(1314, 'califica', '656', 'EDITAR', 'Actualización del factor 33', '2025-12-17 10:34:18.070206', '{\"id\": 656, \"factor\": 33, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 656, \"factor\": 33, \"calificacion\": 12502, \"valor\": 0}', 10),
(1315, 'califica', '657', 'EDITAR', 'Actualización del factor 34', '2025-12-17 10:34:18.093310', '{\"id\": 657, \"factor\": 34, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 657, \"factor\": 34, \"calificacion\": 12502, \"valor\": 0}', 10),
(1316, 'califica', '658', 'EDITAR', 'Actualización del factor 35', '2025-12-17 10:34:18.117264', '{\"id\": 658, \"factor\": 35, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 658, \"factor\": 35, \"calificacion\": 12502, \"valor\": 0}', 10),
(1317, 'califica', '659', 'EDITAR', 'Actualización del factor 36', '2025-12-17 10:34:18.141081', '{\"id\": 659, \"factor\": 36, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 659, \"factor\": 36, \"calificacion\": 12502, \"valor\": 0}', 10),
(1318, 'califica', '660', 'EDITAR', 'Actualización del factor 37', '2025-12-17 10:34:18.165086', '{\"id\": 660, \"factor\": 37, \"calificacion\": 12502, \"valor\": 0.0}', '{\"id\": 660, \"factor\": 37, \"calificacion\": 12502, \"valor\": 0}', 10),
(1319, 'calificacion_tributaria', '12502', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:34:23.873584', '{\"secuencia_evento\": 12502, \"mercado\": \"DERIVADOS FINANCIEROS\", \"instrumento\": 5, \"descripcion\": \"PRUEBA 2\", \"fecha_pago\": \"2025-12-25\", \"dividendo\": 2, \"valor_historico\": 150000, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1320, 'calificacion_tributaria', '10000', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:34:28.115154', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": 1250000, \"valor_historico\": 8700000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1321, 'calificacion_tributaria', '10001', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:34:30.831267', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": 980000, \"valor_historico\": 6500000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1322, 'calificacion_tributaria', '10000', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:34:41.731255', NULL, '{\"secuencia_evento\": \"10000\", \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1323, 'califica', '661', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:34:41.778340', NULL, '{\"id\": 661, \"factor\": 8, \"calificacion\": \"10000\", \"valor\": 0.072235}', 10),
(1324, 'califica', '662', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:34:41.826251', NULL, '{\"id\": 662, \"factor\": 9, \"calificacion\": \"10000\", \"valor\": 0.092551}', 10),
(1325, 'califica', '663', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:34:41.874249', NULL, '{\"id\": 663, \"factor\": 10, \"calificacion\": \"10000\", \"valor\": 0.112867}', 10),
(1326, 'califica', '664', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:34:41.922287', NULL, '{\"id\": 664, \"factor\": 11, \"calificacion\": \"10000\", \"valor\": 0.069977}', 10),
(1327, 'califica', '665', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:34:41.970286', NULL, '{\"id\": 665, \"factor\": 12, \"calificacion\": \"10000\", \"valor\": 0.065463}', 10),
(1328, 'califica', '666', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:34:42.018415', NULL, '{\"id\": 666, \"factor\": 13, \"calificacion\": \"10000\", \"valor\": 0.060948}', 10),
(1329, 'califica', '667', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:34:42.066250', NULL, '{\"id\": 667, \"factor\": 14, \"calificacion\": \"10000\", \"valor\": 0.103837}', 10),
(1330, 'califica', '668', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:34:42.114339', NULL, '{\"id\": 668, \"factor\": 15, \"calificacion\": \"10000\", \"valor\": 0.085779}', 10),
(1331, 'califica', '669', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:34:42.162298', NULL, '{\"id\": 669, \"factor\": 16, \"calificacion\": \"10000\", \"valor\": 0.074492}', 10),
(1332, 'califica', '670', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:34:42.210273', NULL, '{\"id\": 670, \"factor\": 17, \"calificacion\": \"10000\", \"valor\": 0.079007}', 10),
(1333, 'califica', '671', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:34:42.258308', NULL, '{\"id\": 671, \"factor\": 18, \"calificacion\": \"10000\", \"valor\": 0.088036}', 10),
(1334, 'califica', '672', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:34:42.306379', NULL, '{\"id\": 672, \"factor\": 19, \"calificacion\": \"10000\", \"valor\": 0.094808}', 10),
(1335, 'califica', '673', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:34:42.354344', NULL, '{\"id\": 673, \"factor\": 20, \"calificacion\": \"10000\", \"valor\": 0.099323}', 10),
(1336, 'califica', '674', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:34:42.403504', NULL, '{\"id\": 674, \"factor\": 21, \"calificacion\": \"10000\", \"valor\": 0.106095}', 10),
(1337, 'califica', '675', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:34:42.468735', NULL, '{\"id\": 675, \"factor\": 22, \"calificacion\": \"10000\", \"valor\": 0.110609}', 10),
(1338, 'califica', '676', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:34:42.522323', NULL, '{\"id\": 676, \"factor\": 23, \"calificacion\": \"10000\", \"valor\": 0.115124}', 10),
(1339, 'califica', '677', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:34:42.570471', NULL, '{\"id\": 677, \"factor\": 24, \"calificacion\": \"10000\", \"valor\": 0.119639}', 10),
(1340, 'califica', '678', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:34:42.618573', NULL, '{\"id\": 678, \"factor\": 25, \"calificacion\": \"10000\", \"valor\": 0.124153}', 10),
(1341, 'califica', '679', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:34:42.666418', NULL, '{\"id\": 679, \"factor\": 26, \"calificacion\": \"10000\", \"valor\": 0.128668}', 10),
(1342, 'califica', '680', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:34:42.714385', NULL, '{\"id\": 680, \"factor\": 27, \"calificacion\": \"10000\", \"valor\": 0.133183}', 10),
(1343, 'califica', '681', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:34:42.762391', NULL, '{\"id\": 681, \"factor\": 28, \"calificacion\": \"10000\", \"valor\": 0.137698}', 10),
(1344, 'califica', '682', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:34:42.810402', NULL, '{\"id\": 682, \"factor\": 29, \"calificacion\": \"10000\", \"valor\": 0.142212}', 10),
(1345, 'califica', '683', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:34:42.858404', NULL, '{\"id\": 683, \"factor\": 30, \"calificacion\": \"10000\", \"valor\": 0.146727}', 10),
(1346, 'califica', '684', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:34:42.919080', NULL, '{\"id\": 684, \"factor\": 31, \"calificacion\": \"10000\", \"valor\": 0.151242}', 10),
(1347, 'califica', '685', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:34:42.967642', NULL, '{\"id\": 685, \"factor\": 32, \"calificacion\": \"10000\", \"valor\": 0.155756}', 10),
(1348, 'califica', '686', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:34:43.014464', NULL, '{\"id\": 686, \"factor\": 33, \"calificacion\": \"10000\", \"valor\": 0.160271}', 10),
(1349, 'califica', '687', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:34:43.062424', NULL, '{\"id\": 687, \"factor\": 34, \"calificacion\": \"10000\", \"valor\": 0.164786}', 10),
(1350, 'califica', '688', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:34:43.111735', NULL, '{\"id\": 688, \"factor\": 35, \"calificacion\": \"10000\", \"valor\": 0.1693}', 10),
(1351, 'califica', '689', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:34:43.158786', NULL, '{\"id\": 689, \"factor\": 36, \"calificacion\": \"10000\", \"valor\": 0.173815}', 10),
(1352, 'califica', '690', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:34:43.206785', NULL, '{\"id\": 690, \"factor\": 37, \"calificacion\": \"10000\", \"valor\": 0.17833}', 10),
(1353, 'calificacion_tributaria', '10001', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:34:43.280469', NULL, '{\"secuencia_evento\": \"10001\", \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1354, 'califica', '691', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:34:43.326788', NULL, '{\"id\": 691, \"factor\": 8, \"calificacion\": \"10001\", \"valor\": 0.120614}', 10),
(1355, 'califica', '692', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:34:43.374587', NULL, '{\"id\": 692, \"factor\": 9, \"calificacion\": \"10001\", \"valor\": 0.131579}', 10),
(1356, 'califica', '693', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:34:43.422519', NULL, '{\"id\": 693, \"factor\": 10, \"calificacion\": \"10001\", \"valor\": 0.109649}', 10),
(1357, 'califica', '694', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:34:43.471678', NULL, '{\"id\": 694, \"factor\": 11, \"calificacion\": \"10001\", \"valor\": 0.041667}', 10),
(1358, 'califica', '695', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:34:43.530614', NULL, '{\"id\": 695, \"factor\": 12, \"calificacion\": \"10001\", \"valor\": 0.046053}', 10),
(1359, 'califica', '696', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:34:43.578648', NULL, '{\"id\": 696, \"factor\": 13, \"calificacion\": \"10001\", \"valor\": 0.050439}', 10),
(1360, 'califica', '697', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:34:43.626566', NULL, '{\"id\": 697, \"factor\": 14, \"calificacion\": \"10001\", \"valor\": 0.054825}', 10),
(1361, 'califica', '698', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:34:43.674702', NULL, '{\"id\": 698, \"factor\": 15, \"calificacion\": \"10001\", \"valor\": 0.066886}', 10),
(1362, 'califica', '699', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:34:43.722519', NULL, '{\"id\": 699, \"factor\": 16, \"calificacion\": \"10001\", \"valor\": 0.078947}', 10),
(1363, 'califica', '700', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:34:43.770451', NULL, '{\"id\": 700, \"factor\": 17, \"calificacion\": \"10001\", \"valor\": 0.091009}', 10),
(1364, 'califica', '701', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:34:43.818705', NULL, '{\"id\": 701, \"factor\": 18, \"calificacion\": \"10001\", \"valor\": 0.099781}', 10),
(1365, 'califica', '702', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:34:43.866564', NULL, '{\"id\": 702, \"factor\": 19, \"calificacion\": \"10001\", \"valor\": 0.108553}', 10),
(1366, 'califica', '703', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:34:43.914517', NULL, '{\"id\": 703, \"factor\": 20, \"calificacion\": \"10001\", \"valor\": 0.093202}', 10),
(1367, 'califica', '704', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:34:44.058536', NULL, '{\"id\": 704, \"factor\": 21, \"calificacion\": \"10001\", \"valor\": 0.083333}', 10),
(1368, 'califica', '705', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:34:44.178693', NULL, '{\"id\": 705, \"factor\": 22, \"calificacion\": \"10001\", \"valor\": 0.074013}', 10),
(1369, 'califica', '706', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:34:44.226460', NULL, '{\"id\": 706, \"factor\": 23, \"calificacion\": \"10001\", \"valor\": 0.059211}', 10),
(1370, 'califica', '707', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:34:44.274493', NULL, '{\"id\": 707, \"factor\": 24, \"calificacion\": \"10001\", \"valor\": 0.053728}', 10),
(1371, 'califica', '708', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:34:44.323953', NULL, '{\"id\": 708, \"factor\": 25, \"calificacion\": \"10001\", \"valor\": 0.048246}', 10),
(1372, 'califica', '709', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:34:44.370595', NULL, '{\"id\": 709, \"factor\": 26, \"calificacion\": \"10001\", \"valor\": 0.042763}', 10),
(1373, 'califica', '710', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:34:44.418669', NULL, '{\"id\": 710, \"factor\": 27, \"calificacion\": \"10001\", \"valor\": 0.038377}', 10),
(1374, 'califica', '711', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:34:44.466606', NULL, '{\"id\": 711, \"factor\": 28, \"calificacion\": \"10001\", \"valor\": 0.033991}', 10),
(1375, 'califica', '712', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:34:44.514559', NULL, '{\"id\": 712, \"factor\": 29, \"calificacion\": \"10001\", \"valor\": 0.029605}', 10),
(1376, 'califica', '713', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:34:44.579978', NULL, '{\"id\": 713, \"factor\": 30, \"calificacion\": \"10001\", \"valor\": 0.025219}', 10),
(1377, 'califica', '714', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:34:44.634639', NULL, '{\"id\": 714, \"factor\": 31, \"calificacion\": \"10001\", \"valor\": 0.020833}', 10),
(1378, 'califica', '715', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:34:44.682476', NULL, '{\"id\": 715, \"factor\": 32, \"calificacion\": \"10001\", \"valor\": 0.016447}', 10),
(1379, 'califica', '716', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:34:44.742656', NULL, '{\"id\": 716, \"factor\": 33, \"calificacion\": \"10001\", \"valor\": 0.012061}', 10),
(1380, 'califica', '717', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:34:44.790592', NULL, '{\"id\": 717, \"factor\": 34, \"calificacion\": \"10001\", \"valor\": 0.009868}', 10),
(1381, 'califica', '718', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:34:44.874630', NULL, '{\"id\": 718, \"factor\": 35, \"calificacion\": \"10001\", \"valor\": 0.007675}', 10),
(1382, 'califica', '719', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:34:44.922632', NULL, '{\"id\": 719, \"factor\": 36, \"calificacion\": \"10001\", \"valor\": 0.005482}', 10),
(1383, 'califica', '720', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:34:44.970634', NULL, '{\"id\": 720, \"factor\": 37, \"calificacion\": \"10001\", \"valor\": 0.003289}', 10),
(1384, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:34:44.999594', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1385, 'califica', '301', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:34:45.022793', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', 10),
(1386, 'califica', '302', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:34:45.045991', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', 10),
(1387, 'califica', '303', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:34:45.069931', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', 10),
(1388, 'califica', '304', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:34:45.093795', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', 10),
(1389, 'califica', '305', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:34:45.117569', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', 10),
(1390, 'califica', '306', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:34:45.141688', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', 10),
(1391, 'califica', '307', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:34:45.165815', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', 10),
(1392, 'califica', '308', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:34:45.189533', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', 10),
(1393, 'califica', '309', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:34:45.213526', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', 10),
(1394, 'califica', '310', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:34:45.238817', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', 10),
(1395, 'califica', '311', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:34:45.261716', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', 10),
(1396, 'califica', '312', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:34:45.286260', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', 10),
(1397, 'califica', '313', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:34:45.309435', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', 10),
(1398, 'califica', '314', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:34:45.333579', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', 10),
(1399, 'califica', '315', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:34:45.357671', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', 10),
(1400, 'califica', '316', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:34:45.382037', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', 10),
(1401, 'califica', '317', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:34:45.406162', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', 10),
(1402, 'califica', '318', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:34:45.430047', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', 10),
(1403, 'califica', '319', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:34:45.454529', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', 10),
(1404, 'califica', '320', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:34:45.479305', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', 10),
(1405, 'califica', '321', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:34:45.502142', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', 10),
(1406, 'califica', '322', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:34:45.525582', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', 10),
(1407, 'califica', '323', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:34:45.549853', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', 10),
(1408, 'califica', '324', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:34:45.574000', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', 10),
(1409, 'califica', '325', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:34:45.598007', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', 10),
(1410, 'califica', '326', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:34:45.632048', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', 10),
(1411, 'califica', '327', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:34:45.657592', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', 10),
(1412, 'califica', '328', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:34:45.681711', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', 10),
(1413, 'califica', '329', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:34:45.705933', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', 10),
(1414, 'califica', '330', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:34:45.730016', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', 10),
(1415, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:34:45.756769', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1416, 'califica', '391', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:34:45.803643', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', 10),
(1417, 'califica', '392', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:34:45.837366', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', 10),
(1418, 'califica', '393', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:34:45.886409', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', 10),
(1419, 'califica', '394', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:34:45.910174', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', 10),
(1420, 'califica', '395', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:34:45.946132', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', 10),
(1421, 'califica', '396', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:34:45.994343', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', 10),
(1422, 'califica', '397', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:34:46.018040', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', 10),
(1423, 'califica', '398', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:34:46.053859', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', 10),
(1424, 'califica', '399', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:34:46.078492', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', 10),
(1425, 'califica', '400', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:34:46.102184', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', 10),
(1426, 'califica', '401', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:34:46.125916', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', 10),
(1427, 'califica', '402', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:34:46.173846', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', 10),
(1428, 'califica', '403', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:34:46.198110', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', 10),
(1429, 'califica', '404', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:34:46.245724', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', 10),
(1430, 'califica', '405', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:34:46.269939', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', 10),
(1431, 'califica', '406', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:34:46.306152', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', 10),
(1432, 'califica', '407', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:34:46.329841', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', 10),
(1433, 'califica', '408', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:34:46.354405', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', 10),
(1434, 'califica', '409', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:34:46.378218', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', 10),
(1435, 'califica', '410', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:34:46.401975', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', 10),
(1436, 'califica', '411', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:34:46.426192', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', 10),
(1437, 'califica', '412', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:34:46.558076', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', 10),
(1438, 'califica', '413', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:34:46.690225', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', 10),
(1439, 'califica', '414', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:34:46.725844', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', 10),
(1440, 'califica', '415', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:34:46.750446', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', 10),
(1441, 'califica', '416', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:34:46.773938', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', 10),
(1442, 'califica', '417', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:34:46.797671', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', 10),
(1443, 'califica', '418', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:34:46.822348', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', 10),
(1444, 'califica', '419', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:34:46.845997', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', 10),
(1445, 'califica', '420', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:34:46.870255', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', 10),
(1446, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:34:46.896571', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1447, 'califica', '421', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:34:46.918310', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', 10),
(1448, 'califica', '422', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:34:46.942355', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', 10),
(1449, 'califica', '423', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:34:46.990196', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', 10),
(1450, 'califica', '424', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:34:47.013863', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', 10),
(1451, 'califica', '425', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:34:47.055572', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', 10),
(1452, 'califica', '426', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:34:47.086568', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', 10),
(1453, 'califica', '427', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:34:47.110495', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', 10),
(1454, 'califica', '428', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:34:47.151994', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(1455, 'califica', '429', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:34:47.181952', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', 10),
(1456, 'califica', '430', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:34:47.205864', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', 10),
(1457, 'califica', '431', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:34:47.229850', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', 10),
(1458, 'califica', '432', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:34:47.254481', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', 10),
(1459, 'califica', '433', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:34:47.278849', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', 10),
(1460, 'califica', '434', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:34:47.302001', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', 10),
(1461, 'califica', '435', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:34:47.326218', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', 10),
(1462, 'califica', '436', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:34:47.350218', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', 10),
(1463, 'califica', '437', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:34:47.374191', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', 10),
(1464, 'califica', '438', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:34:47.398472', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', 10),
(1465, 'califica', '439', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:34:47.424516', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', 10),
(1466, 'califica', '440', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:34:47.446064', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', 10),
(1467, 'califica', '441', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:34:47.471000', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', 10),
(1468, 'califica', '442', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:34:47.493962', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', 10),
(1469, 'califica', '443', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:34:47.518493', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', 10),
(1470, 'califica', '444', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:34:47.570979', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', 10),
(1471, 'califica', '445', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:34:47.590757', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', 10),
(1472, 'califica', '446', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:34:47.617936', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', 10),
(1473, 'califica', '447', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:34:47.648652', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', 10),
(1474, 'califica', '448', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:34:47.683673', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', 10),
(1475, 'califica', '449', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:34:47.715845', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', 10),
(1476, 'califica', '450', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:34:47.735646', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', 10),
(1477, 'calificacion_tributaria', '12500', 'CREAR', 'Ingreso de Calificación Tributaria', '2025-12-17 10:36:38.774358', NULL, '{\"secuencia_evento\": 12500, \"mercado\": \"DERIVADOS FINANCIEROS\", \"instrumento\": 4, \"descripcion\": \"PRUEBA\", \"fecha_pago\": \"2025-12-18\", \"dividendo\": 2, \"valor_historico\": 126300, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1478, 'califica', '721', 'CREAR', 'Califica creado para factor 8', '2025-12-17 10:36:38.826757', NULL, '{\"id\": 721, \"factor\": 8, \"calificacion\": 12500, \"valor\": \"0.887393\"}', 10),
(1479, 'califica', '722', 'CREAR', 'Califica creado para factor 9', '2025-12-17 10:36:38.898208', NULL, '{\"id\": 722, \"factor\": 9, \"calificacion\": 12500, \"valor\": \"0.012204\"}', 10),
(1480, 'califica', '723', 'CREAR', 'Califica creado para factor 10', '2025-12-17 10:36:38.958494', NULL, '{\"id\": 723, \"factor\": 10, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1481, 'califica', '724', 'CREAR', 'Califica creado para factor 11', '2025-12-17 10:36:39.006352', NULL, '{\"id\": 724, \"factor\": 11, \"calificacion\": 12500, \"valor\": \"0.088163\"}', 10),
(1482, 'califica', '725', 'CREAR', 'Califica creado para factor 12', '2025-12-17 10:36:39.054409', NULL, '{\"id\": 725, \"factor\": 12, \"calificacion\": 12500, \"valor\": \"0.001718\"}', 10),
(1483, 'califica', '726', 'CREAR', 'Califica creado para factor 13', '2025-12-17 10:36:39.103562', NULL, '{\"id\": 726, \"factor\": 13, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1484, 'califica', '727', 'CREAR', 'Califica creado para factor 14', '2025-12-17 10:36:39.177168', NULL, '{\"id\": 727, \"factor\": 14, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1485, 'califica', '728', 'CREAR', 'Califica creado para factor 15', '2025-12-17 10:36:39.234691', NULL, '{\"id\": 728, \"factor\": 15, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1486, 'califica', '729', 'CREAR', 'Califica creado para factor 16', '2025-12-17 10:36:39.295424', NULL, '{\"id\": 729, \"factor\": 16, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1487, 'califica', '730', 'CREAR', 'Califica creado para factor 17', '2025-12-17 10:36:39.344975', NULL, '{\"id\": 730, \"factor\": 17, \"calificacion\": 12500, \"valor\": \"0.001707\"}', 10),
(1488, 'califica', '731', 'CREAR', 'Califica creado para factor 18', '2025-12-17 10:36:39.415912', NULL, '{\"id\": 731, \"factor\": 18, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1489, 'califica', '732', 'CREAR', 'Califica creado para factor 19', '2025-12-17 10:36:39.462301', NULL, '{\"id\": 732, \"factor\": 19, \"calificacion\": 12500, \"valor\": \"0.008816\"}', 10),
(1490, 'califica', '733', 'CREAR', 'Califica creado para factor 20', '2025-12-17 10:36:39.535644', NULL, '{\"id\": 733, \"factor\": 20, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1491, 'califica', '734', 'CREAR', 'Califica creado para factor 21', '2025-12-17 10:36:39.596154', NULL, '{\"id\": 734, \"factor\": 21, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1492, 'califica', '735', 'CREAR', 'Califica creado para factor 22', '2025-12-17 10:36:39.654668', NULL, '{\"id\": 735, \"factor\": 22, \"calificacion\": 12500, \"valor\": \"0.012998\"}', 10),
(1493, 'califica', '736', 'CREAR', 'Califica creado para factor 23', '2025-12-17 10:36:39.715205', NULL, '{\"id\": 736, \"factor\": 23, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1494, 'califica', '737', 'CREAR', 'Califica creado para factor 24', '2025-12-17 10:36:39.775676', NULL, '{\"id\": 737, \"factor\": 24, \"calificacion\": 12500, \"valor\": \"0.000882\"}', 10),
(1495, 'califica', '738', 'CREAR', 'Califica creado para factor 25', '2025-12-17 10:36:39.822617', NULL, '{\"id\": 738, \"factor\": 25, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1496, 'califica', '739', 'CREAR', 'Califica creado para factor 26', '2025-12-17 10:36:39.870617', NULL, '{\"id\": 739, \"factor\": 26, \"calificacion\": 12500, \"valor\": \"0.01718\"}', 10),
(1497, 'califica', '740', 'CREAR', 'Califica creado para factor 27', '2025-12-17 10:36:39.918567', NULL, '{\"id\": 740, \"factor\": 27, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1498, 'califica', '741', 'CREAR', 'Califica creado para factor 28', '2025-12-17 10:36:39.966548', NULL, '{\"id\": 741, \"factor\": 28, \"calificacion\": 12500, \"valor\": \"0.088197\"}', 10),
(1499, 'califica', '742', 'CREAR', 'Califica creado para factor 29', '2025-12-17 10:36:40.014477', NULL, '{\"id\": 742, \"factor\": 29, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1500, 'califica', '743', 'CREAR', 'Califica creado para factor 30', '2025-12-17 10:36:40.062495', NULL, '{\"id\": 743, \"factor\": 30, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1501, 'califica', '744', 'CREAR', 'Califica creado para factor 31', '2025-12-17 10:36:40.111405', NULL, '{\"id\": 744, \"factor\": 31, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1502, 'califica', '745', 'CREAR', 'Califica creado para factor 32', '2025-12-17 10:36:40.158637', NULL, '{\"id\": 745, \"factor\": 32, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1503, 'califica', '746', 'CREAR', 'Califica creado para factor 33', '2025-12-17 10:36:40.230573', NULL, '{\"id\": 746, \"factor\": 33, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1504, 'califica', '747', 'CREAR', 'Califica creado para factor 34', '2025-12-17 10:36:40.278582', NULL, '{\"id\": 747, \"factor\": 34, \"calificacion\": 12500, \"valor\": \"0.00882\"}', 10),
(1505, 'califica', '748', 'CREAR', 'Califica creado para factor 35', '2025-12-17 10:36:40.326651', NULL, '{\"id\": 748, \"factor\": 35, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1506, 'califica', '749', 'CREAR', 'Califica creado para factor 36', '2025-12-17 10:36:40.374638', NULL, '{\"id\": 749, \"factor\": 36, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1507, 'califica', '750', 'CREAR', 'Califica creado para factor 37', '2025-12-17 10:36:40.422504', NULL, '{\"id\": 750, \"factor\": 37, \"calificacion\": 12500, \"valor\": \"0.0\"}', 10),
(1508, 'calificacion_tributaria', '12500', 'EDITAR', 'Modificación de Calificación Tributaria', '2025-12-17 10:36:47.700611', NULL, '{\"secuencia_evento\": 12500, \"mercado\": \"DERIVADOS FINANCIEROS\", \"instrumento\": 4, \"descripcion\": \"PRUEBA 2\", \"fecha_pago\": \"2025-12-18\", \"dividendo\": 2, \"valor_historico\": 126300, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1509, 'califica', '721', 'EDITAR', 'Actualización del factor 8', '2025-12-17 10:36:47.734491', '{\"id\": 721, \"factor\": 8, \"calificacion\": 12500, \"valor\": 0.887393}', '{\"id\": 721, \"factor\": 8, \"calificacion\": 12500, \"valor\": \"0.887393\"}', 10),
(1510, 'califica', '722', 'EDITAR', 'Actualización del factor 9', '2025-12-17 10:36:47.784719', '{\"id\": 722, \"factor\": 9, \"calificacion\": 12500, \"valor\": 0.012204}', '{\"id\": 722, \"factor\": 9, \"calificacion\": 12500, \"valor\": \"0.012204\"}', 10),
(1511, 'califica', '723', 'EDITAR', 'Actualización del factor 10', '2025-12-17 10:36:47.817428', '{\"id\": 723, \"factor\": 10, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 723, \"factor\": 10, \"calificacion\": 12500, \"valor\": 0}', 10),
(1512, 'califica', '724', 'EDITAR', 'Actualización del factor 11', '2025-12-17 10:36:47.841633', '{\"id\": 724, \"factor\": 11, \"calificacion\": 12500, \"valor\": 0.088163}', '{\"id\": 724, \"factor\": 11, \"calificacion\": 12500, \"valor\": \"0.088163\"}', 10),
(1513, 'califica', '725', 'EDITAR', 'Actualización del factor 12', '2025-12-17 10:36:47.865641', '{\"id\": 725, \"factor\": 12, \"calificacion\": 12500, \"valor\": 0.001718}', '{\"id\": 725, \"factor\": 12, \"calificacion\": 12500, \"valor\": \"0.001718\"}', 10),
(1514, 'califica', '726', 'EDITAR', 'Actualización del factor 13', '2025-12-17 10:36:47.889166', '{\"id\": 726, \"factor\": 13, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 726, \"factor\": 13, \"calificacion\": 12500, \"valor\": 0}', 10),
(1515, 'califica', '727', 'EDITAR', 'Actualización del factor 14', '2025-12-17 10:36:47.914607', '{\"id\": 727, \"factor\": 14, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 727, \"factor\": 14, \"calificacion\": 12500, \"valor\": 0}', 10),
(1516, 'califica', '728', 'EDITAR', 'Actualización del factor 15', '2025-12-17 10:36:47.937718', '{\"id\": 728, \"factor\": 15, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 728, \"factor\": 15, \"calificacion\": 12500, \"valor\": 0}', 10),
(1517, 'califica', '729', 'EDITAR', 'Actualización del factor 16', '2025-12-17 10:36:47.962273', '{\"id\": 729, \"factor\": 16, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 729, \"factor\": 16, \"calificacion\": 12500, \"valor\": 0}', 10),
(1518, 'califica', '730', 'EDITAR', 'Actualización del factor 17', '2025-12-17 10:36:47.985547', '{\"id\": 730, \"factor\": 17, \"calificacion\": 12500, \"valor\": 0.001707}', '{\"id\": 730, \"factor\": 17, \"calificacion\": 12500, \"valor\": \"0.001707\"}', 10),
(1519, 'califica', '731', 'EDITAR', 'Actualización del factor 18', '2025-12-17 10:36:48.011690', '{\"id\": 731, \"factor\": 18, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 731, \"factor\": 18, \"calificacion\": 12500, \"valor\": 0}', 10),
(1520, 'califica', '732', 'EDITAR', 'Actualización del factor 19', '2025-12-17 10:36:48.033369', '{\"id\": 732, \"factor\": 19, \"calificacion\": 12500, \"valor\": 0.008816}', '{\"id\": 732, \"factor\": 19, \"calificacion\": 12500, \"valor\": \"0.008816\"}', 10),
(1521, 'califica', '733', 'EDITAR', 'Actualización del factor 20', '2025-12-17 10:36:48.057429', '{\"id\": 733, \"factor\": 20, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 733, \"factor\": 20, \"calificacion\": 12500, \"valor\": 0}', 10),
(1522, 'califica', '734', 'EDITAR', 'Actualización del factor 21', '2025-12-17 10:36:48.082128', '{\"id\": 734, \"factor\": 21, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 734, \"factor\": 21, \"calificacion\": 12500, \"valor\": 0}', 10),
(1523, 'califica', '735', 'EDITAR', 'Actualización del factor 22', '2025-12-17 10:36:48.163303', '{\"id\": 735, \"factor\": 22, \"calificacion\": 12500, \"valor\": 0.012998}', '{\"id\": 735, \"factor\": 22, \"calificacion\": 12500, \"valor\": \"0.012998\"}', 10),
(1524, 'califica', '736', 'EDITAR', 'Actualización del factor 23', '2025-12-17 10:36:48.189607', '{\"id\": 736, \"factor\": 23, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 736, \"factor\": 23, \"calificacion\": 12500, \"valor\": 0}', 10),
(1525, 'califica', '737', 'EDITAR', 'Actualización del factor 24', '2025-12-17 10:36:48.214388', '{\"id\": 737, \"factor\": 24, \"calificacion\": 12500, \"valor\": 0.000882}', '{\"id\": 737, \"factor\": 24, \"calificacion\": 12500, \"valor\": \"0.000882\"}', 10),
(1526, 'califica', '738', 'EDITAR', 'Actualización del factor 25', '2025-12-17 10:36:48.237402', '{\"id\": 738, \"factor\": 25, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 738, \"factor\": 25, \"calificacion\": 12500, \"valor\": 0}', 10),
(1527, 'califica', '739', 'EDITAR', 'Actualización del factor 26', '2025-12-17 10:36:48.262270', '{\"id\": 739, \"factor\": 26, \"calificacion\": 12500, \"valor\": 0.01718}', '{\"id\": 739, \"factor\": 26, \"calificacion\": 12500, \"valor\": \"0.01718\"}', 10),
(1528, 'califica', '740', 'EDITAR', 'Actualización del factor 27', '2025-12-17 10:36:48.285376', '{\"id\": 740, \"factor\": 27, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 740, \"factor\": 27, \"calificacion\": 12500, \"valor\": 0}', 10),
(1529, 'califica', '741', 'EDITAR', 'Actualización del factor 28', '2025-12-17 10:36:48.313831', '{\"id\": 741, \"factor\": 28, \"calificacion\": 12500, \"valor\": 0.088197}', '{\"id\": 741, \"factor\": 28, \"calificacion\": 12500, \"valor\": \"0.088197\"}', 10),
(1530, 'califica', '742', 'EDITAR', 'Actualización del factor 29', '2025-12-17 10:36:48.333444', '{\"id\": 742, \"factor\": 29, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 742, \"factor\": 29, \"calificacion\": 12500, \"valor\": 0}', 10),
(1531, 'califica', '743', 'EDITAR', 'Actualización del factor 30', '2025-12-17 10:36:48.357526', '{\"id\": 743, \"factor\": 30, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 743, \"factor\": 30, \"calificacion\": 12500, \"valor\": 0}', 10),
(1532, 'califica', '744', 'EDITAR', 'Actualización del factor 31', '2025-12-17 10:36:48.382136', '{\"id\": 744, \"factor\": 31, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 744, \"factor\": 31, \"calificacion\": 12500, \"valor\": 0}', 10),
(1533, 'califica', '745', 'EDITAR', 'Actualización del factor 32', '2025-12-17 10:36:48.405179', '{\"id\": 745, \"factor\": 32, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 745, \"factor\": 32, \"calificacion\": 12500, \"valor\": 0}', 10),
(1534, 'califica', '746', 'EDITAR', 'Actualización del factor 33', '2025-12-17 10:36:48.429762', '{\"id\": 746, \"factor\": 33, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 746, \"factor\": 33, \"calificacion\": 12500, \"valor\": 0}', 10),
(1535, 'califica', '747', 'EDITAR', 'Actualización del factor 34', '2025-12-17 10:36:48.453617', '{\"id\": 747, \"factor\": 34, \"calificacion\": 12500, \"valor\": 0.00882}', '{\"id\": 747, \"factor\": 34, \"calificacion\": 12500, \"valor\": \"0.00882\"}', 10),
(1536, 'califica', '748', 'EDITAR', 'Actualización del factor 35', '2025-12-17 10:36:48.478270', '{\"id\": 748, \"factor\": 35, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 748, \"factor\": 35, \"calificacion\": 12500, \"valor\": 0}', 10),
(1537, 'califica', '749', 'EDITAR', 'Actualización del factor 36', '2025-12-17 10:36:48.501551', '{\"id\": 749, \"factor\": 36, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 749, \"factor\": 36, \"calificacion\": 12500, \"valor\": 0}', 10),
(1538, 'califica', '750', 'EDITAR', 'Actualización del factor 37', '2025-12-17 10:36:48.525353', '{\"id\": 750, \"factor\": 37, \"calificacion\": 12500, \"valor\": 0.0}', '{\"id\": 750, \"factor\": 37, \"calificacion\": 12500, \"valor\": 0}', 10),
(1539, 'calificacion_tributaria', '12500', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:36:53.736720', '{\"secuencia_evento\": 12500, \"mercado\": \"DERIVADOS FINANCIEROS\", \"instrumento\": 4, \"descripcion\": \"PRUEBA 2\", \"fecha_pago\": \"2025-12-18\", \"dividendo\": 2, \"valor_historico\": 126300, \"anio\": 2025, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1540, 'calificacion_tributaria', '10000', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:36:58.203296', '{\"secuencia_evento\": 10000, \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": 1250000, \"valor_historico\": 8700000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1541, 'calificacion_tributaria', '10001', 'ELIMINAR', 'Eliminación de Calificación Tributaria', '2025-12-17 10:37:00.927756', '{\"secuencia_evento\": 10001, \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": 980000, \"valor_historico\": 6500000, \"anio\": 2024, \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', NULL, 10),
(1542, 'calificacion_tributaria', '10000', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:37:41.963924', NULL, '{\"secuencia_evento\": \"10000\", \"mercado\": \"MERCADO INTERNACIONAL\", \"instrumento\": 1, \"descripcion\": \"DEP A PLAZO TEST 1\", \"fecha_pago\": \"2024-01-15\", \"dividendo\": \"1250000\", \"valor_historico\": \"8700000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1543, 'califica', '751', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:37:42.030515', NULL, '{\"id\": 751, \"factor\": 8, \"calificacion\": \"10000\", \"valor\": 0.072235}', 10),
(1544, 'califica', '752', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:37:42.078419', NULL, '{\"id\": 752, \"factor\": 9, \"calificacion\": \"10000\", \"valor\": 0.092551}', 10),
(1545, 'califica', '753', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:37:42.126443', NULL, '{\"id\": 753, \"factor\": 10, \"calificacion\": \"10000\", \"valor\": 0.112867}', 10),
(1546, 'califica', '754', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:37:42.174457', NULL, '{\"id\": 754, \"factor\": 11, \"calificacion\": \"10000\", \"valor\": 0.069977}', 10),
(1547, 'califica', '755', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:37:42.222456', NULL, '{\"id\": 755, \"factor\": 12, \"calificacion\": \"10000\", \"valor\": 0.065463}', 10),
(1548, 'califica', '756', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:37:42.270492', NULL, '{\"id\": 756, \"factor\": 13, \"calificacion\": \"10000\", \"valor\": 0.060948}', 10),
(1549, 'califica', '757', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:37:42.334826', NULL, '{\"id\": 757, \"factor\": 14, \"calificacion\": \"10000\", \"valor\": 0.103837}', 10),
(1550, 'califica', '758', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:37:42.390444', NULL, '{\"id\": 758, \"factor\": 15, \"calificacion\": \"10000\", \"valor\": 0.085779}', 10),
(1551, 'califica', '759', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:37:42.438534', NULL, '{\"id\": 759, \"factor\": 16, \"calificacion\": \"10000\", \"valor\": 0.074492}', 10),
(1552, 'califica', '760', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:37:42.486570', NULL, '{\"id\": 760, \"factor\": 17, \"calificacion\": \"10000\", \"valor\": 0.079007}', 10),
(1553, 'califica', '761', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:37:42.534527', NULL, '{\"id\": 761, \"factor\": 18, \"calificacion\": \"10000\", \"valor\": 0.088036}', 10),
(1554, 'califica', '762', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:37:42.582495', NULL, '{\"id\": 762, \"factor\": 19, \"calificacion\": \"10000\", \"valor\": 0.094808}', 10),
(1555, 'califica', '763', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:37:42.683413', NULL, '{\"id\": 763, \"factor\": 20, \"calificacion\": \"10000\", \"valor\": 0.099323}', 10),
(1556, 'califica', '764', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:37:42.738587', NULL, '{\"id\": 764, \"factor\": 21, \"calificacion\": \"10000\", \"valor\": 0.106095}', 10),
(1557, 'califica', '765', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:37:42.786618', NULL, '{\"id\": 765, \"factor\": 22, \"calificacion\": \"10000\", \"valor\": 0.110609}', 10),
(1558, 'califica', '766', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:37:42.834633', NULL, '{\"id\": 766, \"factor\": 23, \"calificacion\": \"10000\", \"valor\": 0.115124}', 10),
(1559, 'califica', '767', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:37:42.894695', NULL, '{\"id\": 767, \"factor\": 24, \"calificacion\": \"10000\", \"valor\": 0.119639}', 10),
(1560, 'califica', '768', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:37:42.942574', NULL, '{\"id\": 768, \"factor\": 25, \"calificacion\": \"10000\", \"valor\": 0.124153}', 10),
(1561, 'califica', '769', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:37:42.990540', NULL, '{\"id\": 769, \"factor\": 26, \"calificacion\": \"10000\", \"valor\": 0.128668}', 10),
(1562, 'califica', '770', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:37:43.038635', NULL, '{\"id\": 770, \"factor\": 27, \"calificacion\": \"10000\", \"valor\": 0.133183}', 10),
(1563, 'califica', '771', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:37:43.086622', NULL, '{\"id\": 771, \"factor\": 28, \"calificacion\": \"10000\", \"valor\": 0.137698}', 10),
(1564, 'califica', '772', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:37:43.134692', NULL, '{\"id\": 772, \"factor\": 29, \"calificacion\": \"10000\", \"valor\": 0.142212}', 10),
(1565, 'califica', '773', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:37:43.182576', NULL, '{\"id\": 773, \"factor\": 30, \"calificacion\": \"10000\", \"valor\": 0.146727}', 10),
(1566, 'califica', '774', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:37:43.230510', NULL, '{\"id\": 774, \"factor\": 31, \"calificacion\": \"10000\", \"valor\": 0.151242}', 10),
(1567, 'califica', '775', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:37:43.278986', NULL, '{\"id\": 775, \"factor\": 32, \"calificacion\": \"10000\", \"valor\": 0.155756}', 10),
(1568, 'califica', '776', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:37:43.326687', NULL, '{\"id\": 776, \"factor\": 33, \"calificacion\": \"10000\", \"valor\": 0.160271}', 10),
(1569, 'califica', '777', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:37:43.374677', NULL, '{\"id\": 777, \"factor\": 34, \"calificacion\": \"10000\", \"valor\": 0.164786}', 10),
(1570, 'califica', '778', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:37:43.438925', NULL, '{\"id\": 778, \"factor\": 35, \"calificacion\": \"10000\", \"valor\": 0.1693}', 10),
(1571, 'califica', '779', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:37:43.494729', NULL, '{\"id\": 779, \"factor\": 36, \"calificacion\": \"10000\", \"valor\": 0.173815}', 10),
(1572, 'califica', '780', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:37:43.542757', NULL, '{\"id\": 780, \"factor\": 37, \"calificacion\": \"10000\", \"valor\": 0.17833}', 10),
(1573, 'calificacion_tributaria', '10001', 'CREAR', 'Calificación tributaria ingresada via Carga Masiva.', '2025-12-17 10:37:43.591578', NULL, '{\"secuencia_evento\": \"10001\", \"mercado\": \"MERCADO MONETARIO\", \"instrumento\": 2, \"descripcion\": \"DEP A PLAZO CHILE\", \"fecha_pago\": \"2024-02-15\", \"dividendo\": \"980000\", \"valor_historico\": \"6500000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": 0, \"evento_capital\": null, \"factores\": []}', 10),
(1574, 'califica', '781', 'CREAR', 'Califica creado para factor 8 via carga masiva.', '2025-12-17 10:37:43.638692', NULL, '{\"id\": 781, \"factor\": 8, \"calificacion\": \"10001\", \"valor\": 0.120614}', 10),
(1575, 'califica', '782', 'CREAR', 'Califica creado para factor 9 via carga masiva.', '2025-12-17 10:37:43.703538', NULL, '{\"id\": 782, \"factor\": 9, \"calificacion\": \"10001\", \"valor\": 0.131579}', 10),
(1576, 'califica', '783', 'CREAR', 'Califica creado para factor 10 via carga masiva.', '2025-12-17 10:37:43.758628', NULL, '{\"id\": 783, \"factor\": 10, \"calificacion\": \"10001\", \"valor\": 0.109649}', 10),
(1577, 'califica', '784', 'CREAR', 'Califica creado para factor 11 via carga masiva.', '2025-12-17 10:37:43.806708', NULL, '{\"id\": 784, \"factor\": 11, \"calificacion\": \"10001\", \"valor\": 0.041667}', 10),
(1578, 'califica', '785', 'CREAR', 'Califica creado para factor 12 via carga masiva.', '2025-12-17 10:37:43.854652', NULL, '{\"id\": 785, \"factor\": 12, \"calificacion\": \"10001\", \"valor\": 0.046053}', 10),
(1579, 'califica', '786', 'CREAR', 'Califica creado para factor 13 via carga masiva.', '2025-12-17 10:37:43.902668', NULL, '{\"id\": 786, \"factor\": 13, \"calificacion\": \"10001\", \"valor\": 0.050439}', 10),
(1580, 'califica', '787', 'CREAR', 'Califica creado para factor 14 via carga masiva.', '2025-12-17 10:37:43.950569', NULL, '{\"id\": 787, \"factor\": 14, \"calificacion\": \"10001\", \"valor\": 0.054825}', 10),
(1581, 'califica', '788', 'CREAR', 'Califica creado para factor 15 via carga masiva.', '2025-12-17 10:37:43.998818', NULL, '{\"id\": 788, \"factor\": 15, \"calificacion\": \"10001\", \"valor\": 0.066886}', 10),
(1582, 'califica', '789', 'CREAR', 'Califica creado para factor 16 via carga masiva.', '2025-12-17 10:37:44.046570', NULL, '{\"id\": 789, \"factor\": 16, \"calificacion\": \"10001\", \"valor\": 0.078947}', 10),
(1583, 'califica', '790', 'CREAR', 'Califica creado para factor 17 via carga masiva.', '2025-12-17 10:37:44.094741', NULL, '{\"id\": 790, \"factor\": 17, \"calificacion\": \"10001\", \"valor\": 0.091009}', 10),
(1584, 'califica', '791', 'CREAR', 'Califica creado para factor 18 via carga masiva.', '2025-12-17 10:37:44.142798', NULL, '{\"id\": 791, \"factor\": 18, \"calificacion\": \"10001\", \"valor\": 0.099781}', 10),
(1585, 'califica', '792', 'CREAR', 'Califica creado para factor 19 via carga masiva.', '2025-12-17 10:37:44.191459', NULL, '{\"id\": 792, \"factor\": 19, \"calificacion\": \"10001\", \"valor\": 0.108553}', 10),
(1586, 'califica', '793', 'CREAR', 'Califica creado para factor 20 via carga masiva.', '2025-12-17 10:37:44.238667', NULL, '{\"id\": 793, \"factor\": 20, \"calificacion\": \"10001\", \"valor\": 0.093202}', 10),
(1587, 'califica', '794', 'CREAR', 'Califica creado para factor 21 via carga masiva.', '2025-12-17 10:37:44.286629', NULL, '{\"id\": 794, \"factor\": 21, \"calificacion\": \"10001\", \"valor\": 0.083333}', 10),
(1588, 'califica', '795', 'CREAR', 'Califica creado para factor 22 via carga masiva.', '2025-12-17 10:37:44.350916', NULL, '{\"id\": 795, \"factor\": 22, \"calificacion\": \"10001\", \"valor\": 0.074013}', 10),
(1589, 'califica', '796', 'CREAR', 'Califica creado para factor 23 via carga masiva.', '2025-12-17 10:37:44.431028', NULL, '{\"id\": 796, \"factor\": 23, \"calificacion\": \"10001\", \"valor\": 0.059211}', 10),
(1590, 'califica', '797', 'CREAR', 'Califica creado para factor 24 via carga masiva.', '2025-12-17 10:37:44.478973', NULL, '{\"id\": 797, \"factor\": 24, \"calificacion\": \"10001\", \"valor\": 0.053728}', 10),
(1591, 'califica', '798', 'CREAR', 'Califica creado para factor 25 via carga masiva.', '2025-12-17 10:37:44.526603', NULL, '{\"id\": 798, \"factor\": 25, \"calificacion\": \"10001\", \"valor\": 0.048246}', 10),
(1592, 'califica', '799', 'CREAR', 'Califica creado para factor 26 via carga masiva.', '2025-12-17 10:37:44.574648', NULL, '{\"id\": 799, \"factor\": 26, \"calificacion\": \"10001\", \"valor\": 0.042763}', 10),
(1593, 'califica', '800', 'CREAR', 'Califica creado para factor 27 via carga masiva.', '2025-12-17 10:37:44.622674', NULL, '{\"id\": 800, \"factor\": 27, \"calificacion\": \"10001\", \"valor\": 0.038377}', 10),
(1594, 'califica', '801', 'CREAR', 'Califica creado para factor 28 via carga masiva.', '2025-12-17 10:37:44.670840', NULL, '{\"id\": 801, \"factor\": 28, \"calificacion\": \"10001\", \"valor\": 0.033991}', 10),
(1595, 'califica', '802', 'CREAR', 'Califica creado para factor 29 via carga masiva.', '2025-12-17 10:37:44.720440', NULL, '{\"id\": 802, \"factor\": 29, \"calificacion\": \"10001\", \"valor\": 0.029605}', 10),
(1596, 'califica', '803', 'CREAR', 'Califica creado para factor 30 via carga masiva.', '2025-12-17 10:37:44.766671', NULL, '{\"id\": 803, \"factor\": 30, \"calificacion\": \"10001\", \"valor\": 0.025219}', 10),
(1597, 'califica', '804', 'CREAR', 'Califica creado para factor 31 via carga masiva.', '2025-12-17 10:37:44.814709', NULL, '{\"id\": 804, \"factor\": 31, \"calificacion\": \"10001\", \"valor\": 0.020833}', 10),
(1598, 'califica', '805', 'CREAR', 'Califica creado para factor 32 via carga masiva.', '2025-12-17 10:37:44.862809', NULL, '{\"id\": 805, \"factor\": 32, \"calificacion\": \"10001\", \"valor\": 0.016447}', 10),
(1599, 'califica', '806', 'CREAR', 'Califica creado para factor 33 via carga masiva.', '2025-12-17 10:37:44.910757', NULL, '{\"id\": 806, \"factor\": 33, \"calificacion\": \"10001\", \"valor\": 0.012061}', 10),
(1600, 'califica', '807', 'CREAR', 'Califica creado para factor 34 via carga masiva.', '2025-12-17 10:37:44.958704', NULL, '{\"id\": 807, \"factor\": 34, \"calificacion\": \"10001\", \"valor\": 0.009868}', 10),
(1601, 'califica', '808', 'CREAR', 'Califica creado para factor 35 via carga masiva.', '2025-12-17 10:37:45.006768', NULL, '{\"id\": 808, \"factor\": 35, \"calificacion\": \"10001\", \"valor\": 0.007675}', 10),
(1602, 'califica', '809', 'CREAR', 'Califica creado para factor 36 via carga masiva.', '2025-12-17 10:37:45.054855', NULL, '{\"id\": 809, \"factor\": 36, \"calificacion\": \"10001\", \"valor\": 0.005482}', 10),
(1603, 'califica', '810', 'CREAR', 'Califica creado para factor 37 via carga masiva.', '2025-12-17 10:37:45.102652', NULL, '{\"id\": 810, \"factor\": 37, \"calificacion\": \"10001\", \"valor\": 0.003289}', 10),
(1604, 'calificacion_tributaria', '10002', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:37:45.133139', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10002, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 3, \"descripcion\": \"FONDO ETF TEST\", \"fecha_pago\": \"2024-03-15\", \"dividendo\": \"1570000\", \"valor_historico\": \"4550000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": true, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1605, 'califica', '301', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:37:45.154315', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', '{\"id\": 301, \"factor\": 8, \"calificacion\": 10002, \"valor\": 0.067797}', 10),
(1606, 'califica', '302', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:37:45.178799', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', '{\"id\": 302, \"factor\": 9, \"calificacion\": 10002, \"valor\": 0.070621}', 10),
(1607, 'califica', '303', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:37:45.218482', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', '{\"id\": 303, \"factor\": 10, \"calificacion\": 10002, \"valor\": 0.073446}', 10),
(1608, 'califica', '304', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:37:45.250326', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', '{\"id\": 304, \"factor\": 11, \"calificacion\": 10002, \"valor\": 0.076271}', 10),
(1609, 'califica', '305', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:37:45.274184', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', '{\"id\": 305, \"factor\": 12, \"calificacion\": 10002, \"valor\": 0.079096}', 10),
(1610, 'califica', '306', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:37:45.310638', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', '{\"id\": 306, \"factor\": 13, \"calificacion\": 10002, \"valor\": 0.081921}', 10),
(1611, 'califica', '307', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:37:45.334154', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', '{\"id\": 307, \"factor\": 14, \"calificacion\": 10002, \"valor\": 0.084746}', 10),
(1612, 'califica', '308', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:37:45.435098', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', '{\"id\": 308, \"factor\": 15, \"calificacion\": 10002, \"valor\": 0.087571}', 10),
(1613, 'califica', '309', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:37:45.490332', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', '{\"id\": 309, \"factor\": 16, \"calificacion\": 10002, \"valor\": 0.090395}', 10),
(1614, 'califica', '310', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:37:45.516717', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', '{\"id\": 310, \"factor\": 17, \"calificacion\": 10002, \"valor\": 0.09322}', 10),
(1615, 'califica', '311', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:37:45.537882', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', '{\"id\": 311, \"factor\": 18, \"calificacion\": 10002, \"valor\": 0.096045}', 10),
(1616, 'califica', '312', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:37:45.562237', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', '{\"id\": 312, \"factor\": 19, \"calificacion\": 10002, \"valor\": 0.09887}', 10),
(1617, 'califica', '313', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:37:45.585872', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', '{\"id\": 313, \"factor\": 20, \"calificacion\": 10002, \"valor\": 0.101695}', 10),
(1618, 'califica', '314', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:37:45.610682', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', '{\"id\": 314, \"factor\": 21, \"calificacion\": 10002, \"valor\": 0.10452}', 10),
(1619, 'califica', '315', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:37:45.634246', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', '{\"id\": 315, \"factor\": 22, \"calificacion\": 10002, \"valor\": 0.107345}', 10),
(1620, 'califica', '316', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:37:45.657817', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', '{\"id\": 316, \"factor\": 23, \"calificacion\": 10002, \"valor\": 0.110169}', 10),
(1621, 'califica', '317', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:37:45.682658', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', '{\"id\": 317, \"factor\": 24, \"calificacion\": 10002, \"valor\": 0.112994}', 10),
(1622, 'califica', '318', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:37:45.705989', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', '{\"id\": 318, \"factor\": 25, \"calificacion\": 10002, \"valor\": 0.115819}', 10),
(1623, 'califica', '319', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:37:45.730613', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', '{\"id\": 319, \"factor\": 26, \"calificacion\": 10002, \"valor\": 0.118644}', 10),
(1624, 'califica', '320', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:37:45.753864', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', '{\"id\": 320, \"factor\": 27, \"calificacion\": 10002, \"valor\": 0.121469}', 10),
(1625, 'califica', '321', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:37:45.787997', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', '{\"id\": 321, \"factor\": 28, \"calificacion\": 10002, \"valor\": 0.124294}', 10),
(1626, 'califica', '322', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:37:45.814895', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', '{\"id\": 322, \"factor\": 29, \"calificacion\": 10002, \"valor\": 0.127119}', 10),
(1627, 'califica', '323', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:37:45.838394', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', '{\"id\": 323, \"factor\": 30, \"calificacion\": 10002, \"valor\": 0.129944}', 10),
(1628, 'califica', '324', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:37:45.880130', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', '{\"id\": 324, \"factor\": 31, \"calificacion\": 10002, \"valor\": 0.132768}', 10),
(1629, 'califica', '325', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:37:45.910705', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', '{\"id\": 325, \"factor\": 32, \"calificacion\": 10002, \"valor\": 0.135593}', 10),
(1630, 'califica', '326', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:37:45.934332', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', '{\"id\": 326, \"factor\": 33, \"calificacion\": 10002, \"valor\": 0.138418}', 10),
(1631, 'califica', '327', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:37:45.957864', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', '{\"id\": 327, \"factor\": 34, \"calificacion\": 10002, \"valor\": 0.141243}', 10),
(1632, 'califica', '328', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:37:45.983689', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', '{\"id\": 328, \"factor\": 35, \"calificacion\": 10002, \"valor\": 0.144068}', 10),
(1633, 'califica', '329', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:37:46.005810', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', '{\"id\": 329, \"factor\": 36, \"calificacion\": 10002, \"valor\": 0.146893}', 10),
(1634, 'califica', '330', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:37:46.030203', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', '{\"id\": 330, \"factor\": 37, \"calificacion\": 10002, \"valor\": 0.149718}', 10),
(1635, 'calificacion_tributaria', '10003', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:37:46.056194', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10003, \"mercado\": \"FONDOS DE INVERSI\\u00d3N-MUTUOS\", \"instrumento\": 4, \"descripcion\": \"FONDO MUTUO CL TEST\", \"fecha_pago\": \"2024-04-15\", \"dividendo\": \"1640000\", \"valor_historico\": \"7100000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1636, 'califica', '391', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:37:46.079327', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', '{\"id\": 391, \"factor\": 8, \"calificacion\": 10003, \"valor\": 0.076739}', 10),
(1637, 'califica', '392', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:37:46.102079', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', '{\"id\": 392, \"factor\": 9, \"calificacion\": 10003, \"valor\": 0.077938}', 10),
(1638, 'califica', '393', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:37:46.126059', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', '{\"id\": 393, \"factor\": 10, \"calificacion\": 10003, \"valor\": 0.079137}', 10),
(1639, 'califica', '394', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:37:46.246860', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', '{\"id\": 394, \"factor\": 11, \"calificacion\": 10003, \"valor\": 0.080336}', 10),
(1640, 'califica', '395', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:37:46.366106', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', '{\"id\": 395, \"factor\": 12, \"calificacion\": 10003, \"valor\": 0.081535}', 10),
(1641, 'califica', '396', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:37:46.401922', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', '{\"id\": 396, \"factor\": 13, \"calificacion\": 10003, \"valor\": 0.082734}', 10),
(1642, 'califica', '397', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:37:46.426485', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', '{\"id\": 397, \"factor\": 14, \"calificacion\": 10003, \"valor\": 0.083933}', 10),
(1643, 'califica', '398', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:37:46.450035', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', '{\"id\": 398, \"factor\": 15, \"calificacion\": 10003, \"valor\": 0.085132}', 10),
(1644, 'califica', '399', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:37:46.473946', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', '{\"id\": 399, \"factor\": 16, \"calificacion\": 10003, \"valor\": 0.086331}', 10),
(1645, 'califica', '400', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:37:46.498653', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', '{\"id\": 400, \"factor\": 17, \"calificacion\": 10003, \"valor\": 0.08753}', 10);
INSERT INTO `intranet_auditoria` (`id`, `tabla`, `registro_id`, `accion`, `descripcion`, `fecha`, `valores_antes`, `valores_despues`, `usuario_id`) VALUES
(1646, 'califica', '401', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:37:46.530296', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', '{\"id\": 401, \"factor\": 18, \"calificacion\": 10003, \"valor\": 0.088729}', 10),
(1647, 'califica', '402', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:37:46.557883', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', '{\"id\": 402, \"factor\": 19, \"calificacion\": 10003, \"valor\": 0.089928}', 10),
(1648, 'califica', '403', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:37:46.582570', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', '{\"id\": 403, \"factor\": 20, \"calificacion\": 10003, \"valor\": 0.091127}', 10),
(1649, 'califica', '404', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:37:46.618038', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', '{\"id\": 404, \"factor\": 21, \"calificacion\": 10003, \"valor\": 0.092326}', 10),
(1650, 'califica', '405', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:37:46.642034', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', '{\"id\": 405, \"factor\": 22, \"calificacion\": 10003, \"valor\": 0.093525}', 10),
(1651, 'califica', '406', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:37:46.690222', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', '{\"id\": 406, \"factor\": 23, \"calificacion\": 10003, \"valor\": 0.094724}', 10),
(1652, 'califica', '407', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:37:46.714641', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', '{\"id\": 407, \"factor\": 24, \"calificacion\": 10003, \"valor\": 0.095923}', 10),
(1653, 'califica', '408', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:37:46.809811', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', '{\"id\": 408, \"factor\": 25, \"calificacion\": 10003, \"valor\": 0.097122}', 10),
(1654, 'califica', '409', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:37:46.846399', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', '{\"id\": 409, \"factor\": 26, \"calificacion\": 10003, \"valor\": 0.098321}', 10),
(1655, 'califica', '410', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:37:46.870080', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', '{\"id\": 410, \"factor\": 27, \"calificacion\": 10003, \"valor\": 0.09952}', 10),
(1656, 'califica', '411', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:37:46.894658', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', '{\"id\": 411, \"factor\": 28, \"calificacion\": 10003, \"valor\": 0.100719}', 10),
(1657, 'califica', '412', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:37:46.918301', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', '{\"id\": 412, \"factor\": 29, \"calificacion\": 10003, \"valor\": 0.101918}', 10),
(1658, 'califica', '413', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:37:46.941926', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', '{\"id\": 413, \"factor\": 30, \"calificacion\": 10003, \"valor\": 0.103118}', 10),
(1659, 'califica', '414', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:37:46.966432', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', '{\"id\": 414, \"factor\": 31, \"calificacion\": 10003, \"valor\": 0.104317}', 10),
(1660, 'califica', '415', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:37:46.989935', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', '{\"id\": 415, \"factor\": 32, \"calificacion\": 10003, \"valor\": 0.105516}', 10),
(1661, 'califica', '416', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:37:47.032018', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', '{\"id\": 416, \"factor\": 33, \"calificacion\": 10003, \"valor\": 0.106715}', 10),
(1662, 'califica', '417', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:37:47.062150', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', '{\"id\": 417, \"factor\": 34, \"calificacion\": 10003, \"valor\": 0.107914}', 10),
(1663, 'califica', '418', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:37:47.085966', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', '{\"id\": 418, \"factor\": 35, \"calificacion\": 10003, \"valor\": 0.109113}', 10),
(1664, 'califica', '419', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:37:47.110396', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', '{\"id\": 419, \"factor\": 36, \"calificacion\": 10003, \"valor\": 0.110312}', 10),
(1665, 'califica', '420', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:37:47.134135', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', '{\"id\": 420, \"factor\": 37, \"calificacion\": 10003, \"valor\": 0.111511}', 10),
(1666, 'calificacion_tributaria', '10004', 'EDITAR', 'Calificación tributaria modificada via Carga Masiva.', '2025-12-17 10:37:47.176763', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', '{\"secuencia_evento\": 10004, \"mercado\": \"ACCIONES\", \"instrumento\": 6, \"descripcion\": \"AMERICAN INTERNATIONAL TEST\", \"fecha_pago\": \"2024-05-15\", \"dividendo\": \"2000000\", \"valor_historico\": \"9000000\", \"anio\": \"2024\", \"estado\": \"PENDIENTE\", \"origen_calificacion\": \"SISTEMA\", \"isfut\": false, \"factor_actualizacion\": \"0.000000\", \"evento_capital\": null, \"factores\": [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]}', 10),
(1667, 'califica', '421', 'EDITAR', 'Califica editado para factor 8 via carga masiva.', '2025-12-17 10:37:47.221602', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', '{\"id\": 421, \"factor\": 8, \"calificacion\": 10004, \"valor\": 0.092841}', 10),
(1668, 'califica', '422', 'EDITAR', 'Califica editado para factor 9 via carga masiva.', '2025-12-17 10:37:47.244275', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', '{\"id\": 422, \"factor\": 9, \"calificacion\": 10004, \"valor\": 0.091723}', 10),
(1669, 'califica', '423', 'EDITAR', 'Califica editado para factor 10 via carga masiva.', '2025-12-17 10:37:47.266017', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', '{\"id\": 423, \"factor\": 10, \"calificacion\": 10004, \"valor\": 0.090604}', 10),
(1670, 'califica', '424', 'EDITAR', 'Califica editado para factor 11 via carga masiva.', '2025-12-17 10:37:47.290181', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', '{\"id\": 424, \"factor\": 11, \"calificacion\": 10004, \"valor\": 0.089485}', 10),
(1671, 'califica', '425', 'EDITAR', 'Califica editado para factor 12 via carga masiva.', '2025-12-17 10:37:47.314407', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', '{\"id\": 425, \"factor\": 12, \"calificacion\": 10004, \"valor\": 0.087248}', 10),
(1672, 'califica', '426', 'EDITAR', 'Califica editado para factor 13 via carga masiva.', '2025-12-17 10:37:47.345090', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', '{\"id\": 426, \"factor\": 13, \"calificacion\": 10004, \"valor\": 0.085011}', 10),
(1673, 'califica', '427', 'EDITAR', 'Califica editado para factor 14 via carga masiva.', '2025-12-17 10:37:47.374809', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', '{\"id\": 427, \"factor\": 14, \"calificacion\": 10004, \"valor\": 0.082774}', 10),
(1674, 'califica', '428', 'EDITAR', 'Califica editado para factor 15 via carga masiva.', '2025-12-17 10:37:47.398526', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', '{\"id\": 428, \"factor\": 15, \"calificacion\": 10004, \"valor\": 0.080537}', 10),
(1675, 'califica', '429', 'EDITAR', 'Califica editado para factor 16 via carga masiva.', '2025-12-17 10:37:47.422060', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', '{\"id\": 429, \"factor\": 16, \"calificacion\": 10004, \"valor\": 0.0783}', 10),
(1676, 'califica', '430', 'EDITAR', 'Califica editado para factor 17 via carga masiva.', '2025-12-17 10:37:47.446088', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', '{\"id\": 430, \"factor\": 17, \"calificacion\": 10004, \"valor\": 0.076063}', 10),
(1677, 'califica', '431', 'EDITAR', 'Califica editado para factor 18 via carga masiva.', '2025-12-17 10:37:47.469910', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', '{\"id\": 431, \"factor\": 18, \"calificacion\": 10004, \"valor\": 0.073826}', 10),
(1678, 'califica', '432', 'EDITAR', 'Califica editado para factor 19 via carga masiva.', '2025-12-17 10:37:47.494378', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', '{\"id\": 432, \"factor\": 19, \"calificacion\": 10004, \"valor\": 0.071588}', 10),
(1679, 'califica', '433', 'EDITAR', 'Califica editado para factor 20 via carga masiva.', '2025-12-17 10:37:47.518219', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', '{\"id\": 433, \"factor\": 20, \"calificacion\": 10004, \"valor\": 0.069351}', 10),
(1680, 'califica', '434', 'EDITAR', 'Califica editado para factor 21 via carga masiva.', '2025-12-17 10:37:47.541929', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', '{\"id\": 434, \"factor\": 21, \"calificacion\": 10004, \"valor\": 0.067114}', 10),
(1681, 'califica', '435', 'EDITAR', 'Califica editado para factor 22 via carga masiva.', '2025-12-17 10:37:47.566263', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', '{\"id\": 435, \"factor\": 22, \"calificacion\": 10004, \"valor\": 0.064877}', 10),
(1682, 'califica', '436', 'EDITAR', 'Califica editado para factor 23 via carga masiva.', '2025-12-17 10:37:47.590095', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', '{\"id\": 436, \"factor\": 23, \"calificacion\": 10004, \"valor\": 0.06264}', 10),
(1683, 'califica', '437', 'EDITAR', 'Califica editado para factor 24 via carga masiva.', '2025-12-17 10:37:47.614528', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', '{\"id\": 437, \"factor\": 24, \"calificacion\": 10004, \"valor\": 0.060403}', 10),
(1684, 'califica', '438', 'EDITAR', 'Califica editado para factor 25 via carga masiva.', '2025-12-17 10:37:47.638110', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', '{\"id\": 438, \"factor\": 25, \"calificacion\": 10004, \"valor\": 0.058166}', 10),
(1685, 'califica', '439', 'EDITAR', 'Califica editado para factor 26 via carga masiva.', '2025-12-17 10:37:47.662357', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', '{\"id\": 439, \"factor\": 26, \"calificacion\": 10004, \"valor\": 0.055928}', 10),
(1686, 'califica', '440', 'EDITAR', 'Califica editado para factor 27 via carga masiva.', '2025-12-17 10:37:47.685890', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', '{\"id\": 440, \"factor\": 27, \"calificacion\": 10004, \"valor\": 0.053691}', 10),
(1687, 'califica', '441', 'EDITAR', 'Califica editado para factor 28 via carga masiva.', '2025-12-17 10:37:47.710824', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', '{\"id\": 441, \"factor\": 28, \"calificacion\": 10004, \"valor\": 0.051454}', 10),
(1688, 'califica', '442', 'EDITAR', 'Califica editado para factor 29 via carga masiva.', '2025-12-17 10:37:47.734138', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', '{\"id\": 442, \"factor\": 29, \"calificacion\": 10004, \"valor\": 0.049217}', 10),
(1689, 'califica', '443', 'EDITAR', 'Califica editado para factor 30 via carga masiva.', '2025-12-17 10:37:47.758316', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', '{\"id\": 443, \"factor\": 30, \"calificacion\": 10004, \"valor\": 0.04698}', 10),
(1690, 'califica', '444', 'EDITAR', 'Califica editado para factor 31 via carga masiva.', '2025-12-17 10:37:47.782486', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', '{\"id\": 444, \"factor\": 31, \"calificacion\": 10004, \"valor\": 0.044743}', 10),
(1691, 'califica', '445', 'EDITAR', 'Califica editado para factor 32 via carga masiva.', '2025-12-17 10:37:47.806149', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', '{\"id\": 445, \"factor\": 32, \"calificacion\": 10004, \"valor\": 0.042506}', 10),
(1692, 'califica', '446', 'EDITAR', 'Califica editado para factor 33 via carga masiva.', '2025-12-17 10:37:47.830480', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', '{\"id\": 446, \"factor\": 33, \"calificacion\": 10004, \"valor\": 0.040268}', 10),
(1693, 'califica', '447', 'EDITAR', 'Califica editado para factor 34 via carga masiva.', '2025-12-17 10:37:47.854019', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', '{\"id\": 447, \"factor\": 34, \"calificacion\": 10004, \"valor\": 0.038031}', 10),
(1694, 'califica', '448', 'EDITAR', 'Califica editado para factor 35 via carga masiva.', '2025-12-17 10:37:47.878795', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', '{\"id\": 448, \"factor\": 35, \"calificacion\": 10004, \"valor\": 0.035794}', 10),
(1695, 'califica', '449', 'EDITAR', 'Califica editado para factor 36 via carga masiva.', '2025-12-17 10:37:47.902260', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', '{\"id\": 449, \"factor\": 36, \"calificacion\": 10004, \"valor\": 0.033557}', 10),
(1696, 'califica', '450', 'EDITAR', 'Califica editado para factor 37 via carga masiva.', '2025-12-17 10:37:47.926083', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', '{\"id\": 450, \"factor\": 37, \"calificacion\": 10004, \"valor\": 0.03132}', 10),
(1697, 'instrumento_financiero', '13', 'CREAR', 'Ingreso de Instrumento Financiero', '2025-12-17 10:39:25.362540', NULL, '{\"instrumento_id\": 13, \"codigo\": \"PHP PD\", \"descripcion\": \"INSTRUMENTO PRUEBA\", \"categoria\": \"T\\u00edtulos de Deuda (Renta Fija)\", \"bolsa\": \"BCS\", \"mercado\": \"Renta Fija\", \"estado\": \"Ingresado\"}', 10),
(1698, 'instrumento_financiero', '13', 'EDITAR', 'Modificacion de Instrumento Financiero', '2025-12-17 10:39:32.890692', '{\"instrumento_id\": 13, \"codigo\": \"PHP PD\", \"descripcion\": \"INSTRUMENTO PRUEBA 2\", \"categoria\": \"T\\u00edtulos de Deuda (Renta Fija)\", \"bolsa\": \"BCS\", \"mercado\": \"Renta Fija\", \"estado\": \"Ingresado\"}', '{\"instrumento_id\": 13, \"codigo\": \"PHP PD\", \"descripcion\": \"INSTRUMENTO PRUEBA 2\", \"categoria\": \"T\\u00edtulos de Deuda (Renta Fija)\", \"bolsa\": \"BCS\", \"mercado\": \"Renta Fija\", \"estado\": \"Ingresado\"}', 10),
(1699, 'instrumento_financiero', '13', 'ELIMINAR', 'Eliminación de Instrumento Financiero', '2025-12-17 10:39:38.793394', '{\"instrumento_id\": 13, \"codigo\": \"PHP PD\", \"descripcion\": \"INSTRUMENTO PRUEBA 2\", \"categoria\": \"T\\u00edtulos de Deuda (Renta Fija)\", \"bolsa\": \"BCS\", \"mercado\": \"Renta Fija\", \"estado\": \"Ingresado\"}', NULL, 10),
(1700, 'instrumento_financiero', '14', 'CREAR', 'Ingreso de Instrumento Financiero', '2025-12-17 10:41:47.493798', NULL, '{\"instrumento_id\": 14, \"codigo\": \"PHP DP\", \"descripcion\": \"INSTRUMENTO PRUEBA\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Fondos de Inversi\\u00f3n-Mutuos\", \"estado\": \"Ingresado\"}', 10),
(1701, 'instrumento_financiero', '14', 'EDITAR', 'Modificacion de Instrumento Financiero', '2025-12-17 10:41:52.953272', '{\"instrumento_id\": 14, \"codigo\": \"PHP DP\", \"descripcion\": \"INSTRUMENTO PRUEBA 2\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Fondos de Inversi\\u00f3n-Mutuos\", \"estado\": \"Ingresado\"}', '{\"instrumento_id\": 14, \"codigo\": \"PHP DP\", \"descripcion\": \"INSTRUMENTO PRUEBA 2\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Fondos de Inversi\\u00f3n-Mutuos\", \"estado\": \"Ingresado\"}', 10),
(1702, 'instrumento_financiero', '14', 'ELIMINAR', 'Eliminación de Instrumento Financiero', '2025-12-17 10:41:56.683791', '{\"instrumento_id\": 14, \"codigo\": \"PHP DP\", \"descripcion\": \"INSTRUMENTO PRUEBA 2\", \"categoria\": \"Acciones y Participaciones\", \"bolsa\": \"BVL\", \"mercado\": \"Fondos de Inversi\\u00f3n-Mutuos\", \"estado\": \"Ingresado\"}', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_califica`
--

CREATE TABLE `intranet_califica` (
  `id` bigint(20) NOT NULL,
  `valor` double NOT NULL,
  `calificacion_id` bigint(20) NOT NULL,
  `factor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_califica`
--

INSERT INTO `intranet_califica` (`id`, `valor`, `calificacion_id`, `factor_id`) VALUES
(301, 0.067797, 10002, 8),
(302, 0.070621, 10002, 9),
(303, 0.073446, 10002, 10),
(304, 0.076271, 10002, 11),
(305, 0.079096, 10002, 12),
(306, 0.081921, 10002, 13),
(307, 0.084746, 10002, 14),
(308, 0.087571, 10002, 15),
(309, 0.090395, 10002, 16),
(310, 0.09322, 10002, 17),
(311, 0.096045, 10002, 18),
(312, 0.09887, 10002, 19),
(313, 0.101695, 10002, 20),
(314, 0.10452, 10002, 21),
(315, 0.107345, 10002, 22),
(316, 0.110169, 10002, 23),
(317, 0.112994, 10002, 24),
(318, 0.115819, 10002, 25),
(319, 0.118644, 10002, 26),
(320, 0.121469, 10002, 27),
(321, 0.124294, 10002, 28),
(322, 0.127119, 10002, 29),
(323, 0.129944, 10002, 30),
(324, 0.132768, 10002, 31),
(325, 0.135593, 10002, 32),
(326, 0.138418, 10002, 33),
(327, 0.141243, 10002, 34),
(328, 0.144068, 10002, 35),
(329, 0.146893, 10002, 36),
(330, 0.149718, 10002, 37),
(391, 0.076739, 10003, 8),
(392, 0.077938, 10003, 9),
(393, 0.079137, 10003, 10),
(394, 0.080336, 10003, 11),
(395, 0.081535, 10003, 12),
(396, 0.082734, 10003, 13),
(397, 0.083933, 10003, 14),
(398, 0.085132, 10003, 15),
(399, 0.086331, 10003, 16),
(400, 0.08753, 10003, 17),
(401, 0.088729, 10003, 18),
(402, 0.089928, 10003, 19),
(403, 0.091127, 10003, 20),
(404, 0.092326, 10003, 21),
(405, 0.093525, 10003, 22),
(406, 0.094724, 10003, 23),
(407, 0.095923, 10003, 24),
(408, 0.097122, 10003, 25),
(409, 0.098321, 10003, 26),
(410, 0.09952, 10003, 27),
(411, 0.100719, 10003, 28),
(412, 0.101918, 10003, 29),
(413, 0.103118, 10003, 30),
(414, 0.104317, 10003, 31),
(415, 0.105516, 10003, 32),
(416, 0.106715, 10003, 33),
(417, 0.107914, 10003, 34),
(418, 0.109113, 10003, 35),
(419, 0.110312, 10003, 36),
(420, 0.111511, 10003, 37),
(421, 0.092841, 10004, 8),
(422, 0.091723, 10004, 9),
(423, 0.090604, 10004, 10),
(424, 0.089485, 10004, 11),
(425, 0.087248, 10004, 12),
(426, 0.085011, 10004, 13),
(427, 0.082774, 10004, 14),
(428, 0.080537, 10004, 15),
(429, 0.0783, 10004, 16),
(430, 0.076063, 10004, 17),
(431, 0.073826, 10004, 18),
(432, 0.071588, 10004, 19),
(433, 0.069351, 10004, 20),
(434, 0.067114, 10004, 21),
(435, 0.064877, 10004, 22),
(436, 0.06264, 10004, 23),
(437, 0.060403, 10004, 24),
(438, 0.058166, 10004, 25),
(439, 0.055928, 10004, 26),
(440, 0.053691, 10004, 27),
(441, 0.051454, 10004, 28),
(442, 0.049217, 10004, 29),
(443, 0.04698, 10004, 30),
(444, 0.044743, 10004, 31),
(445, 0.042506, 10004, 32),
(446, 0.040268, 10004, 33),
(447, 0.038031, 10004, 34),
(448, 0.035794, 10004, 35),
(449, 0.033557, 10004, 36),
(450, 0.03132, 10004, 37),
(751, 0.072235, 10000, 8),
(752, 0.092551, 10000, 9),
(753, 0.112867, 10000, 10),
(754, 0.069977, 10000, 11),
(755, 0.065463, 10000, 12),
(756, 0.060948, 10000, 13),
(757, 0.103837, 10000, 14),
(758, 0.085779, 10000, 15),
(759, 0.074492, 10000, 16),
(760, 0.079007, 10000, 17),
(761, 0.088036, 10000, 18),
(762, 0.094808, 10000, 19),
(763, 0.099323, 10000, 20),
(764, 0.106095, 10000, 21),
(765, 0.110609, 10000, 22),
(766, 0.115124, 10000, 23),
(767, 0.119639, 10000, 24),
(768, 0.124153, 10000, 25),
(769, 0.128668, 10000, 26),
(770, 0.133183, 10000, 27),
(771, 0.137698, 10000, 28),
(772, 0.142212, 10000, 29),
(773, 0.146727, 10000, 30),
(774, 0.151242, 10000, 31),
(775, 0.155756, 10000, 32),
(776, 0.160271, 10000, 33),
(777, 0.164786, 10000, 34),
(778, 0.1693, 10000, 35),
(779, 0.173815, 10000, 36),
(780, 0.17833, 10000, 37),
(781, 0.120614, 10001, 8),
(782, 0.131579, 10001, 9),
(783, 0.109649, 10001, 10),
(784, 0.041667, 10001, 11),
(785, 0.046053, 10001, 12),
(786, 0.050439, 10001, 13),
(787, 0.054825, 10001, 14),
(788, 0.066886, 10001, 15),
(789, 0.078947, 10001, 16),
(790, 0.091009, 10001, 17),
(791, 0.099781, 10001, 18),
(792, 0.108553, 10001, 19),
(793, 0.093202, 10001, 20),
(794, 0.083333, 10001, 21),
(795, 0.074013, 10001, 22),
(796, 0.059211, 10001, 23),
(797, 0.053728, 10001, 24),
(798, 0.048246, 10001, 25),
(799, 0.042763, 10001, 26),
(800, 0.038377, 10001, 27),
(801, 0.033991, 10001, 28),
(802, 0.029605, 10001, 29),
(803, 0.025219, 10001, 30),
(804, 0.020833, 10001, 31),
(805, 0.016447, 10001, 32),
(806, 0.012061, 10001, 33),
(807, 0.009868, 10001, 34),
(808, 0.007675, 10001, 35),
(809, 0.005482, 10001, 36),
(810, 0.003289, 10001, 37);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_calificacion_tributaria`
--

CREATE TABLE `intranet_calificacion_tributaria` (
  `secuencia_evento` bigint(20) NOT NULL,
  `mercado` varchar(50) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `fecha_pago` date NOT NULL,
  `dividendo` int(11) DEFAULT NULL,
  `valor_historico` bigint(20) DEFAULT NULL,
  `anio` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `origen_calificacion` varchar(20) NOT NULL,
  `isfut` tinyint(1) NOT NULL,
  `factor_actualizacion` decimal(10,6) NOT NULL,
  `evento_capital` int(11) DEFAULT NULL,
  `instrumento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_calificacion_tributaria`
--

INSERT INTO `intranet_calificacion_tributaria` (`secuencia_evento`, `mercado`, `descripcion`, `fecha_pago`, `dividendo`, `valor_historico`, `anio`, `estado`, `origen_calificacion`, `isfut`, `factor_actualizacion`, `evento_capital`, `instrumento_id`) VALUES
(10000, 'MERCADO INTERNACIONAL', 'DEP A PLAZO TEST 1', '2024-01-15', 1250000, 8700000, 2024, 'PENDIENTE', 'SISTEMA', 0, 0.000000, NULL, 1),
(10001, 'MERCADO MONETARIO', 'DEP A PLAZO CHILE', '2024-02-15', 980000, 6500000, 2024, 'PENDIENTE', 'SISTEMA', 0, 0.000000, NULL, 2),
(10002, 'FONDOS DE INVERSIÓN-MUTUOS', 'FONDO ETF TEST', '2024-03-15', 1570000, 4550000, 2024, 'PENDIENTE', 'SISTEMA', 1, 0.000000, NULL, 3),
(10003, 'FONDOS DE INVERSIÓN-MUTUOS', 'FONDO MUTUO CL TEST', '2024-04-15', 1640000, 7100000, 2024, 'PENDIENTE', 'SISTEMA', 0, 0.000000, NULL, 4),
(10004, 'ACCIONES', 'AMERICAN INTERNATIONAL TEST', '2024-05-15', 2000000, 9000000, 2024, 'PENDIENTE', 'SISTEMA', 0, 0.000000, NULL, 6);

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
-- Table structure for table `intranet_chat_privado`
--

CREATE TABLE `intranet_chat_privado` (
  `id` bigint(20) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `usuario1_id` bigint(20) NOT NULL,
  `usuario2_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_chat_privado`
--

INSERT INTO `intranet_chat_privado` (`id`, `fecha_creacion`, `usuario1_id`, `usuario2_id`) VALUES
(1, '2025-12-04 15:23:18.029674', 11, 19),
(2, '2025-12-04 16:44:20.939353', 10, 20),
(3, '2025-12-15 06:54:45.097717', 10, 1),
(4, '2025-12-15 08:24:02.155132', 20, 1),
(5, '2025-12-15 09:17:09.054147', 10, 23),
(6, '2025-12-17 04:05:16.847492', 10, 24);

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
(1, 'ADP', 'DEPOSITO A PLAZO', 'Efectivo y Depósitos', 'BCS', 'Mercado Internacional', 'VALIDADO'),
(2, 'ADPCL', 'DEPOSITO A PLAZO CHILE', 'Efectivo y Depósitos', 'BCS', 'Mercado Monetario', 'VALIDADO'),
(3, 'AGG', 'FONDOS ETF´s', 'Fondos', 'BVL', 'Fondos de Inversión-Mutuos', 'Ingresado'),
(4, 'AGGCL', 'FONDOS MUTUOS - FONDOS ETF´s', 'Fondos', 'BCS', 'Fondos de Inversión-Mutuos', 'Ingresado'),
(5, 'AIG', 'American International Group. - Dolares', 'Acciones y Participaciones', 'BVC', 'Mercado Internacional', 'Ingresado'),
(6, 'AIGCL', 'American International Group. - Pesos Chilenos', 'Acciones y Participaciones', 'BCS', 'Acciones', 'Ingresado'),
(7, 'AMGN', 'Amgen Inc. opciones, ETFs, fondos, divisas, materias primas y criptomonedas.', 'Fondos', 'BCS', 'Mercado Internacional', 'Ingresado'),
(8, 'AMGCL', 'Amgen Inc.  \r\nPatrocinador en Chile: BCI Corredor de Bolsa S.A. - Pesos Chilenos', 'Acciones y Participaciones', 'BCS', 'Acciones', 'Ingresado'),
(9, 'AXP', 'American Express Compan', 'Otras Cuentas-Derechos', 'BVL', 'Mercado Internacional', 'Ingresado'),
(10, 'AXPCL', 'American Express Compan - Pesos Chilenos', 'Acciones y Participaciones', 'BCS', 'Acciones', 'Ingresado'),
(11, 'BAC', 'Bank Of America Corp - Dolares', 'Otras Cuentas-Derechos', 'BVL', 'Mercado Internacional', 'Ingresado');

-- --------------------------------------------------------

--
-- Table structure for table `intranet_mensaje_privado`
--

CREATE TABLE `intranet_mensaje_privado` (
  `id` bigint(20) NOT NULL,
  `mensaje` longtext NOT NULL,
  `fecha_envio` datetime(6) NOT NULL,
  `chat_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_mensaje_privado`
--

INSERT INTO `intranet_mensaje_privado` (`id`, `mensaje`, `fecha_envio`, `chat_id`, `usuario_id`) VALUES
(11, 'Buenos días, don Daniel, requiero el reporte de auditoría de la última semana', '2025-12-17 10:51:34.135234', 5, 10),
(12, 'Perfecto señor Doe, contactaré de inmediato a los Auditores para que me hagan un resumen del reporte semanal de auditoría.', '2025-12-17 10:51:59.289664', 5, 23);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_notification`
--

CREATE TABLE `intranet_notification` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `mensaje` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `leida` tinyint(1) NOT NULL,
  `receptor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_notification`
--

INSERT INTO `intranet_notification` (`id`, `tipo`, `mensaje`, `fecha`, `leida`, `receptor_id`) VALUES
(1, 'Solicitud creada', 'Solicitud N° 4 creada por Admin Doe', '2025-12-04 17:11:11.068783', 1, 11),
(2, 'Solicitud creada', 'Solicitud N° 4 creada por Admin Doe', '2025-12-04 17:11:11.109247', 0, 19),
(3, 'Solicitud creada', 'Solicitud N° 5 creada por Auditor Doe', '2025-12-04 17:11:37.672412', 0, 1),
(4, 'Solicitud creada', 'Solicitud N° 5 creada por Auditor Doe', '2025-12-04 17:11:37.695292', 0, 10),
(5, 'Solicitud creada', 'Solicitud N° 5 creada por Auditor Doe', '2025-12-04 17:11:37.737302', 0, 20),
(6, 'Solicitud eliminada', 'Solicitud N° 4 eliminada por Admin Doe', '2025-12-04 17:11:59.508087', 0, 11),
(7, 'Solicitud eliminada', 'Solicitud N° 4 eliminada por Admin Doe', '2025-12-04 17:11:59.508668', 0, 19),
(8, 'Solicitud eliminada', 'Solicitud N° 5 eliminada por Auditor Doe', '2025-12-04 17:12:01.168194', 0, 1),
(9, 'Solicitud eliminada', 'Solicitud N° 5 eliminada por Auditor Doe', '2025-12-04 17:12:01.168859', 0, 10),
(10, 'Solicitud eliminada', 'Solicitud N° 5 eliminada por Auditor Doe', '2025-12-04 17:12:01.169721', 0, 20),
(11, 'Solicitud creada', 'Solicitud N° 6 creada por Admin Doe', '2025-12-17 03:36:40.084587', 0, 1),
(12, 'Solicitud creada', 'Solicitud N° 6 creada por Admin Doe', '2025-12-17 03:36:40.106735', 0, 10),
(13, 'Solicitud creada', 'Solicitud N° 6 creada por Admin Doe', '2025-12-17 03:36:40.131682', 0, 23),
(14, 'Solicitud creada', 'Solicitud N° 6 creada por Admin Doe', '2025-12-17 03:36:40.155711', 0, 24),
(15, 'Solicitud creada', 'Solicitud N° 6 creada por Admin Doe', '2025-12-17 03:36:40.179423', 0, 25),
(16, 'Solicitud creada', 'Solicitud N° 6 creada por Admin Doe', '2025-12-17 03:36:40.203383', 0, 26),
(17, 'Solicitud creada', 'Solicitud N° 7 creada por Admin Doe', '2025-12-17 10:46:15.629585', 0, 1),
(18, 'Solicitud creada', 'Solicitud N° 7 creada por Admin Doe', '2025-12-17 10:46:15.651942', 0, 10),
(19, 'Solicitud creada', 'Solicitud N° 7 creada por Admin Doe', '2025-12-17 10:46:15.676261', 0, 23),
(20, 'Solicitud creada', 'Solicitud N° 7 creada por Admin Doe', '2025-12-17 10:46:15.699980', 0, 24),
(21, 'Solicitud creada', 'Solicitud N° 7 creada por Admin Doe', '2025-12-17 10:46:15.723943', 0, 25),
(22, 'Solicitud creada', 'Solicitud N° 7 creada por Admin Doe', '2025-12-17 10:46:15.747921', 0, 26),
(23, 'Solicitud creada', 'Solicitud N° 8 creada por Daniel Rojas', '2025-12-17 10:49:05.524198', 0, 11),
(24, 'Solicitud creada', 'Solicitud N° 8 creada por Daniel Rojas', '2025-12-17 10:49:05.546948', 0, 19),
(25, 'Solicitud creada', 'Solicitud N° 8 creada por Daniel Rojas', '2025-12-17 10:49:05.572245', 0, 20),
(26, 'Solicitud creada', 'Solicitud N° 9 creada por Daniel Rojas', '2025-12-17 10:50:34.508487', 0, 1),
(27, 'Solicitud creada', 'Solicitud N° 9 creada por Daniel Rojas', '2025-12-17 10:50:34.538487', 0, 10),
(28, 'Solicitud creada', 'Solicitud N° 9 creada por Daniel Rojas', '2025-12-17 10:50:34.562401', 0, 23),
(29, 'Solicitud creada', 'Solicitud N° 9 creada por Daniel Rojas', '2025-12-17 10:50:34.602615', 0, 24),
(30, 'Solicitud creada', 'Solicitud N° 9 creada por Daniel Rojas', '2025-12-17 10:50:34.634572', 0, 25),
(31, 'Solicitud creada', 'Solicitud N° 9 creada por Daniel Rojas', '2025-12-17 10:50:34.658460', 0, 26),
(32, 'Solicitud eliminada', 'Solicitud N° 9 eliminada por Daniel Rojas', '2025-12-17 10:51:00.090797', 0, 1),
(33, 'Solicitud eliminada', 'Solicitud N° 9 eliminada por Daniel Rojas', '2025-12-17 10:51:00.091418', 0, 10),
(34, 'Solicitud eliminada', 'Solicitud N° 9 eliminada por Daniel Rojas', '2025-12-17 10:51:00.092163', 0, 23),
(35, 'Solicitud eliminada', 'Solicitud N° 9 eliminada por Daniel Rojas', '2025-12-17 10:51:00.093549', 0, 24),
(36, 'Solicitud eliminada', 'Solicitud N° 9 eliminada por Daniel Rojas', '2025-12-17 10:51:00.094493', 0, 25),
(37, 'Solicitud eliminada', 'Solicitud N° 9 eliminada por Daniel Rojas', '2025-12-17 10:51:00.095134', 0, 26);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_solicitud`
--

CREATE TABLE `intranet_solicitud` (
  `solicitud_id` int(11) NOT NULL,
  `motivo` longtext NOT NULL,
  `fecha` date DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `usuario_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intranet_solicitud`
--

INSERT INTO `intranet_solicitud` (`solicitud_id`, `motivo`, `fecha`, `group_id`, `usuario_id`) VALUES
(6, 'Informar al Super User que hay muchos bugs y errores en el código', '2025-12-17', 1, 10),
(7, 'Se requiere registrar a un nuevo corredor de bolsa', '2025-12-17', 1, 10),
(8, 'Se requiere validar la calificacion tributaria de secuencia evento 10002', '2025-12-17', 2, 23);

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
(1, 'pbkdf2_sha256$1000000$i8LhXJDBLc5YQGa5E4YLsV$yai5huDhI7JPC6jw/Ep4YljGHDTFJimIHUb0JqutZow=', '2025-12-01 09:10:12.763213', 1, 'Super', 'User', 1, 1, '2025-12-01 08:21:10.000000', 'superuser@nuam.com'),
(10, 'pbkdf2_sha256$1000000$kZjmsKAkZmv2Y6rNiuzIIf$jDtd76wjXYKWn8fCf/6MIYGavCmo2xZVznOuKXEmxho=', '2026-02-08 01:17:11.516080', 0, 'Admin', 'Doe', 0, 1, '2025-12-01 08:54:55.605816', 'admin@nuam.com'),
(11, 'pbkdf2_sha256$1000000$wGHVjTK3pJKIse8untiViI$P0ByaJ/3WPyLsObwgAbIbbiHDdxITQWz4pOYZVsnpj4=', '2026-02-08 01:20:09.062347', 0, 'Auditor', 'Doe', 0, 1, '2025-12-01 08:55:12.114170', 'auditor@nuam.com'),
(12, 'pbkdf2_sha256$1000000$1dK7hqKUsmy3gVvu6H5gTF$4PvVj5c6D5+p8ubLEt5V9CnawiRaixCmfruwpG29H7M=', '2026-02-08 01:20:39.521827', 0, 'Corredor', 'Doe', 0, 1, '2025-12-01 08:55:35.700550', 'corredor@nuam.com'),
(19, 'pbkdf2_sha256$1000000$ufL7LwvwqN6tdHQ3Svo1qy$6H2ypjECNNXi/ssM1k99W2TA/0CfBFl3u4+FB50/l9s=', '2025-12-04 16:05:25.790472', 0, 'Fernanda', 'Toledo', 0, 1, '2025-12-04 15:21:05.294845', 'auditor1@nuam.com'),
(20, 'pbkdf2_sha256$1000000$htHwqzSD8TwSPUz15zTN0w$5S85c69a8qVU9kH5xyIb8d9Lo+dNXBnwSSHjKHKgLwQ=', '2025-12-15 08:19:50.228379', 0, 'Roberto', 'Martinez', 0, 1, '2025-12-04 15:33:06.909960', 'auditor2@nuam.com'),
(21, 'pbkdf2_sha256$1000000$aBodG7Jr5VKFoq9VjrSLOO$qwipKo5QBO2qzIEXILcweZ9SztHfLvZK1uzGd0VOyp8=', NULL, 0, 'Felipe', 'Castillo', 0, 1, '2025-12-15 09:11:34.303432', 'corredor1@nuam.com'),
(22, 'pbkdf2_sha256$1000000$sQRlMpXL6rwodmbikGpnkY$1r+GRWqforoAgTLtQZCLO+UIMh939xfDmTgiDTDRdSo=', NULL, 0, 'Rodrigo', 'Robles', 0, 1, '2025-12-15 09:11:51.334822', 'corredor2@nuam.com'),
(23, 'pbkdf2_sha256$1000000$NhDURDeT7CA3vk9sT28Mnu$yHYEobhM942cWWvJ9idxvfFfODGShp1uqMbE5jgY/3Y=', '2025-12-17 10:45:27.388728', 0, 'Daniel', 'Rojas', 0, 1, '2025-12-15 09:12:06.203272', 'admin1@nuam.com'),
(24, 'pbkdf2_sha256$1000000$bClH0tRXucQEzL657yWrNU$x6OKOPBM1zS5rbBrWZvLmwAPastAD1q6xB4hia/PnGY=', NULL, 0, 'Emilia', 'Pinto', 0, 1, '2025-12-15 09:12:27.844850', 'admin2@nuam.com'),
(25, 'pbkdf2_sha256$1000000$DJHCrCTJWU3bBiVsPsEGcp$4DMgyJaRwRmKrBi+7E9Xd4Lg/e9PstapAdHNW/44n5M=', NULL, 0, 'Oscar', 'Flores', 0, 1, '2025-12-15 09:12:44.301552', 'admin3@nuam.com'),
(26, 'pbkdf2_sha256$1000000$kToakS8gJeTKdXInCce3Jc$IJUbCkFWnGlWQyD0C/3x/RrqpYlvq/GSBeH/s6mI2uQ=', NULL, 0, 'Jose', 'Fuentes', 0, 1, '2025-12-15 09:13:02.221742', 'admin4@nuam.com');

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
(1, 1, 1),
(10, 10, 1),
(11, 11, 2),
(12, 12, 3),
(22, 19, 2),
(23, 20, 2),
(24, 21, 3),
(25, 22, 3),
(26, 23, 1),
(27, 24, 1),
(28, 25, 1),
(29, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `intranet_user_user_permissions`
--

CREATE TABLE `intranet_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `intranet_auditoria`
--
ALTER TABLE `intranet_auditoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intranet_auditoria_usuario_id_b1bb78de_fk_Intranet_user_id` (`usuario_id`);

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
  ADD PRIMARY KEY (`secuencia_evento`),
  ADD KEY `Intranet_calificacio_instrumento_id_868bd9cb_fk_Intranet_` (`instrumento_id`);

--
-- Indexes for table `intranet_categoria_factor`
--
ALTER TABLE `intranet_categoria_factor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intranet_categoria_f_padre_id_2d6b5feb_fk_Intranet_` (`padre_id`);

--
-- Indexes for table `intranet_chat_privado`
--
ALTER TABLE `intranet_chat_privado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intranet_chat_privado_usuario1_id_c526e63d_fk_Intranet_user_id` (`usuario1_id`),
  ADD KEY `Intranet_chat_privado_usuario2_id_8c6440a6_fk_Intranet_user_id` (`usuario2_id`);

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
-- Indexes for table `intranet_mensaje_privado`
--
ALTER TABLE `intranet_mensaje_privado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intranet_mensaje_pri_chat_id_e28484a0_fk_Intranet_` (`chat_id`),
  ADD KEY `Intranet_mensaje_privado_usuario_id_54c88dbb_fk_Intranet_user_id` (`usuario_id`);

--
-- Indexes for table `intranet_notification`
--
ALTER TABLE `intranet_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intranet_notification_receptor_id_49ca62ce_fk_Intranet_user_id` (`receptor_id`);

--
-- Indexes for table `intranet_solicitud`
--
ALTER TABLE `intranet_solicitud`
  ADD PRIMARY KEY (`solicitud_id`),
  ADD KEY `Intranet_solicitud_group_id_eb4f1179_fk_auth_group_id` (`group_id`),
  ADD KEY `Intranet_solicitud_usuario_id_72a2a0c5_fk_Intranet_user_id` (`usuario_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `intranet_auditoria`
--
ALTER TABLE `intranet_auditoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1703;

--
-- AUTO_INCREMENT for table `intranet_califica`
--
ALTER TABLE `intranet_califica`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=811;

--
-- AUTO_INCREMENT for table `intranet_categoria_factor`
--
ALTER TABLE `intranet_categoria_factor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `intranet_chat_privado`
--
ALTER TABLE `intranet_chat_privado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `intranet_mensaje_privado`
--
ALTER TABLE `intranet_mensaje_privado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `intranet_notification`
--
ALTER TABLE `intranet_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `intranet_solicitud`
--
ALTER TABLE `intranet_solicitud`
  MODIFY `solicitud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `intranet_user`
--
ALTER TABLE `intranet_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `intranet_user_groups`
--
ALTER TABLE `intranet_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `intranet_user_user_permissions`
--
ALTER TABLE `intranet_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `intranet_auditoria`
--
ALTER TABLE `intranet_auditoria`
  ADD CONSTRAINT `Intranet_auditoria_usuario_id_b1bb78de_fk_Intranet_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `intranet_user` (`id`);

--
-- Constraints for table `intranet_califica`
--
ALTER TABLE `intranet_califica`
  ADD CONSTRAINT `Intranet_califica_calificacion_id_4ede9fe8_fk_Intranet_` FOREIGN KEY (`calificacion_id`) REFERENCES `intranet_calificacion_tributaria` (`secuencia_evento`),
  ADD CONSTRAINT `Intranet_califica_factor_id_d90edd10_fk_Intranet_` FOREIGN KEY (`factor_id`) REFERENCES `intranet_factor_calificacion` (`factor_id`);

--
-- Constraints for table `intranet_calificacion_tributaria`
--
ALTER TABLE `intranet_calificacion_tributaria`
  ADD CONSTRAINT `Intranet_calificacio_instrumento_id_868bd9cb_fk_Intranet_` FOREIGN KEY (`instrumento_id`) REFERENCES `intranet_instrumento_financiero` (`instrumento_id`);

--
-- Constraints for table `intranet_categoria_factor`
--
ALTER TABLE `intranet_categoria_factor`
  ADD CONSTRAINT `Intranet_categoria_f_padre_id_2d6b5feb_fk_Intranet_` FOREIGN KEY (`padre_id`) REFERENCES `intranet_categoria_factor` (`id`);

--
-- Constraints for table `intranet_chat_privado`
--
ALTER TABLE `intranet_chat_privado`
  ADD CONSTRAINT `Intranet_chat_privado_usuario1_id_c526e63d_fk_Intranet_user_id` FOREIGN KEY (`usuario1_id`) REFERENCES `intranet_user` (`id`),
  ADD CONSTRAINT `Intranet_chat_privado_usuario2_id_8c6440a6_fk_Intranet_user_id` FOREIGN KEY (`usuario2_id`) REFERENCES `intranet_user` (`id`);

--
-- Constraints for table `intranet_factor_calificacion`
--
ALTER TABLE `intranet_factor_calificacion`
  ADD CONSTRAINT `Intranet_factor_cali_categoria_id_f1d76899_fk_Intranet_` FOREIGN KEY (`categoria_id`) REFERENCES `intranet_categoria_factor` (`id`);

--
-- Constraints for table `intranet_mensaje_privado`
--
ALTER TABLE `intranet_mensaje_privado`
  ADD CONSTRAINT `Intranet_mensaje_pri_chat_id_e28484a0_fk_Intranet_` FOREIGN KEY (`chat_id`) REFERENCES `intranet_chat_privado` (`id`),
  ADD CONSTRAINT `Intranet_mensaje_privado_usuario_id_54c88dbb_fk_Intranet_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `intranet_user` (`id`);

--
-- Constraints for table `intranet_notification`
--
ALTER TABLE `intranet_notification`
  ADD CONSTRAINT `Intranet_notification_receptor_id_49ca62ce_fk_Intranet_user_id` FOREIGN KEY (`receptor_id`) REFERENCES `intranet_user` (`id`);

--
-- Constraints for table `intranet_solicitud`
--
ALTER TABLE `intranet_solicitud`
  ADD CONSTRAINT `Intranet_solicitud_group_id_eb4f1179_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `Intranet_solicitud_usuario_id_72a2a0c5_fk_Intranet_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `intranet_user` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
