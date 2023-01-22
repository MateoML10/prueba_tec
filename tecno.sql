-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2023 a las 06:41:36
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecno`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add empleados', 7, 'add_empleados'),
(26, 'Can change empleados', 7, 'change_empleados'),
(27, 'Can delete empleados', 7, 'delete_empleados'),
(28, 'Can view empleados', 7, 'view_empleados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$nRoJL45MOToLRhf4gTqW3G$/QFf8du7/ZwJN9E0iLkn1MaPFPUf2dYnUgH4CSJ+pRY=', '2023-01-20 18:50:42.822734', 0, 'mateo', '', '', '', 0, 1, '2023-01-20 18:50:42.044762'),
(5, 'pbkdf2_sha256$390000$d4BdJMXdYMdyFIHOayh2ql$Jap11+Qrxoh2CwIS8Bt3HheiBlNFnUcbUKSPDkyi4nk=', '2023-01-22 03:34:58.030141', 0, 'sharon', '', '', '', 0, 1, '2023-01-20 19:58:02.192631'),
(6, 'pbkdf2_sha256$390000$0Ie54VsYFAbg5DX2RfFYy9$wQVWRwESxL6DmNfr2D3sbH0SaF9w4QoeO0rvaiC5Gm0=', '2023-01-21 14:48:52.273023', 0, 'andrea', '', '', '', 0, 1, '2023-01-21 14:48:01.026813'),
(7, 'pbkdf2_sha256$390000$pbyUsL7cZVhFbu5SsY7WqE$Xoj9FIK/Cyljqt6GgEn9QZHz97pGpTlSybFkFwzZBCQ=', '2023-01-21 15:06:40.813972', 0, 'esther', '', '', '', 0, 1, '2023-01-21 15:06:40.007798'),
(8, 'pbkdf2_sha256$390000$u8uUBBDZU7KjJb3XJk0y8L$MA3mZNmRMiqfJT2+vyT4mzMSbx5ZSAoc6qIoQ84oh0U=', '2023-01-21 15:07:53.530167', 0, 'hola', '', '', '', 0, 1, '2023-01-21 15:07:52.714653'),
(9, 'pbkdf2_sha256$390000$0AmGCTKngzauZVp1PCQ9DR$4PvFyYiG/Vu9UoPJf0uJmXr+tVeSjS03cx98oO01BHM=', '2023-01-22 05:25:06.139042', 0, 'mateo2', '', '', '', 0, 1, '2023-01-21 21:50:32.444424'),
(10, 'pbkdf2_sha256$390000$syqWgrZGwOOrSls4cD3vJQ$SbVkT3ZG9uLc4JHxhUHYUPUeQPOEwS/3Yli5WJ1MnYM=', '2023-01-22 04:58:01.810093', 0, 'Admin', '', '', '', 0, 1, '2023-01-22 04:58:01.020295'),
(11, 'pbkdf2_sha256$390000$gOpEF6Ep6p872YS7jjiVMr$oVU5UANQTu6w6r+msSPPa8amCEoV6hHkfGFzN3Ncv9k=', '2023-01-22 04:59:51.816089', 0, 'ad', '', '', '', 0, 1, '2023-01-22 04:59:51.370318'),
(12, 'pbkdf2_sha256$390000$ZgexUnRC3mJ77d3hH2TyfE$4SP6qnKrpPr3tCQAfciq6cwhAlyY/lGrhz36N+p0yms=', '2023-01-22 05:00:34.491328', 0, 'ab', '', '', '', 0, 1, '2023-01-22 05:00:34.079146');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'myapp', 'empleados'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-20 04:06:52.582236'),
(2, 'auth', '0001_initial', '2023-01-20 04:06:53.019163'),
(3, 'admin', '0001_initial', '2023-01-20 04:06:53.109463'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-20 04:06:53.125401'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-20 04:06:53.141480'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-20 04:06:53.198976'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-20 04:06:53.235063'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-20 04:06:53.259865'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-20 04:06:53.267856'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-20 04:06:53.317901'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-20 04:06:53.326795'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-20 04:06:53.332552'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-20 04:06:53.356873'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-20 04:06:53.372926'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-20 04:06:53.397609'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-20 04:06:53.410273'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-20 04:06:53.430997'),
(18, 'sessions', '0001_initial', '2023-01-20 04:06:53.505834'),
(19, 'myapp', '0001_initial', '2023-01-20 21:23:55.933501'),
(20, 'myapp', '0002_alter_empleados_table', '2023-01-21 16:15:55.805944'),
(21, 'myapp', '0003_alter_empleados_table', '2023-01-21 16:29:43.261848'),
(22, 'myapp', '0004_alter_empleados_table', '2023-01-21 18:55:27.903450'),
(23, 'myapp', '0005_alter_empleados_table', '2023-01-21 19:02:08.720885');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_empleados`
--

CREATE TABLE `myapp_empleados` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `cc` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefono` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myapp_empleados`
--

INSERT INTO `myapp_empleados` (`id`, `nombres`, `cc`, `fecha_nacimiento`, `email`, `telefono`) VALUES
(1, 'sharon Andrea benitez ayala', '1002209952', '2001-11-03', 'sharon7984@hotmail.com', '3014736547'),
(2, 'mateo morelo libonatti', '1001824910', '2002-01-17', 'mateol@gmail.com', '3022886772'),
(8, 'humberto florez', '1001782453', '2011-05-19', 'humber123@gmail.com', '3214567199'),
(9, 'daniel charris', '3716609', '1990-10-31', 'danielC@hotmail.com', '3022800073'),
(10, 'Sergio jimenez', '78087265', '2008-02-21', 'sergio@gmail.com', '3004405186');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `myapp_empleados`
--
ALTER TABLE `myapp_empleados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `myapp_empleados`
--
ALTER TABLE `myapp_empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;