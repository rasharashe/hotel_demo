-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 11:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add reg', 7, 'add_reg'),
(26, 'Can change reg', 7, 'change_reg'),
(27, 'Can delete reg', 7, 'delete_reg'),
(28, 'Can view reg', 7, 'view_reg'),
(29, 'Can add room', 8, 'add_room'),
(30, 'Can change room', 8, 'change_room'),
(31, 'Can delete room', 8, 'delete_room'),
(32, 'Can view room', 8, 'view_room'),
(33, 'Can add rm', 8, 'add_rm'),
(34, 'Can change rm', 8, 'change_rm'),
(35, 'Can delete rm', 8, 'delete_rm'),
(36, 'Can view rm', 8, 'view_rm'),
(37, 'Can add bk', 9, 'add_bk'),
(38, 'Can change bk', 9, 'change_bk'),
(39, 'Can delete bk', 9, 'delete_bk'),
(40, 'Can view bk', 9, 'view_bk');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'hotel_app', 'bk'),
(7, 'hotel_app', 'reg'),
(8, 'hotel_app', 'rm'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-21 12:42:05.282992'),
(2, 'auth', '0001_initial', '2021-04-21 12:42:09.680134'),
(3, 'admin', '0001_initial', '2021-04-21 12:42:30.504878'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-21 12:42:42.580976'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-21 12:42:42.767246'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-21 12:42:45.453695'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-21 12:42:49.517742'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-21 12:42:49.988815'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-21 12:42:50.104768'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-21 12:42:52.039609'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-21 12:42:52.155539'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-21 12:42:52.276869'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-21 12:42:52.581476'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-21 12:42:52.846427'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-21 12:42:53.393921'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-21 12:42:53.563265'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-21 12:42:53.926745'),
(18, 'hotel_app', '0001_initial', '2021-04-21 12:42:54.603300'),
(19, 'sessions', '0001_initial', '2021-04-21 12:42:55.897352'),
(20, 'hotel_app', '0002_reg_pic', '2021-04-21 14:04:46.861863'),
(21, 'hotel_app', '0003_auto_20210422_1453', '2021-04-22 09:23:08.813626'),
(22, 'hotel_app', '0004_room', '2021-04-25 17:05:12.400369'),
(23, 'hotel_app', '0005_auto_20210426_1031', '2021-04-26 05:01:35.640567'),
(24, 'hotel_app', '0006_rm_des', '2021-04-26 05:20:29.844823'),
(25, 'hotel_app', '0007_bk', '2021-04-26 15:19:14.656658'),
(26, 'hotel_app', '0008_bk_rm_num', '2021-04-26 15:28:20.790092'),
(27, 'hotel_app', '0009_rm_book', '2021-04-27 08:56:06.920318'),
(28, 'hotel_app', '0010_bk_status', '2021-04-29 08:16:15.086158'),
(29, 'hotel_app', '0011_rm_rg', '2021-04-29 09:05:11.584193'),
(30, 'hotel_app', '0012_remove_rm_rg', '2021-04-29 09:06:04.864467'),
(31, 'hotel_app', '0013_auto_20210429_1621', '2021-04-29 10:51:41.961200');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('81g3g9r31nj9sertwtozc7huxxhxsov2', 'eyJsb2dpbmlkIjozfQ:1ldUnz:HgV1U8Cj7Hr7oewrkN1l3Y9I5BiG-7RfFP4T23Kn1pI', '2021-05-17 09:23:55.405759'),
('m1oj25wo14bm70x3ihllh21vqw7hcbzf', 'eyJsb2dpbmlkIjoxfQ:1lckpl:A8Yjc79adyg18sMXFodonOkl4iMMHl2BheQs3_0td8E', '2021-05-15 08:18:41.805763');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_app_bk`
--

CREATE TABLE `hotel_app_bk` (
  `id` int(11) NOT NULL,
  `p_num` varchar(100) NOT NULL,
  `c_num` varchar(100) NOT NULL,
  `date_in` varchar(100) NOT NULL,
  `date_out` varchar(100) NOT NULL,
  `rg1_id` int(11) NOT NULL,
  `rm1_id` int(11) NOT NULL,
  `rm_num` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_app_bk`
--

INSERT INTO `hotel_app_bk` (`id`, `p_num`, `c_num`, `date_in`, `date_out`, `rg1_id`, `rm1_id`, `rm_num`, `status`) VALUES
(28, '1', '1', '2021-04-29', '2021-04-29', 3, 1, 'A101', 'Cancelled'),
(29, '1', '2', '2021-04-30', '2021-05-01', 3, 2, 'A102', 'Cancelled'),
(31, '2', '2', '2021-05-09', '2021-05-09', 3, 1, 'A101', 'Cancelled'),
(32, '2', '2', '2021-04-30', '2021-04-30', 3, 6, 'A103', 'Cancelled'),
(33, '2', '2', '2021-05-01', '2021-05-02', 3, 1, 'A101', 'Cancelled'),
(34, '2', '2', '2021-05-25', '2021-05-20', 4, 2, 'A102', 'Cancelled'),
(35, '2', '2', '2021-06-06', '2021-06-06', 4, 1, 'A101', 'Cancelled'),
(36, '1', '2', '2021-05-02', '2021-05-02', 3, 2, 'A102', 'Cancelled'),
(37, '3', '2', '2021-06-05', '2021-06-06', 4, 1, 'A101', 'Checked Out'),
(38, '2', '2', '2021-06-03', '2021-05-27', 3, 2, 'A102', 'Cancelled'),
(39, '3', '2', '2021-05-26', '2021-05-29', 3, 6, 'A103', 'Booked'),
(40, '2', '2', '2021-05-28', '2021-05-11', 3, 1, 'A101', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_app_reg`
--

CREATE TABLE `hotel_app_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_app_reg`
--

INSERT INTO `hotel_app_reg` (`id`, `name`, `email`, `password`, `phone`, `pic`, `status`, `usertype`) VALUES
(1, 'Rashad', 'rashad@gmail.com', 'a', '9544545344', 'pics/OIP.jpg', 'approved', 'admin'),
(3, 'Shanil', 'shanil@gmail.com', 'a', '7559814476', 'pics/OIP_1.jpg', 'approved', 'user'),
(4, 'Thanseer', 'thanseer@gmail.com', 'a', '9876543210', 'pics/default.jpg', 'approved', 'user'),
(5, 'Suhail', 'suhail@gmail.com', 'a', '987655434334', 'pics/default.jpg', 'pending', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_app_rm`
--

CREATE TABLE `hotel_app_rm` (
  `id` int(11) NOT NULL,
  `r_num` varchar(100) NOT NULL,
  `b_type` varchar(100) NOT NULL,
  `ac` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `r_pic` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `book` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_app_rm`
--

INSERT INTO `hotel_app_rm` (`id`, `r_num`, `b_type`, `ac`, `price`, `r_pic`, `des`, `book`) VALUES
(1, 'A101', 'Single', 'A/C', '600', 'room_pic/b4.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum del', 'Pending'),
(2, 'A102', 'Double', 'A/C', '1200', 'room_pic/b2.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum del', 'Available'),
(6, 'A103', 'Full', 'A/C', '2000', 'room_pic/r2.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum del', 'Booked');

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `hotel_app_bk`
--
ALTER TABLE `hotel_app_bk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_bk_rg1_id_da3fdb2e_fk_hotel_app_reg_id` (`rg1_id`),
  ADD KEY `hotel_app_bk_rm1_id_328a5f3b_fk_hotel_app_rm_id` (`rm1_id`);

--
-- Indexes for table `hotel_app_reg`
--
ALTER TABLE `hotel_app_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_app_rm`
--
ALTER TABLE `hotel_app_rm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hotel_app_bk`
--
ALTER TABLE `hotel_app_bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `hotel_app_reg`
--
ALTER TABLE `hotel_app_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_app_rm`
--
ALTER TABLE `hotel_app_rm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hotel_app_bk`
--
ALTER TABLE `hotel_app_bk`
  ADD CONSTRAINT `hotel_app_bk_rg1_id_da3fdb2e_fk_hotel_app_reg_id` FOREIGN KEY (`rg1_id`) REFERENCES `hotel_app_reg` (`id`),
  ADD CONSTRAINT `hotel_app_bk_rm1_id_328a5f3b_fk_hotel_app_rm_id` FOREIGN KEY (`rm1_id`) REFERENCES `hotel_app_rm` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
