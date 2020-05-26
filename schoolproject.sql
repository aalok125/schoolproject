-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 04:23 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `key`, `value`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'total_student', '500', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(2, 'male_student', '230', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(3, 'female_student', '270', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(4, 'dalit_student', '56', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(5, 'disable_student', '24', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(6, 'name', 'Siksha Sadan', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(7, 'description', 'A better step towards a better future', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(8, 'address', 'Dhulikhel, Kathmandu', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(9, 'phone', '+977-1-5200300', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(10, 'email', 'info@sikshasadan.edu.np', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(11, 'vdc_name', 'Kavre', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(12, 'logo', 'images/about/1590259329B.png', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(13, 'vdc_logo', 'images/about/1590259329logo.png', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(14, 'facebook_link', 'https://facebook.com', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(15, 'twitter_link', 'https://twitter.com', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(16, 'youtube_link', 'https://youtube.com', 1, '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(17, 'about', '<p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">Budhanilkantha School (CEEB Code: 689070), located in the capital city, Kathmandu, is the government designated National School of Nepal. It is a fully residential English medium school established in December 1972 with the joint cooperation of the Government of Nepal and the Government of the United Kingdom (UK). In the first two decades of its operation, the school was headed by a succession of British Headmasters who did an excellent job of establishing and shaping the school into a “Center of Excellence”. The school was handed over to the Nepalese management in 1994 and since then it has continued to maintain the same high standards in all fronts. &nbsp;At present, the number of faculty is 77&nbsp;and the non - teaching&nbsp;staff is 160&nbsp;with student faculty ratio of almost 13:1.</p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">The School is managed under the Public Trust, the main Trustee being the Ministry of Education. The Board of Trustees and the School Management Committee (SMC) are chaired by the Education Secretary and the Joint Secretary respectively. Society of Ex Budhanilkantha Students (SEBS), the alumni association&nbsp;and Friends of Budhanilkantha School (FOBS) are the two organizations that keenly take interest in the welfare of the school.</p>', 1, '2020-05-23 13:02:47', '2020-05-23 13:02:47'),
(18, 'history', '<p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">The idea of establishing a model school that would provide quality all-round education to meritorious students coming from every walk of life in an environment that fosters unity in diversity was conceived in 1964. &nbsp;The idea was initiated by the Late King Mahendra in consultation with the then British Council representative, Lynndon Clough.</p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\"><br>After much planning and forethought, Budhanilkantha School came into existence in 1972. As a joint venture between the Government of the United Kingdom and the Government of Nepal, the Nepali government provided the required land and the British government provided all the technical and financial assistance.</p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">Teaching started in 1973 with one building, 82 students (all boys) and about a dozen teachers. The same building served as the hostel, the cafeteria and the classrooms. The construction of other buildings (hostels, classrooms, dinning hall, assembly hall, sports hall and staff quarters) was completed by the end of 1978. Peter J. Wakeman became the first Headmaster of Budhanilkantha School and Mr. Ratna Bahadur Tamot and Mr. Gehendra Man Udas were the first Nepali personel to be appointed as teachers.</p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\"><br></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\"><a href=\"https://website.edigitalnepal.com/uploads/page/page-20191221201150-256.jpg\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(0, 86, 179); text-decoration-line: underline; background-color: rgb(255, 255, 255); text-align: left;\"><img class=\"w-100 mb-3\" src=\"https://website.edigitalnepal.com/uploads/page/page-20191221201150-256.jpg\" alt=\"History\" style=\"width: 810px;\"></a></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">T<span style=\"font-weight: bolder;\">he following personnel have taken the leadership in the growth and shaping of Budhanilkantha School.</span></p><ul style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\"><li>John B Tyson, &nbsp;Headmaster Designate (1966)</li><li>Peter J Wakeman, Headmaster (1972 to 1977)</li><li>Ken Jones, Headmaster (1978 to 1982)</li><li>Dr. Tej Ratna Kansakar, Acting Headmaster (1983)</li><li>John Tyson, Headmaster (1983 to 1988)</li><li>Brian Garton, Headmaster (1989 to 1992)</li><li>Thomas Thomas, Headmaster (1992 to 1994)</li><li>Satyanarayan Rajbhandari, Principal (1994 to 1995)</li><li>Narayan Prasad Sharma, Principal (1996 to 13 April 2013)</li><li>Keshar Bahadur Khulal, Principal &nbsp;( 14 April 2013 1 May 2019)</li><li>Hom Nath Acharya, Principal ( 2 May 2019 to</li></ul><p style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\"><br></p>', 1, '2020-05-23 13:04:01', '2020-05-23 13:04:01'),
(19, 'welcome_message', '<blockquote>Our school brings together children and adults of wide variety of ethnic groups and nationalities in inter-cultural network/harmony while celebrating the diversity of our school population. We also seek to forge among parents, students, teaching and non-teaching staff. This unified and caring community exhibits mutual respect and understanding where each individual feels welcomed and valued.</blockquote>', 1, '2020-05-24 13:15:30', '2020-05-24 13:15:30'),
(20, 'adhyaksh_image', 'images/about/1590347067istockphoto-1040308104-612x612.jpg', 1, '2020-05-24 13:15:30', '2020-05-24 13:19:28'),
(21, 'adhyaksh_message', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px;\">Pathshala, as always, is determined to foster not only knowledge development of learners but also their multiple intelligence and to cultivate the sentiment of global changes and challenges. Such achievements are possible only through the inspiring and able faculty members. Only they can transform the motto of the school, ‘meaningful education for meaningful life’, into the reality. Therefore, we value the welfare of our teachers by providing better working environment and opportunities to grow professionally as well as personally. We encourage them to use the best resources and their best experiences.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px;\">We assure that Pathshala is all set for the new years ahead with new endeavors towards the new height of achievements! We welcome all to work and walk hand in hand with us in creating a new meaningful sensation in the world of learners! Let us all come together to render our part of meaningful contribution to the society, nation and the world.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px;\">We welcome you at Pathshala at New Baneshwor or Bagdol to discover what we offer and what really makes Pathshala an appropriate school for your child.</p>', 1, '2020-05-24 13:15:30', '2020-05-24 13:15:30'),
(22, 'principal_image', 'images/about/1590347068gettyimages-480440376-612x612.jpg', 1, '2020-05-24 13:15:30', '2020-05-24 13:19:28'),
(23, 'principal_message', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\">Welcome to Pathshala, a learning organization that thrives always to learn the best practices in local and global context and keep transforming itself as a whole institution!</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\">Pathshala is the institution that believes in providing opportunities and environment for children to aspire for high achievement with practice of values. Pathshala Team is well aware of the fact that every individual child has innate potential that has to be identified and nurtured in time. Therefore, it is well prepared to encourage every student’s insightful learning with confidence and skills.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\">The vision and implementation strategies for progress of this institution has inspired many which encouraged us to perform better every year with wider innovations and deep-commitment day in and day out. This also has enabled us to gain the trust of children, their parents and guardians and many well-wishers of the society. Their support and wishes have made us thrive more for the best outcome and move ahead. Pathshala successfully sent the nine batches of SLC/SEE graduates.</p>', 1, '2020-05-24 13:15:30', '2020-05-24 13:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'deleted', 1, 'App\\Model\\Student', 3, 'App\\User', '{\"attributes\":{\"name\":\"Josiah Roberts\",\"slug\":\"josiah-roberts\",\"image\":null,\"grade_id\":1,\"ethnicity_id\":1,\"address\":\"Ratione autem in ver\",\"gender\":\"Male\",\"disability\":\"No\",\"religion\":\"Hindu\",\"DOB\":\"2007-02-06\",\"guardian_name\":\"Elvis Rocha\",\"guardian_phone\":\"+1 (984) 915-8492\",\"guardian_email\":null,\"occupation_id\":1,\"school_id\":1}}', '2020-04-10 06:48:26', '2020-04-10 06:48:26'),
(2, 'default', 'deleted', 2, 'App\\Model\\Student', 3, 'App\\User', '{\"attributes\":{\"name\":\"Aileen Beck\",\"slug\":\"aileen-beck\",\"image\":null,\"grade_id\":2,\"ethnicity_id\":1,\"address\":\"Veniam voluptas des\",\"gender\":\"Male\",\"disability\":\"No\",\"religion\":\"Hindu\",\"DOB\":\"2002-09-10\",\"guardian_name\":\"Flynn Lawson\",\"guardian_phone\":\"+1 (661) 473-9012\",\"guardian_email\":null,\"occupation_id\":1,\"school_id\":1}}', '2020-04-10 06:50:30', '2020-04-10 06:50:30'),
(3, 'default', 'created', 1, 'App\\Model\\Album', 3, 'App\\User', '{\"attributes\":{\"title\":\"Program\",\"slug\":\"program\",\"school_id\":1}}', '2020-05-21 21:49:05', '2020-05-21 21:49:05'),
(4, 'default', 'created', 1, 'App\\Model\\Gallery', 3, 'App\\User', '{\"attributes\":{\"album_id\":1,\"title\":null,\"image\":\"images\\/album\\/program\\/159011846495244966_319222415714481_190659405065224192_n (1).jpg\",\"school_id\":1}}', '2020-05-21 21:49:24', '2020-05-21 21:49:24'),
(5, 'default', 'created', 2, 'App\\Model\\Gallery', 3, 'App\\User', '{\"attributes\":{\"album_id\":1,\"title\":null,\"image\":\"images\\/album\\/program\\/1590118467default.png\",\"school_id\":1}}', '2020-05-21 21:49:27', '2020-05-21 21:49:27'),
(6, 'default', 'created', 3, 'App\\Model\\Gallery', 3, 'App\\User', '{\"attributes\":{\"album_id\":1,\"title\":null,\"image\":\"images\\/album\\/program\\/1590118471logo.png\",\"school_id\":1}}', '2020-05-21 21:49:31', '2020-05-21 21:49:31'),
(7, 'default', 'created', 2, 'App\\Model\\AssetCategory', 3, 'App\\User', '{\"attributes\":{\"title\":\"Computer Lab\",\"school_id\":1}}', '2020-05-21 21:50:33', '2020-05-21 21:50:33'),
(8, 'default', 'created', 2, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"Computer\",\"slug\":\"computer\",\"quantity\":12,\"asset_category_id\":2,\"remarks\":null,\"school_id\":1}}', '2020-05-21 21:51:01', '2020-05-21 21:51:01'),
(9, 'default', 'created', 1, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":2,\"image\":\"images\\/asset\\/computer\\/1590118572wi-fi-wireless-network-icon-clip-art-wifi-icon-png.jpg\",\"school_id\":1}}', '2020-05-21 21:51:12', '2020-05-21 21:51:12'),
(10, 'default', 'created', 2, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":2,\"image\":\"images\\/asset\\/computer\\/1590118576default.png\",\"school_id\":1}}', '2020-05-21 21:51:16', '2020-05-21 21:51:16'),
(11, 'default', 'created', 1, 'App\\Model\\Notice', 1, 'App\\User', '{\"attributes\":{\"title\":\"\\u0928\\u0947\\u092a\\u093e\\u0932\\u092e\\u0948 \\u0905\\u0927\\u094d\\u092f\\u092f\\u0928\\u0915\\u093e \\u0905\\u092c\\u0938\\u0930 \\u0926\\u0947\\u0916\\u093e\\u0909\\u0901\\u0926\\u0948 \\u2018\\u0938\\u094d\\u091f\\u0921\\u0940 \\u0907\\u0928 \\u0928\\u0947\\u092a\\u093e\\u0932\\u2019 \\u092b\\u0947\\u092f\\u0930 \\u0906\\u092f\\u094b\\u091c\\u0928\\u093e \\u0939\\u0941\\u0928\\u0947\",\"slug\":\"na-pa-lma-athha-yayanaka-absara-tha-kha-u-tha-sa-tada-ina-na-pa-l-fa-yara-aaya-jana-ha-na\",\"image\":\"images\\/notice\\/1590234328education-study-in-nepal.jpg\",\"content\":\"<p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0915\\u093e\\u0920\\u092e\\u093e\\u0923\\u094d\\u0921\\u094c \\u0964 \\u0936\\u0939\\u0930\\u0915\\u093e \\u0918\\u0930\\u0918\\u0930\\u092e\\u093e \\u0906\\u091c\\u0915\\u0932 \\u0938\\u094d\\u091f\\u0921\\u0940 \\u0907\\u0928 \\u092b\\u0932\\u093e\\u0928\\u094b \\u0926\\u0947\\u0936 \\u092d\\u0928\\u094d\\u0926\\u0948 \\u091f\\u093e\\u0901\\u0938\\u093f\\u090f\\u0915\\u093e \\u092c\\u094b\\u0930\\u094d\\u0921\\u0915\\u094b \\u092c\\u093f\\u0917\\u092c\\u093f\\u0917\\u0940 \\u091b \\u0964 \\u091d\\u091f\\u094d\\u091f \\u0939\\u0947\\u0930\\u094d\\u0926\\u093e \\u092f\\u0938\\u094d\\u0924\\u094b \\u0932\\u093e\\u0917\\u094d\\u091b, \\u0928\\u0947\\u092a\\u093e\\u0932\\u092e\\u093e \\u0909\\u091a\\u094d\\u091a \\u0936\\u093f\\u0915\\u094d\\u0937\\u093e\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u0915\\u0941\\u0928\\u0948 \\u0905\\u092c\\u0938\\u0930 \\u0928\\u0948 \\u091b\\u0948\\u0928\\u094d \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0924\\u0930, \\u0928\\u0947\\u092a\\u093e\\u0932\\u092e\\u093e \\u092f\\u0938\\u094d\\u0924\\u093e \\u0936\\u093f\\u0915\\u094d\\u0937\\u0923 \\u0938\\u0902\\u0938\\u094d\\u0925\\u093e\\u0939\\u0930\\u0941 \\u092a\\u0928\\u093f \\u091b\\u0928\\u094d \\u091c\\u0939\\u093e\\u0901 \\u092d\\u0930\\u094d\\u0928\\u093e \\u0938\\u093f\\u091f\\u092d\\u0928\\u094d\\u0926\\u093e \\u0938\\u092f\\u094c\\u0902 \\u0917\\u0941\\u0923\\u093e \\u0906\\u092c\\u0947\\u0926\\u0928 \\u092a\\u0930\\u094d\\u091b\\u0928 \\u0930 \\u0924\\u094d\\u092f\\u0938\\u094d\\u0924\\u093e \\u0915\\u0932\\u0947\\u091c\\u0939\\u0930\\u0941\\u092e\\u093e \\u092d\\u0930\\u094d\\u0928\\u093e \\u092a\\u093e\\u0909\\u0928\\u0941 \\u0938\\u094c\\u092d\\u093e\\u0917\\u094d\\u092f \\u0920\\u093e\\u0928\\u093f\\u0928\\u094d\\u091b \\u0964 \\u092c\\u093f\\u0926\\u0947\\u0936\\u0940 \\u0936\\u093f\\u0915\\u094d\\u0937\\u0923 \\u0938\\u0902\\u0938\\u094d\\u0925\\u093e\\u0915\\u094b \\u0924\\u0941\\u0932\\u0928\\u093e \\u0928\\u093f\\u0915\\u0948 \\u0905\\u092c\\u094d\\u092c\\u0932 \\u0920\\u0939\\u0930\\u093f\\u090f\\u0915\\u093e \\u0928\\u0947\\u092a\\u093e\\u0932\\u0915\\u093e \\u092f\\u0938\\u094d\\u0924\\u0948 \\u0936\\u0948\\u0915\\u094d\\u0937\\u093f\\u0915 \\u0938\\u0902\\u0938\\u094d\\u0925\\u093e \\u0930 \\u092a\\u0922\\u093e\\u0907\\u0915\\u094b \\u0905\\u092c\\u0938\\u0930\\u092c\\u093e\\u0930\\u0947 \\u091c\\u093e\\u0928\\u0915\\u093e\\u0930\\u0940 \\u0926\\u093f\\u0928 \\u0915\\u093e\\u0920\\u092e\\u093e\\u0923\\u094d\\u0921\\u094c\\u092e\\u093e \\u2018\\u0938\\u094d\\u091f\\u0921\\u0940 \\u0907\\u0928 \\u0928\\u0947\\u092a\\u093e\\u0932\\u2019 \\u092e\\u0947\\u0932\\u093e \\u0906\\u092f\\u094b\\u091c\\u0928\\u093e \\u0939\\u0941\\u0901\\u0926\\u0948 \\u091b \\u0964<\\/p>\",\"status\":\"Active\",\"school_id\":1}}', '2020-05-23 06:00:30', '2020-05-23 06:00:30'),
(12, 'default', 'created', 2, 'App\\Model\\Notice', 1, 'App\\User', '{\"attributes\":{\"title\":\"\\u0938\\u0930\\u0915\\u093e\\u0930\\u0932\\u0947 \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f\\u0932\\u093e\\u0908 \\u092d\\u0928\\u094d\\u092f\\u094b \\u2013 \\u0905\\u0928\\u0932\\u093e\\u0907\\u0928 \\u0915\\u0915\\u094d\\u0937\\u093e\\u0915\\u093e \\u0928\\u093e\\u092e\\u092e\\u093e \\u0936\\u0941\\u0932\\u094d\\u0915 \\u0928\\u0932\\u093f\\u0928\\u0942\",\"slug\":\"saraka-ral-va-tha-ya-lyal-ii-bhana-ya-anal-ina-kaka-shha-ka-na-mama-sha-l-ka-nal-na\",\"image\":\"images\\/notice\\/1590235167education.jpg\",\"content\":\"<p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0968\\u0968 \\u0935\\u0948\\u0936\\u093e\\u0916, \\u0915\\u093e\\u0920\\u092e\\u093e\\u0921\\u094c\\u0902 \\u0964 \\u0938\\u0930\\u0915\\u093e\\u0930\\u0932\\u0947 \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f\\u0939\\u0930\\u0941\\u0932\\u093e\\u0908 \\u0915\\u0941\\u0928\\u0948 \\u092a\\u0928\\u093f \\u0915\\u0915\\u094d\\u0937\\u093e, \\u0924\\u0939 \\u0930 \\u0905\\u0928\\u0932\\u093e\\u0907\\u0928 \\u0915\\u0915\\u094d\\u0937\\u093e\\u0915\\u093e \\u0928\\u093e\\u092e\\u092e\\u093e \\u092d\\u0930\\u094d\\u0928\\u093e \\u0928\\u0932\\u093f\\u0928 \\u0930 \\u0936\\u0941\\u0932\\u094d\\u0915 \\u0928\\u0932\\u093f\\u0928 \\u0906\\u0917\\u094d\\u0930\\u0939 \\u0917\\u0930\\u0947\\u0915\\u094b \\u091b \\u0964<\\/p>\",\"status\":\"Active\",\"school_id\":1}}', '2020-05-23 06:14:27', '2020-05-23 06:14:27'),
(13, 'default', 'updated', 1, 'App\\Model\\StaffType', 3, 'App\\User', '{\"attributes\":{\"title\":\"Teacher\",\"remarks\":\"Subject Teacher\"},\"old\":{\"title\":\"tret\",\"remarks\":\"retert\"}}', '2020-05-23 10:48:04', '2020-05-23 10:48:04'),
(14, 'default', 'created', 2, 'App\\Model\\StaffType', 3, 'App\\User', '{\"attributes\":{\"title\":\"Principal\",\"remarks\":null,\"school_id\":1}}', '2020-05-23 10:48:27', '2020-05-23 10:48:27'),
(15, 'default', 'created', 3, 'App\\Model\\StaffType', 3, 'App\\User', '{\"attributes\":{\"title\":\"Head of Department\",\"remarks\":\"Science Department\",\"school_id\":1}}', '2020-05-23 10:48:52', '2020-05-23 10:48:52'),
(16, 'default', 'created', 4, 'App\\Model\\StaffType', 3, 'App\\User', '{\"attributes\":{\"title\":\"Head of Department\",\"remarks\":\"Nepali Department\",\"school_id\":1}}', '2020-05-23 10:49:21', '2020-05-23 10:49:21'),
(17, 'default', 'created', 1, 'App\\Model\\Staff', 3, 'App\\User', '{\"attributes\":{\"name\":\"Ram Gyawali\",\"slug\":\"ram-gyawali\",\"job_title\":\"Math Teacher\",\"join_date\":\"2020-05-23\",\"address\":\"Kavre, Dhulikhel\",\"gender\":\"Male\",\"DOB\":\"1985-05-22\",\"phone\":\"9851234567\",\"email\":\"ram@gmail.com\",\"staff_type_id\":1}}', '2020-05-23 10:55:45', '2020-05-23 10:55:45'),
(18, 'default', 'created', 2, 'App\\Model\\Staff', 3, 'App\\User', '{\"attributes\":{\"name\":\"Sita Basnet\",\"slug\":\"sita-basnet\",\"job_title\":\"Nepali Teacher\",\"join_date\":\"2020-05-25\",\"address\":\"Balkhu, Lalitpur\",\"gender\":\"Female\",\"DOB\":\"1987-04-23\",\"phone\":\"9841234567\",\"email\":\"sita@gmail.com\",\"staff_type_id\":1}}', '2020-05-23 11:01:54', '2020-05-23 11:01:54'),
(19, 'default', 'This model has been created', 6, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"name\",\"value\":\"Siksha Sadan\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(20, 'default', 'This model has been created', 7, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"description\",\"value\":\"A better step towards a better future\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(21, 'default', 'This model has been created', 8, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"address\",\"value\":\"Dhulikhel, Kathmandu\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(22, 'default', 'This model has been created', 9, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"phone\",\"value\":\"+977-1-5200300\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(23, 'default', 'This model has been created', 10, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"email\",\"value\":\"info@sikshasadan.edu.np\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(24, 'default', 'This model has been created', 11, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"vdc_name\",\"value\":\"Kavre\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(25, 'default', 'This model has been created', 12, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"logo\",\"value\":\"images\\/about\\/1590259329B.png\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(26, 'default', 'This model has been created', 13, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"vdc_logo\",\"value\":\"images\\/about\\/1590259329logo.png\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(27, 'default', 'This model has been created', 14, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"facebook_link\",\"value\":\"https:\\/\\/facebook.com\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(28, 'default', 'This model has been created', 15, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"twitter_link\",\"value\":\"https:\\/\\/twitter.com\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(29, 'default', 'This model has been created', 16, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"youtube_link\",\"value\":\"https:\\/\\/youtube.com\",\"school_id\":1}}', '2020-05-23 12:57:09', '2020-05-23 12:57:09'),
(30, 'default', 'This model has been created', 17, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"about\",\"value\":\"<p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\">Budhanilkantha School (CEEB Code: 689070), located in the capital city, Kathmandu, is the government designated National School of Nepal. It is a fully residential English medium school established in December 1972 with the joint cooperation of the Government of Nepal and the Government of the United Kingdom (UK). In the first two decades of its operation, the school was headed by a succession of British Headmasters who did an excellent job of establishing and shaping the school into a \\u201cCenter of Excellence\\u201d. The school was handed over to the Nepalese management in 1994 and since then it has continued to maintain the same high standards in all fronts. &nbsp;At present, the number of faculty is 77&nbsp;and the non - teaching&nbsp;staff is 160&nbsp;with student faculty ratio of almost 13:1.<\\/p><p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\">The School is managed under the Public Trust, the main Trustee being the Ministry of Education. The Board of Trustees and the School Management Committee (SMC) are chaired by the Education Secretary and the Joint Secretary respectively. Society of Ex Budhanilkantha Students (SEBS), the alumni association&nbsp;and Friends of Budhanilkantha School (FOBS) are the two organizations that keenly take interest in the welfare of the school.<\\/p>\",\"school_id\":1}}', '2020-05-23 13:02:47', '2020-05-23 13:02:47'),
(31, 'default', 'This model has been created', 18, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"history\",\"value\":\"<p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\">The idea of establishing a model school that would provide quality all-round education to meritorious students coming from every walk of life in an environment that fosters unity in diversity was conceived in 1964. &nbsp;The idea was initiated by the Late King Mahendra in consultation with the then British Council representative, Lynndon Clough.<\\/p><p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\"><br>After much planning and forethought, Budhanilkantha School came into existence in 1972. As a joint venture between the Government of the United Kingdom and the Government of Nepal, the Nepali government provided the required land and the British government provided all the technical and financial assistance.<\\/p><p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\">Teaching started in 1973 with one building, 82 students (all boys) and about a dozen teachers. The same building served as the hostel, the cafeteria and the classrooms. The construction of other buildings (hostels, classrooms, dinning hall, assembly hall, sports hall and staff quarters) was completed by the end of 1978. Peter J. Wakeman became the first Headmaster of Budhanilkantha School and Mr. Ratna Bahadur Tamot and Mr. Gehendra Man Udas were the first Nepali personel to be appointed as teachers.<\\/p><p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\"><br><\\/p><p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\"><a href=\\\"https:\\/\\/website.edigitalnepal.com\\/uploads\\/page\\/page-20191221201150-256.jpg\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"color: rgb(0, 86, 179); text-decoration-line: underline; background-color: rgb(255, 255, 255); text-align: left;\\\"><img class=\\\"w-100 mb-3\\\" src=\\\"https:\\/\\/website.edigitalnepal.com\\/uploads\\/page\\/page-20191221201150-256.jpg\\\" alt=\\\"History\\\" style=\\\"width: 810px;\\\"><\\/a><\\/p><p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\">T<span style=\\\"font-weight: bolder;\\\">he following personnel have taken the leadership in the growth and shaping of Budhanilkantha School.<\\/span><\\/p><ul style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\"><li>John B Tyson, &nbsp;Headmaster Designate (1966)<\\/li><li>Peter J Wakeman, Headmaster (1972 to 1977)<\\/li><li>Ken Jones, Headmaster (1978 to 1982)<\\/li><li>Dr. Tej Ratna Kansakar, Acting Headmaster (1983)<\\/li><li>John Tyson, Headmaster (1983 to 1988)<\\/li><li>Brian Garton, Headmaster (1989 to 1992)<\\/li><li>Thomas Thomas, Headmaster (1992 to 1994)<\\/li><li>Satyanarayan Rajbhandari, Principal (1994 to 1995)<\\/li><li>Narayan Prasad Sharma, Principal (1996 to 13 April 2013)<\\/li><li>Keshar Bahadur Khulal, Principal &nbsp;( 14 April 2013 1 May 2019)<\\/li><li>Hom Nath Acharya, Principal ( 2 May 2019 to<\\/li><\\/ul><p style=\\\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\\\"><br><\\/p>\",\"school_id\":1}}', '2020-05-23 13:04:02', '2020-05-23 13:04:02'),
(32, 'default', 'updated', 1, 'App\\Model\\AssetCategory', 3, 'App\\User', '{\"attributes\":{\"title\":\"Library\"},\"old\":{\"title\":\"dsfsdfsd\"}}', '2020-05-23 13:20:07', '2020-05-23 13:20:07'),
(33, 'default', 'created', 3, 'App\\Model\\AssetCategory', 3, 'App\\User', '{\"attributes\":{\"title\":\"Science Lab\",\"school_id\":1}}', '2020-05-23 13:21:03', '2020-05-23 13:21:03'),
(34, 'default', 'created', 3, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"Microcontrollers\",\"slug\":\"microcontrollers\",\"quantity\":5,\"asset_category_id\":2,\"remarks\":null,\"school_id\":1}}', '2020-05-23 13:21:42', '2020-05-23 13:21:42'),
(35, 'default', 'created', 4, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"Microscope\",\"slug\":\"microscope\",\"quantity\":4,\"asset_category_id\":3,\"remarks\":null,\"school_id\":1}}', '2020-05-23 13:22:10', '2020-05-23 13:22:10'),
(36, 'default', 'created', 5, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"Centrifuge\",\"slug\":\"centrifuge\",\"quantity\":1,\"asset_category_id\":3,\"remarks\":null,\"school_id\":1}}', '2020-05-23 13:22:29', '2020-05-23 13:22:29'),
(37, 'default', 'created', 6, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"Pipettes and burettes\",\"slug\":\"pipettes-and-burettes\",\"quantity\":10,\"asset_category_id\":3,\"remarks\":null,\"school_id\":1}}', '2020-05-23 13:22:58', '2020-05-23 13:22:58'),
(38, 'default', 'updated', 1, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"Educational Books\",\"quantity\":50,\"remarks\":null},\"old\":{\"title\":\"dsfsdfds\",\"quantity\":null,\"remarks\":\"dsfsdf\"}}', '2020-05-23 13:23:25', '2020-05-23 13:23:25'),
(39, 'default', 'created', 7, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"English Novels\",\"slug\":\"english-novels\",\"quantity\":20,\"asset_category_id\":1,\"remarks\":null,\"school_id\":1}}', '2020-05-23 13:23:47', '2020-05-23 13:23:47'),
(40, 'default', 'updated', 2, 'App\\Model\\AssetCategory', 3, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2020-05-23 13:48:23', '2020-05-23 13:48:23'),
(41, 'default', 'created', 1, 'App\\Model\\News', 3, 'App\\User', '{\"attributes\":{\"title\":\"\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940 \\u092c\\u0922\\u0947, \\u0935\\u094d\\u092f\\u093e\\u092a\\u093e\\u0930 \\u092c\\u0922\\u094d\\u092f\\u094b \\u0924\\u0930 \\u092b\\u0938\\u094d\\u091f\\u093e\\u090f\\u0928 \\u0928\\u0947\\u092a\\u093e\\u0932\\u2013\\u0905\\u0937\\u094d\\u091f\\u094d\\u0930\\u0947\\u0932\\u093f\\u092f\\u093e \\u0938\\u092e\\u094d\\u092c\\u0928\\u094d\\u0927\",\"slug\":\"va-tha-ya-ra-tha-bdha-va-ya-pa-ra-bdha-ya-tara-fasa-ta-ena-na-pa-l-ashha-ta-ra-l-ya-sama-bna-thha\",\"image\":\"images\\/news\\/15903441681562061983.jpg\",\"content\":\"<p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0928\\u0947\\u092a\\u093e\\u0932\\u0940 \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940\\u0915\\u093e \\u092c\\u093e\\u0930\\u0947\\u092e\\u093e \\u0938\\u093f\\u0921\\u094d\\u0928\\u0940 \\u092e\\u0930\\u094d\\u0928\\u093f\\u0919 \\u0939\\u0947\\u0930\\u093e\\u0932\\u094d\\u0921\\u092e\\u093e \\u0939\\u093e\\u0932\\u0948 \\u092a\\u094d\\u0930\\u0915\\u093e\\u0936\\u093f\\u0924&nbsp;<a href=\\\"https:\\/\\/www.smh.com.au\\/national\\/it-s-just-abusive-experts-issue-warning-over-nepalese-student-surge-20191219-p53lhm.html\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\\\">\\u090f\\u0915 \\u0935\\u093f\\u0936\\u0947\\u0937 \\u0930\\u093f\\u092a\\u094b\\u0930\\u094d\\u091f<\\/a>\\u0932\\u0947 \\u0905\\u0937\\u094d\\u091f\\u094d\\u0930\\u0947\\u0932\\u093f\\u092f\\u093e\\u0938\\u094d\\u0925\\u093f\\u0924 \\u0928\\u0947\\u092a\\u093e\\u0932\\u0940 \\u0938\\u092e\\u0941\\u0926\\u093e\\u092f, \\u092c\\u0941\\u0926\\u094d\\u0927\\u0940\\u091c\\u0940\\u0935\\u0940 \\u090f\\u0935\\u0902 \\u0920\\u0942\\u0932\\u093e \\u0938\\u093e\\u0928\\u093e \\u0938\\u092c\\u0948 \\u092e\\u093f\\u0921\\u093f\\u092f\\u093e\\u0932\\u093e\\u0908 \\u0924\\u0930\\u0902\\u0917\\u093f\\u0924 \\u092c\\u0928\\u093e\\u092f\\u094b \\u0964 \\u0938\\u093e\\u092e\\u093e\\u091c\\u093f\\u0915 \\u0938\\u091e\\u094d\\u091c\\u093e\\u0932 \\u0930 \\u0932\\u093e\\u092e\\u094b \\u092c\\u093f\\u0926\\u093e\\u0915\\u094b \\u0916\\u093e\\u0928\\u092a\\u093f\\u0928\\u0915\\u093e \\u091c\\u092e\\u0918\\u091f\\u0939\\u0930\\u0941\\u092e\\u093e \\u0938\\u092e\\u0947\\u0924 \\u092f\\u094b \\u0935\\u093f\\u0937\\u092f\\u0932\\u0947 \\u091a\\u0930\\u094d\\u091a\\u093e \\u092a\\u093e\\u092f\\u094b \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0905\\u0937\\u094d\\u091f\\u094d\\u0930\\u0947\\u0932\\u093f\\u092f\\u0928 \\u0928\\u0947\\u0936\\u0928\\u0932 \\u092f\\u0941\\u0928\\u093f\\u092d\\u0930\\u094d\\u0938\\u093f\\u091f\\u0940\\u0915\\u093e&nbsp;<a href=\\\"https:\\/\\/andrewnorton.net.au\\/about-me\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\\\">\\u092a\\u094d\\u0930\\u093e\\u0927\\u094d\\u092f\\u093e\\u092a\\u0915 \\u090f\\u0928\\u094d\\u0921\\u094d\\u0930\\u092f\\u0941 \\u0928\\u0930\\u094d\\u091f\\u0928<\\/a>&nbsp;\\u0930 \\u0938\\u093f\\u0921\\u094d\\u0928\\u0940 \\u092f\\u0941\\u0928\\u093f\\u092d\\u0930\\u094d\\u0938\\u093f\\u091f\\u0940\\u0915\\u093e&nbsp;<a href=\\\"https:\\/\\/sydney.edu.au\\/arts\\/about\\/our-people\\/academic-staff\\/salvatore-babones.html\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\\\">\\u0938\\u0939-\\u092a\\u094d\\u0930\\u093e\\u0927\\u094d\\u092f\\u093e\\u092a\\u0915 \\u0938\\u093e\\u0932\\u094d\\u092d\\u093e\\u091f\\u094b\\u0930 \\u092c\\u092c\\u094b\\u0928\\u094d\\u0938<\\/a>\\u0932\\u0947 \\u0939\\u0947\\u0930\\u093e\\u0932\\u094d\\u0921\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u0926\\u093f\\u090f\\u0915\\u094b \\u092a\\u094d\\u0930\\u0924\\u093f\\u0915\\u0943\\u092f\\u093e\\u0932\\u093e\\u0908 \\u0930\\u093e\\u091c\\u0928\\u0940\\u0924\\u093f\\u0915 \\u092c\\u094d\\u092f\\u0941\\u0930\\u094b\\u0915\\u093e \\u0930\\u093f\\u092a\\u094b\\u0930\\u094d\\u091f\\u0930&nbsp;<a href=\\\"https:\\/\\/muckrack.com\\/michaelkoziol\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\\\">\\u092e\\u093e\\u0907\\u0915\\u0932 \\u0915\\u094b\\u091c\\u094b\\u0907\\u0932<\\/a>\\u0932\\u0947 \\u092c\\u093f\\u0936\\u0947\\u0937 (\\u090f\\u0915\\u094d\\u0938\\u094d\\u0932\\u0941\\u091c\\u093f\\u092d) \\u0930\\u093f\\u092a\\u094b\\u0930\\u094d\\u091f \\u092d\\u0928\\u0947\\u0930 \\u0932\\u0947\\u0916\\u093f\\u0926\\u093f\\u090f \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0938\\u0930\\u0938\\u0930\\u094d\\u0924\\u0940 \\u0939\\u0947\\u0930\\u094d\\u0926\\u093e \\u0905\\u0928\\u094d\\u0924\\u0930\\u094d\\u0930\\u093e\\u0937\\u094d\\u091f\\u094d\\u0930\\u093f\\u092f \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940, \\u0936\\u0948\\u0915\\u094d\\u0937\\u093f\\u0915 \\u092a\\u0930\\u093e\\u092e\\u0930\\u094d\\u0936\\u0926\\u093e\\u0924\\u093e, \\u092d\\u093f\\u0937\\u093e\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u0915\\u093e\\u092e \\u0917\\u0930\\u094d\\u0928\\u0947 \\u090f\\u091c\\u0947\\u0928\\u094d\\u091f \\u0935\\u093e \\u0915\\u092e\\u093f\\u0938\\u0928\\u0916\\u094b\\u0930\\u0915\\u093e \\u0930\\u094d\\u200d\\u092f\\u093e\\u0915\\u0947\\u091f\\u0939\\u0930\\u0941\\u0932\\u0947 \\u0917\\u0930\\u094d\\u0928\\u0947 \\u0917\\u0930\\u0947\\u0915\\u094b \\u092d\\u0928\\u093f\\u090f\\u0915\\u094b \\u0905\\u0928\\u093f\\u092f\\u092e\\u093f\\u0924 \\u0935\\u093e \\u0905\\u0928\\u0948\\u0924\\u093f\\u0915 \\u0915\\u093e\\u092e \\u0915\\u093e\\u0930\\u0935\\u093e\\u0939\\u0940\\u0935\\u093f\\u0930\\u0941\\u0926\\u094d\\u0927 \\u091a\\u0928\\u093e\\u0916\\u094b \\u092d\\u090f\\u091d\\u0948\\u0902 \\u0926\\u0947\\u0916\\u093f\\u0928\\u0947 \\u0905\\u0937\\u094d\\u091f\\u094d\\u0930\\u0947\\u0932\\u093f\\u092f\\u093e \\u0938\\u0930\\u0915\\u093e\\u0930\\u0915\\u094b \\u0917\\u0924\\u093f\\u0935\\u093f\\u0927\\u093f \\u0930 \\u0938\\u092e\\u094d\\u092c\\u0928\\u094d\\u0927\\u093f\\u0924 \\u0906\\u092a\\u094d\\u0930\\u0935\\u093e\\u0938\\u0940 \\u0938\\u092e\\u093e\\u091c\\u092e\\u093e \\u092f\\u0938 \\u0915\\u093e\\u0930\\u0923 \\u0938\\u093f\\u0930\\u094d\\u091c\\u093f\\u0924 \\u092c\\u0939\\u0938\\u0932\\u0947 \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940 \\u0927\\u0947\\u0930\\u0948 \\u092a\\u0920\\u093e\\u0909\\u0928\\u0947 \\u0926\\u0947\\u0936\\u0939\\u0930\\u0941\\u0915\\u093e \\u0938\\u0930\\u0915\\u093e\\u0930 \\u0928\\u0940\\u0924\\u093f \\u0928\\u093f\\u0930\\u094d\\u092e\\u093e\\u0924\\u093e \\u0930 \\u0938\\u0930\\u094d\\u0935\\u0938\\u093e\\u0927\\u093e\\u0930\\u0923\\u092e\\u093e \\u092a\\u0928\\u093f \\u0938\\u0915\\u093e\\u0930\\u093e\\u0924\\u094d\\u092e\\u0915 \\u0930 \\u0928\\u0915\\u093e\\u0930\\u093e\\u0924\\u094d\\u092e\\u0915 \\u0926\\u0941\\u0935\\u0948\\u0916\\u093e\\u0932\\u0915\\u094b \\u092a\\u094d\\u0930\\u092d\\u093e\\u0935 \\u092a\\u093e\\u0930\\u0947\\u0915\\u094b \\u0939\\u0941\\u0928\\u0941\\u092a\\u0930\\u094d\\u091b \\u0964 \\u092f\\u0938\\u0932\\u0947 \\u0938\\u0941\\u0930\\u0915\\u094d\\u0937\\u093f\\u0924 \\u0930 \\u0938\\u0941\\u0928\\u094d\\u0926\\u0930 \\u092d\\u0935\\u093f\\u0936\\u094d\\u092f\\u0915\\u094b \\u0938\\u092a\\u0928\\u093e \\u0938\\u091c\\u093e\\u090f\\u0930 \\u0938\\u093e\\u0924 \\u0938\\u092e\\u0941\\u0928\\u094d\\u093d\\u092a\\u093e\\u0930\\u093f\\u0915\\u094b \\u0926\\u0947\\u0936 \\u0905\\u0937\\u094d\\u091f\\u094d\\u0930\\u0947\\u0932\\u093f\\u092f\\u093e\\u092e\\u093e \\u092a\\u093e\\u0907\\u0932\\u093e \\u091f\\u0947\\u0915\\u094d\\u0928\\u0947 \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940 \\u0930 \\u0924\\u093f\\u0928\\u0915\\u094b \\u092a\\u0920\\u0928\\u092a\\u093e\\u0920\\u0928\\u092e\\u093e \\u0932\\u0917\\u093e\\u0928\\u0940 \\u0917\\u0930\\u094d\\u0928 \\u0906\\u0924\\u0941\\u0930 \\u0905\\u092d\\u093f\\u092d\\u093e\\u0935\\u0915\\u092e\\u093e \\u092a\\u0928\\u093f \\u090f\\u0915\\u0916\\u093e\\u0932\\u0915\\u094b \\u0905\\u0928\\u094d\\u092f\\u094b\\u0932 \\u0938\\u093f\\u0930\\u094d\\u091c\\u0928\\u093e \\u0917\\u0930\\u094d\\u200d\\u092f\\u094b \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\"><img class=\\\" wp-image-826274 alignleft\\\" src=\\\"https:\\/\\/www.onlinekhabar.com\\/wp-content\\/uploads\\/2020\\/01\\/Dr-Bharat-Raj-Poudel_Photo-1.jpg\\\" alt=\\\"\\\" width=\\\"256\\\" height=\\\"255\\\" srcset=\\\"https:\\/\\/www.onlinekhabar.com\\/wp-content\\/uploads\\/2020\\/01\\/Dr-Bharat-Raj-Poudel_Photo-1.jpg 448w, https:\\/\\/www.onlinekhabar.com\\/wp-content\\/uploads\\/2020\\/01\\/Dr-Bharat-Raj-Poudel_Photo-1-300x300.jpg 300w, https:\\/\\/www.onlinekhabar.com\\/wp-content\\/uploads\\/2020\\/01\\/Dr-Bharat-Raj-Poudel_Photo-1-150x150.jpg 150w\\\" sizes=\\\"(max-width: 256px) 100vw, 256px\\\" style=\\\"height: auto; max-width: 100%; display: inline; float: left; margin-right: 1.5em;\\\">\\u0930\\u093e\\u092e\\u094d\\u0930\\u0948 \\u0928\\u093f\\u092f\\u0924\\u0932\\u0947 \\u092d\\u0928\\u093f\\u090f\\u0915\\u0948 \\u092d\\u090f \\u092a\\u0928\\u093f \\u092f\\u0939\\u0940 \\u0930\\u093f\\u092a\\u094b\\u0930\\u094d\\u091f\\u092e\\u093e \\u091a\\u094d\\u0935\\u093e\\u0938\\u094d\\u0938 \\u0939\\u0941\\u0928\\u0947 \\u0915\\u0947\\u0939\\u0940 \\u0938\\u0928\\u094d\\u0926\\u0930\\u094d\\u092d\\u0939\\u0930\\u0941 \\u091c\\u094b\\u0921\\u093f\\u0926\\u093f\\u090f\\u0930 \\u092a\\u094d\\u0930\\u093e\\u0927\\u094d\\u092f\\u093e\\u092a\\u0915 \\u0928\\u0930\\u094d\\u091f\\u0928\\u0932\\u0947 \\u0928\\u0947\\u092a\\u093e\\u0932 \\u0930 \\u0928\\u0947\\u092a\\u093e\\u0932\\u0940\\u0915\\u094b \\u092e\\u0928 \\u0926\\u0941\\u0916\\u093e\\u090f\\u0915\\u094b \\u092e\\u0939\\u0938\\u0941\\u0938 \\u0905\\u0937\\u094d\\u091f\\u094d\\u0930\\u0947\\u0932\\u093f\\u092f\\u093e\\u0938\\u094d\\u0925\\u093f\\u0924 \\u092c\\u0939\\u0941\\u0938\\u0902\\u0916\\u094d\\u092f\\u0915 \\u0928\\u0947\\u092a\\u093e\\u0932\\u0940\\u0939\\u0930\\u0941\\u0932\\u0947 \\u0917\\u0930\\u0947\\u0915\\u093e \\u0925\\u093f\\u090f \\u0964 \\u0924\\u094d\\u092f\\u0938\\u094d\\u0924\\u0948, \\u0917\\u0930\\u0940\\u092c \\u092a\\u0930\\u093f\\u0935\\u093e\\u0930\\u092e\\u093e\\u0925\\u093f \\u092a\\u0922\\u093e\\u0907 \\u0930 \\u0915\\u093e\\u092e\\u0915\\u094b \\u0938\\u093f\\u0932\\u0938\\u093f\\u0932\\u093e\\u092e\\u093e \\u0939\\u0941\\u0928 \\u0938\\u0915\\u094d\\u0928\\u0947 \\u0936\\u094b\\u0937\\u0923\\u0915\\u094b \\u0938\\u094d\\u0925\\u093f\\u0924\\u093f \\u0930\\u094b\\u0915\\u094d\\u0928\\u0947\\u0924\\u0930\\u094d\\u092b \\u092e\\u0941\\u0916\\u094d\\u092f \\u092d\\u0942\\u092e\\u093f\\u0915\\u093e \\u0928\\u0916\\u0947\\u0932\\u0947\\u0915\\u094b \\u092d\\u0928\\u094d\\u0926\\u0948&nbsp;<a href=\\\"https:\\/\\/www.theage.com.au\\/by\\/michael-koziol-hvf7q\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\\\">\\u0938\\u0939-\\u092a\\u094d\\u0930\\u093e\\u0927\\u094d\\u092f\\u093e\\u092a\\u0915 \\u092c\\u092c\\u094b\\u0928\\u094d\\u0938<\\/a>\\u0932\\u0947 \\u0938\\u0930\\u0915\\u093e\\u0930 \\u0930 \\u0935\\u093f\\u0936\\u094d\\u0935\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f\\u0939\\u0930\\u0941\\u0915\\u094b \\u0906\\u0932\\u094b\\u091a\\u0928\\u093e \\u0917\\u0930\\u0947\\u0915\\u093e\\u0932\\u0947 \\u092a\\u0928\\u093f \\u0928\\u0947\\u092a\\u093e\\u0932 \\u0930 \\u0928\\u0947\\u092a\\u093e\\u0932\\u0940\\u0938\\u0901\\u0917\\u0948 \\u0915\\u094d\\u092f\\u093e\\u0928\\u092c\\u0947\\u0930\\u093e\\u0938\\u094d\\u0925\\u093f\\u0924 \\u0928\\u0947\\u092a\\u093e\\u0932\\u0940 \\u0926\\u0942\\u0924\\u093e\\u0935\\u093e\\u0938\\u0932\\u0947 \\u092a\\u0928\\u093f \\u092f\\u094b \\u0935\\u093f\\u0937\\u092f\\u0932\\u093e\\u0908 \\u0928\\u094b\\u091f\\u093f\\u0938\\u092e\\u093e \\u0932\\u093f\\u0928\\u0941\\u092a\\u0930\\u094d\\u0928\\u0947 \\u0938\\u094d\\u0925\\u093f\\u0924\\u093f \\u0909\\u0924\\u094d\\u092a\\u0928\\u094d\\u0928 \\u092d\\u090f\\u0915\\u094b \\u0925\\u093f\\u092f\\u094b \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\"><span style=\\\"font-weight: 700;\\\">\\u0938\\u0928\\u094d\\u0926\\u0930\\u094d\\u092d \\u0915\\u0947 \\u0925\\u093f\\u092f\\u094b ? \\u091a\\u0930\\u094d\\u091a\\u093e \\u0915\\u093f\\u0928 \\u092d\\u092f\\u094b \\u0924 ?<\\/span><\\/p>\",\"status\":\"Active\",\"school_id\":1}}', '2020-05-24 12:31:10', '2020-05-24 12:31:10'),
(42, 'default', 'created', 2, 'App\\Model\\News', 3, 'App\\User', '{\"attributes\":{\"title\":\"\\u092e\\u0902\\u0938\\u093f\\u0930\\u092c\\u093e\\u091f \\u0938\\u0930\\u094d\\u091f\\u093f\\u092b\\u093f\\u0915\\u0947\\u091f \\u0927\\u093f\\u0924\\u094b\\u092e\\u093e \\u0930\\u093e\\u0916\\u0947\\u0930 \\u096d \\u0932\\u093e\\u0916\\u0938\\u092e\\u094d\\u092e \\u090b\\u0923, \\u092f\\u0938\\u094d\\u0924\\u094b \\u091b \\u0924\\u092f\\u093e\\u0930\\u0940\",\"slug\":\"ma-sa-rab-ta-sara-ta-fa-ka-ta-thha-ta-ma-ra-kha-ra-l-khasama-ma-rinae-yasa-ta-chha-taya-ra\",\"image\":\"images\\/news\\/1590344257education-loan.jpg\",\"content\":\"<p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0967\\u096b \\u0938\\u093e\\u0909\\u0928, \\u0915\\u093e\\u0920\\u092e\\u093e\\u0921\\u094c\\u0902 \\u0964 \\u0936\\u0948\\u0915\\u094d\\u0937\\u093f\\u0915 \\u092c\\u0947\\u0930\\u094b\\u091c\\u0917\\u093e\\u0930\\u0939\\u0930\\u0941\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u0938\\u0930\\u0915\\u093e\\u0930\\u0932\\u0947 \\u091a\\u093e\\u0932\\u0941 \\u0906\\u0930\\u094d\\u0925\\u093f\\u0915 \\u0935\\u0930\\u094d\\u0937\\u092c\\u093e\\u091f\\u0948 \\u0936\\u0948\\u0915\\u094d\\u0937\\u093f\\u0915 \\u092f\\u094b\\u0917\\u094d\\u092f\\u0924\\u093e\\u0915\\u094b \\u092a\\u094d\\u0930\\u092e\\u093e\\u0923\\u092a\\u0924\\u094d\\u0930 (\\u090f\\u0915\\u0947\\u0921\\u0947\\u092e\\u093f\\u0915 \\u0938\\u0930\\u094d\\u091f\\u093f\\u092b\\u093f\\u0915\\u0947\\u091f) \\u0927\\u093f\\u0924\\u094b \\u0930\\u093e\\u0916\\u0947\\u0930 \\u0938\\u0939\\u0941\\u0932\\u093f\\u092f\\u0924 \\u0935\\u094d\\u092f\\u093e\\u091c\\u0926\\u0930\\u092e\\u093e \\u090b\\u0923 \\u0926\\u093f\\u0928\\u0947 \\u0932\\u0917\\u092d\\u0917 \\u0928\\u093f\\u0936\\u094d\\u091a\\u093f\\u0924 \\u092d\\u090f\\u0915\\u094b \\u091b \\u0964 \\u092f\\u0938\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u0905\\u0930\\u094d\\u0925 \\u092e\\u0928\\u094d\\u0924\\u094d\\u0930\\u093e\\u0932\\u092f\\u0932\\u0947 \\u0915\\u093e\\u0930\\u094d\\u092f\\u0935\\u093f\\u0927\\u093f\\u0915\\u094b \\u092e\\u0938\\u094d\\u092f\\u094c\\u0926\\u093e \\u0924\\u092f\\u093e\\u0930 \\u0917\\u0930\\u094d\\u0926\\u0948\\u091b \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0905\\u0930\\u094d\\u0925 \\u092e\\u0928\\u094d\\u0924\\u094d\\u0930\\u093e\\u0932\\u092f\\u0915\\u093e \\u092a\\u094d\\u0930\\u0935\\u0915\\u094d\\u0924\\u093e \\u091d\\u0915\\u094d\\u0915\\u092a\\u094d\\u0930\\u0938\\u093e\\u0926 \\u0906\\u091a\\u093e\\u0930\\u094d\\u092f\\u0932\\u0947 \\u092d\\u0926\\u094c\\u092d\\u093f\\u0924\\u094d\\u0930\\u0948 \\u0938\\u0930\\u094d\\u091f\\u093f\\u092b\\u093f\\u0915\\u0947\\u091f \\u0927\\u093f\\u0924\\u094b\\u092e\\u093e \\u0930\\u093e\\u0916\\u0947\\u0930 \\u090b\\u0923 \\u0926\\u093f\\u0928\\u0947 \\u0935\\u094d\\u092f\\u0935\\u0938\\u094d\\u0925\\u093e\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u0906\\u0935\\u0936\\u094d\\u092f\\u0915 \\u0915\\u093e\\u0930\\u094d\\u092f\\u0935\\u093f\\u0927\\u093f \\u0938\\u094d\\u0935\\u0940\\u0915\\u0943\\u0924 \\u0917\\u0930\\u093f\\u0938\\u0915\\u094d\\u0928\\u0947 \\u092c\\u0924\\u093e\\u090f \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0909\\u0928\\u0932\\u0947 \\u0915\\u0941\\u0928 \\u0924\\u0939\\u0938\\u092e\\u094d\\u092e \\u0905\\u0927\\u094d\\u092f\\u092f\\u0928 \\u0917\\u0930\\u0947\\u0915\\u093e\\u0932\\u093e\\u0908 \\u0915\\u0938\\u0930\\u0940, \\u0915\\u0924\\u093f \\u0930\\u0941\\u092a\\u0948\\u092f\\u093e\\u0901\\u0938\\u092e\\u094d\\u092e \\u090b\\u0923 \\u0926\\u093f\\u0928\\u0947, \\u0915\\u0924\\u093f \\u0915\\u093f\\u0938\\u094d\\u0924\\u093e\\u092e\\u093e \\u092b\\u093f\\u0930\\u094d\\u0924\\u093e \\u0917\\u0930\\u094d\\u0928\\u0947 \\u0917\\u0930\\u0940 \\u0915\\u0924\\u093f \\u0935\\u0930\\u094d\\u0937\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u090b\\u0923 \\u0926\\u093f\\u0928\\u0947 \\u092d\\u0928\\u094d\\u0928\\u0947 \\u0935\\u093f\\u0937\\u092f \\u0915\\u093e\\u0930\\u094d\\u092f\\u0935\\u093f\\u0927\\u093f\\u092e\\u0948 \\u0938\\u092e\\u0947\\u091f\\u093f\\u0928\\u0947 \\u092c\\u0924\\u093e\\u090f \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u092c\\u091c\\u0947\\u091f\\u092e\\u0948 \\u0905\\u0927\\u093f\\u0915\\u0924\\u092e\\u094d \\u096d \\u0932\\u093e\\u0916\\u0938\\u092e\\u094d\\u092e \\u090b\\u0923 \\u0926\\u093f\\u0928\\u0947 \\u092d\\u0928\\u093f\\u090f\\u0915\\u093e\\u0932\\u0947 \\u092f\\u0939\\u0940 \\u0938\\u0940\\u092e\\u093e\\u092d\\u093f\\u0924\\u094d\\u0930 \\u0930\\u0939\\u0947\\u0930 \\u0936\\u0948\\u0915\\u094d\\u0937\\u093f\\u0915 \\u092f\\u094b\\u0917\\u094d\\u092f\\u0924\\u093e\\u0905\\u0928\\u0941\\u0938\\u093e\\u0930 \\u090b\\u0923\\u0915\\u094b \\u092a\\u094d\\u0930\\u092c\\u0928\\u094d\\u0927 \\u0917\\u0930\\u093f\\u0928\\u0947\\u091b \\u0964 \\u0938\\u0930\\u0915\\u093e\\u0930\\u0932\\u0947 \\u092c\\u091c\\u0947\\u091f\\u092e\\u093e\\u0930\\u094d\\u092b\\u0924 \\u0927\\u093f\\u0924\\u094b \\u0930\\u093e\\u0916\\u0947\\u0930 \\u0938\\u0939\\u0941\\u0932\\u093f\\u092f\\u0924 \\u0935\\u094d\\u092f\\u093e\\u091c\\u0926\\u0930\\u092e\\u093e \\u090b\\u0923 \\u0909\\u092a\\u0932\\u092c\\u094d\\u0927 \\u0917\\u0930\\u093e\\u0909\\u0928\\u0947 \\u0928\\u0940\\u0924\\u093f\\u0917\\u0924 \\u0935\\u094d\\u092f\\u0935\\u0938\\u094d\\u0925\\u093e \\u0917\\u0930\\u0947\\u0915\\u094b \\u091b \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0905\\u0918\\u093f\\u0932\\u094d\\u0932\\u094b \\u092a\\u091f\\u0915 \\u0915\\u0947\\u092a\\u0940 \\u0936\\u0930\\u094d\\u092e\\u093e \\u0913\\u0932\\u0940 \\u092a\\u0939\\u093f\\u0932\\u094b \\u092a\\u091f\\u0915 \\u092a\\u094d\\u0930\\u0927\\u093e\\u0928\\u092e\\u0928\\u094d\\u0924\\u094d\\u0930\\u0940 \\u092d\\u090f\\u0915\\u093e \\u092c\\u0947\\u0932\\u093e\\u092e\\u093e \\u0928\\u0948 \\u092f\\u0938\\u094d\\u0924\\u094b \\u092f\\u094b\\u091c\\u0928\\u093e \\u0905\\u0918\\u093f \\u0938\\u093e\\u0930\\u093f\\u090f\\u0915\\u094b \\u0925\\u093f\\u092f\\u094b \\u0964 \\u0924\\u0930, \\u0938\\u0930\\u0915\\u093e\\u0930\\u0932\\u0947 \\u0915\\u093e\\u0930\\u094d\\u092f\\u0935\\u093f\\u0927\\u093f \\u0928\\u0948 \\u0928\\u092c\\u0928\\u093e\\u090f\\u092a\\u091b\\u093f \\u0915\\u0938\\u0948\\u0932\\u0947 \\u092a\\u0928\\u093f \\u0938\\u0930\\u094d\\u091f\\u093f\\u092b\\u093f\\u0915\\u0947\\u091f \\u0927\\u093f\\u0924\\u094b\\u092e\\u093e \\u0930\\u093e\\u0916\\u0947\\u0930 \\u090b\\u0923 \\u0932\\u093f\\u0928 \\u092a\\u093e\\u090f\\u0928\\u0928\\u094d \\u0964<\\/p>\",\"status\":\"Active\",\"school_id\":1}}', '2020-05-24 12:32:37', '2020-05-24 12:32:37'),
(43, 'default', 'created', 1, 'App\\Model\\Event', 3, 'App\\User', '{\"attributes\":{\"title\":\"\\u092d\\u0926\\u094c \\u0967 \\u0930 \\u0968 \\u0917\\u0924\\u0947 \\u0930\\u093e\\u091c\\u0927\\u093e\\u0928\\u0940\\u092e\\u093e \\u2018\\u0938\\u094d\\u091f\\u0921\\u0940 \\u0907\\u0928 \\u0928\\u0947\\u092a\\u093e\\u0932\\u2019 \\u092e\\u0947\\u0932\\u093e\",\"slug\":\"bhatha-ra-gata-ra-jathha-na-ma-sa-tada-ina-na-pa-l-ma-l\",\"image\":\"images\\/events\\/1590344903education-study-in-nepal.jpg\",\"event_date\":\"2020-05-26\",\"content\":\"<p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0968\\u096f \\u0938\\u093e\\u0909\\u0928, \\u0915\\u093e\\u0920\\u092e\\u093e\\u0921\\u094c\\u0902 \\u0964 \\u0938\\u094d\\u0935\\u0926\\u0947\\u0936\\u092e\\u0948 \\u0909\\u091a\\u094d\\u091a \\u0936\\u093f\\u0915\\u094d\\u0937\\u093e \\u0939\\u093e\\u0938\\u093f\\u0932 \\u0917\\u0930\\u094d\\u0928 \\u091a\\u093e\\u0939\\u0928\\u0947 \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940\\u0932\\u093e\\u0908 \\u0932\\u0915\\u094d\\u0937\\u093f\\u0924 \\u0917\\u0930\\u094d\\u0926\\u0948 \\u092d\\u0926\\u094c \\u0967 \\u0930 \\u0968 \\u0917\\u0924\\u0947 \\u0930\\u093e\\u091c\\u0927\\u093e\\u0928\\u0940\\u092e\\u093e \\u2018\\u0938\\u094d\\u091f\\u0921\\u0940 \\u0907\\u0928 \\u0928\\u0947\\u092a\\u093e\\u0932\\u2019 \\u092e\\u0947\\u0932\\u093e \\u0939\\u0941\\u0928\\u0947 \\u092d\\u090f\\u0915\\u094b \\u091b\\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u092d\\u093f\\u091c\\u0928 \\u092e\\u093f\\u0921\\u093f\\u092f\\u093e \\u0907\\u0928\\u094d\\u0915\\u0930\\u094d\\u092a\\u094b\\u0930\\u0947\\u0938\\u0928 \\u0930 \\u090f\\u091c\\u0941\\u0915\\u0947\\u0938\\u0928 \\u0921\\u091f\\u0915\\u092e\\u0915\\u094b \\u0906\\u092f\\u094b\\u091c\\u0928\\u093e \\u0924\\u0925\\u093e \\u0907\\u0938\\u094d\\u0932\\u093f\\u0919\\u094d\\u0917\\u091f\\u0928 \\u0915\\u0932\\u0947\\u091c\\u0915\\u094b \\u092e\\u0941\\u0916\\u094d\\u092f \\u092a\\u094d\\u0930\\u092f\\u094b\\u091c\\u0928\\u092e\\u093e \\u0926\\u0930\\u0935\\u093e\\u0930\\u092e\\u093e\\u0930\\u094d\\u0917\\u0938\\u094d\\u0925\\u093f\\u0924 \\u0939\\u094b\\u091f\\u0932 \\u0905\\u0928\\u094d\\u0928\\u092a\\u0942\\u0930\\u094d\\u0923\\u092e\\u093e \\u092e\\u0947\\u0932\\u093e \\u0939\\u0941\\u0928\\u0947 \\u092d\\u090f\\u0915\\u094b \\u0939\\u094b\\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u2018\\u0938\\u094d\\u0935\\u0926\\u0947\\u0936\\u0940 \\u0936\\u093f\\u0915\\u094d\\u0937\\u093e \\u0938\\u092c\\u0948\\u0915\\u094b \\u0908\\u091a\\u094d\\u091b\\u093e\\u2019 \\u092d\\u0928\\u094d\\u0928\\u0947 \\u092e\\u0941\\u0932 \\u0928\\u093e\\u0930\\u093e\\u0915\\u093e \\u0938\\u093e\\u0925 \\u091a\\u0932\\u094d\\u0928\\u0947 \\u092e\\u0947\\u0932\\u093e\\u092e\\u093e \\u0915\\u093e\\u0920\\u092e\\u093e\\u0921\\u094c\\u0902 \\u0935\\u093f\\u0936\\u094d\\u0935\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f, \\u0924\\u094d\\u0930\\u093f\\u092d\\u0941\\u0935\\u0928 \\u0935\\u093f\\u0936\\u094d\\u0935\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f, \\u092a\\u094b\\u0916\\u0930\\u093e \\u0935\\u093f\\u0936\\u094d\\u0935\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f, \\u092a\\u0942\\u0930\\u094d\\u0935\\u093e\\u091e\\u094d\\u091a\\u0932 \\u0935\\u093f\\u0936\\u094d\\u0935\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f, \\u092e\\u0927\\u094d\\u092f\\u092a\\u0936\\u094d\\u091a\\u093f\\u092e\\u093e\\u091e\\u094d\\u091a\\u0932 \\u0935\\u093f\\u0936\\u094d\\u0935\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f \\u0924\\u0925\\u093e \\u0935\\u093f\\u092d\\u093f\\u0928\\u094d\\u0928 \\u0905\\u0928\\u094d\\u0924\\u0930\\u094d\\u0930\\u093e\\u0937\\u094d\\u091f\\u094d\\u0930\\u093f\\u092f \\u0935\\u093f\\u0936\\u094d\\u0935\\u093f\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f\\u0938\\u0901\\u0917 \\u0906\\u0935\\u0926\\u094d\\u0927 \\u0935\\u093f\\u092d\\u093f\\u0928\\u094d\\u0928 \\u0915\\u0932\\u0947\\u091c\\u0939\\u0930\\u0941\\u0932\\u0947 \\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940\\u0939\\u0930\\u0941\\u0932\\u093e\\u0908 \\u0928\\u093f\\u0903\\u0936\\u0941\\u0932\\u094d\\u0915 \\u092a\\u0930\\u093e\\u092e\\u0930\\u094d\\u0936 \\u0926\\u093f\\u0928\\u0947\\u091b\\u0928\\u094d\\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u092c\\u093f\\u0939\\u093e\\u0928 \\u0967\\u0966 \\u092c\\u091c\\u0947\\u0926\\u0947\\u0916\\u093f \\u0938\\u093e\\u201c\\u091d \\u096c \\u092c\\u091c\\u0947\\u0938\\u092e\\u094d\\u092e \\u092e\\u0947\\u0932\\u093e \\u0938\\u0902\\u091a\\u093e\\u0932\\u0928 \\u0939\\u0941\\u0928\\u0947 \\u0906\\u092f\\u094b\\u091c\\u0915\\u0932\\u0947 \\u091c\\u0928\\u093e\\u090f\\u0915\\u094b \\u091b\\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u092c\\u093f\\u092c\\u093f\\u090f, \\u090f\\u092e\\u092c\\u093f\\u090f, \\u092c\\u093f\\u0906\\u0908\\u091f\\u0940, \\u092c\\u093f\\u0906\\u0908\\u090f\\u092e, \\u092c\\u093f\\u090f\\u091a\\u090f\\u092e, \\u092c\\u093f\\u091f\\u093f\\u091f\\u093f\\u090f\\u092e, \\u092c\\u093f\\u092c\\u093f\\u090f\\u092e, \\u092c\\u093f\\u090f\\u091a\\u091f\\u093f\\u090f\\u092e, \\u092c\\u093f\\u090f\\u090f\\u0938\\u0921\\u092c\\u094d\\u0932\\u0941, \\u092c\\u093f\\u092c\\u093f\\u090f\\u0938, \\u092c\\u093f\\u090f\\u0938\\u094d\\u0938\\u0940, \\u0938\\u093f\\u090f\\u0938\\u0906\\u0908\\u091f\\u0940, \\u092c\\u093f\\u0921\\u0947\\u092d\\u094d\\u0938 \\u0932\\u0917\\u093e\\u092f\\u0924 \\u0915\\u094b\\u0930\\u094d\\u0937 \\u092a\\u0922\\u094d\\u0928 \\u091a\\u093e\\u0939\\u0928\\u0947 \\u092c\\u093f\\u0926\\u094d\\u092f\\u093e\\u0930\\u094d\\u0925\\u0940\\u0947 \\u092f\\u094b \\u092e\\u0947\\u0932\\u093e\\u092c\\u093e\\u091f \\u0932\\u093e\\u092d\\u093e\\u0928\\u094d\\u0935\\u093f\\u0924 \\u0939\\u0941\\u0928\\u0947\\u091b\\u0928\\u094d\\u0964<\\/p>\",\"status\":\"Active\",\"school_id\":1}}', '2020-05-24 12:43:23', '2020-05-24 12:43:23');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(44, 'default', 'created', 2, 'App\\Model\\Event', 3, 'App\\User', '{\"attributes\":{\"title\":\"\\u0915\\u094b\\u0930\\u094b\\u0928\\u093e\\u0938\\u0901\\u0917 \\u0932\\u0921\\u094d\\u0928\\u0947 \\u0924\\u0930\\u093f\\u0915\\u093e : \\u2018\\u092d\\u0941\\u0932\\u094d\\u0915\\u0947 \\u092e\\u094b\\u0921\\u0932\\u2019 \\u0938\\u0939\\u0940 \\u091b !\",\"slug\":\"ka-ra-na-sa-ga-lda-na-tara-ka-bha-l-ka-ma-dal-saha-chha\",\"image\":\"images\\/events\\/1590344976download.jpg\",\"event_date\":\"2020-05-29\",\"content\":\"<p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0967\\u0967 \\u091c\\u0947\\u0920, \\u0915\\u093e\\u0920\\u092e\\u093e\\u0921\\u094c\\u0902 \\u0964 \\u090f\\u0909\\u091f\\u093e \\u092c\\u0938\\u094d\\u0924\\u0940\\u092e\\u093e \\u0920\\u0942\\u0932\\u094b \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e\\u092e\\u093e \\u0915\\u094b\\u0930\\u094b\\u0928\\u093e \\u092d\\u093e\\u0907\\u0930\\u0938 (\\u0915\\u094b\\u092d\\u093f\\u0921-\\u0967\\u096f) \\u0938\\u0902\\u0915\\u094d\\u0930\\u092e\\u093f\\u0924 \\u0926\\u0947\\u0916\\u093f\\u090f \\u092d\\u0928\\u0947 \\u0924\\u094d\\u092f\\u0938\\u0932\\u093e\\u0908 \\u0938\\u092e\\u0941\\u0926\\u093e\\u092f\\u092e\\u093e \\u092b\\u0948\\u0932\\u0928\\u092c\\u093e\\u091f \\u0915\\u0938\\u0930\\u0940 \\u0930\\u094b\\u0915\\u094d\\u0928\\u0947 ? \\u0915\\u094b\\u0930\\u094b\\u0928\\u093e \\u0938\\u0902\\u0915\\u094d\\u0930\\u092e\\u093f\\u0924\\u0915\\u094b \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u092c\\u0922\\u094d\\u0926\\u0948 \\u091c\\u093e\\u0928 \\u0925\\u093e\\u0932\\u0947\\u092a\\u091b\\u093f \\u092c\\u093e\\u0901\\u0915\\u0947, \\u0915\\u092a\\u093f\\u0932\\u0935\\u0938\\u094d\\u0924\\u0941, \\u0930\\u0941\\u092a\\u0928\\u094d\\u0926\\u0947\\u0939\\u0940, \\u091d\\u093e\\u092a\\u093e\\u0932\\u0917\\u093e\\u092f\\u0924\\u0915\\u093e \\u091c\\u093f\\u0932\\u094d\\u0932\\u093e\\u0915\\u093e \\u0938\\u094d\\u0925\\u093e\\u0928\\u0940\\u092f \\u0924\\u0939\\u0939\\u0930\\u0942\\u092e\\u093e \\u0905\\u0924\\u094d\\u092f\\u093e\\u0938 \\u092c\\u0922\\u0947\\u0915\\u094b \\u091b \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u091c\\u0928\\u0938\\u094d\\u0935\\u093e\\u0938\\u094d\\u0925\\u094d\\u092f\\u0915\\u093e \\u091c\\u093e\\u0928\\u0915\\u093e\\u0930\\u0939\\u0930\\u0942 \\u092d\\u0928\\u0947 \\u0909\\u0926\\u092f\\u092a\\u0941\\u0930\\u0915\\u094b \\u0924\\u094d\\u0930\\u093f\\u092f\\u0941\\u0917\\u093e \\u0928\\u0917\\u0930\\u092a\\u093e\\u0932\\u093f\\u0915\\u093e\\u2013\\u0969 \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u092e\\u093e \\u092b\\u0948\\u0932\\u093f\\u090f\\u0915\\u094b \\u0915\\u094b\\u0930\\u094b\\u0928\\u093e \\u0938\\u0902\\u0915\\u094d\\u0930\\u092e\\u0923 \\u0930\\u094b\\u0915\\u094d\\u0928 \\u0905\\u092a\\u0928\\u093e\\u090f\\u0915\\u094b \\u0930\\u0923\\u0928\\u0940\\u0924\\u093f \\u0928\\u0947\\u092a\\u093e\\u0932\\u0915\\u094b \\u0938\\u092b\\u0932 \\u0930 \\u092a\\u094d\\u0930\\u092d\\u093e\\u0935\\u0915\\u093e\\u0930\\u0940 \\u0939\\u0941\\u0928\\u0947 \\u092c\\u0924\\u093e\\u0909\\u0901\\u091b\\u0928\\u094d\\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0938\\u094d\\u0935\\u093e\\u0938\\u094d\\u0925\\u094d\\u092f \\u0924\\u0925\\u093e \\u091c\\u0928\\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u092e\\u0928\\u094d\\u0924\\u094d\\u0930\\u093e\\u0932\\u092f\\u0915\\u093e \\u0935\\u093f\\u091c\\u094d\\u091e \\u0938\\u0932\\u094d\\u0932\\u093e\\u0939\\u0915\\u093e\\u0930 \\u0921\\u093e. \\u0916\\u0947\\u092e \\u0915\\u093e\\u0930\\u094d\\u0915\\u0940 \\u092d\\u0928\\u094d\\u091b\\u0928\\u094d, \\u2018\\u0938\\u0902\\u0915\\u094d\\u0930\\u092e\\u093f\\u0924 \\u092d\\u0947\\u091f\\u093f\\u090f\\u092a\\u091b\\u093f \\u0906\\u0907\\u0938\\u094b\\u0932\\u0947\\u0938\\u0928\\u092e\\u093e \\u0930\\u093e\\u0916\\u094d\\u0928\\u0947 \\u0930 \\u0909\\u0938\\u0915\\u094b \\u0938\\u092e\\u094d\\u092a\\u0930\\u094d\\u0915\\u092e\\u093e \\u0930\\u0939\\u0947\\u0915\\u093e \\u0935\\u094d\\u092f\\u0915\\u094d\\u0924\\u093f\\u0939\\u0930\\u0942\\u0932\\u093e\\u0908 \\u091f\\u094d\\u0930\\u0947\\u0938\\u093f\\u0919 \\u0917\\u0930\\u094d\\u0928\\u0947 \\u0964 \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u0915\\u0948 \\u0930\\u0923\\u0928\\u0940\\u0924\\u093f \\u0939\\u093e\\u092e\\u0940\\u0932\\u0947 \\u0905\\u0928\\u094d\\u092f\\u0924\\u094d\\u0930 \\u0932\\u093e\\u0917\\u0942 \\u0917\\u0930\\u0947\\u0915\\u093e \\u091b\\u094c\\u0902 \\u0964 \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u0915\\u094b \\u092a\\u0939\\u093f\\u0932\\u094b \\u0915\\u0947\\u0938 \\u0939\\u094b, \\u0905\\u092c \\u0939\\u093e\\u092e\\u0940 \\u092f\\u0938\\u094b \\u0917\\u0930\\u094d\\u0928\\u0947 \\u092d\\u0928\\u0947\\u0930 \\u092d\\u0928\\u094d\\u0928\\u0938\\u0915\\u094d\\u0928\\u0947 \\u0905\\u0935\\u0938\\u094d\\u0925\\u093e\\u092e\\u093e \\u092a\\u0941\\u0917\\u094d\\u0926\\u0948\\u091b\\u094c\\u0902 \\u0964\\u2019<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u0915\\u094b \\u0915\\u0947\\u0938\\u0932\\u093e\\u0908 \\u0905\\u0928\\u0941\\u0938\\u0928\\u094d\\u0927\\u093e\\u0928\\u093e\\u0924\\u094d\\u092e\\u0915 \\u0930\\u0941\\u092a\\u092e\\u093e \\u0939\\u0947\\u0930\\u093f\\u0930\\u0939\\u0947\\u0915\\u093e \\u091c\\u0928\\u0938\\u094d\\u0935\\u093e\\u0938\\u094d\\u0925\\u094d\\u092f\\u0935\\u093f\\u0926\\u094d \\u0921\\u093e. \\u092e\\u0939\\u0947\\u0936 \\u092e\\u093e\\u0938\\u094d\\u0915\\u0947 \\u092a\\u0928\\u093f \\u092f\\u0938\\u092e\\u093e \\u0938\\u0939\\u092e\\u0924 \\u091b\\u0928\\u094d \\u0964 \\u0921\\u093e. \\u092e\\u093e\\u0938\\u094d\\u0915\\u0947 \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947 \\u092e\\u094b\\u0921\\u0932\\u0932\\u093e\\u0908 \\u0926\\u0947\\u0936\\u092d\\u0930 \\u0932\\u093e\\u0917\\u0942 \\u0917\\u0930\\u094d\\u0928\\u0941 \\u0909\\u092a\\u092f\\u0941\\u0915\\u094d\\u0924 \\u0939\\u0941\\u0928\\u0947 \\u092c\\u0924\\u093e\\u0909\\u0901\\u091b\\u0928\\u094d \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u0938\\u092e\\u0941\\u0926\\u093e\\u092f\\u092e\\u093e \\u0938\\u0902\\u0915\\u094d\\u0930\\u092e\\u0923 \\u0926\\u0930\\u092d\\u0928\\u094d\\u0926\\u093e \\u0928\\u093f\\u0915\\u094b \\u0939\\u0941\\u0928\\u0947\\u0915\\u094b \\u0926\\u0930 \\u0915\\u092e \\u092d\\u092f\\u094b \\u092d\\u0928\\u0947 \\u0924\\u094d\\u092f\\u0938\\u0932\\u0947 \\u092e\\u0939\\u093e\\u092e\\u093e\\u0930\\u0940\\u0915\\u094b \\u0930\\u0941\\u092a \\u0932\\u093f\\u0928\\u0938\\u0915\\u094d\\u091b \\u0964 \\u0924\\u0930, \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u092e\\u093e \\u0938\\u0902\\u0915\\u094d\\u0930\\u092e\\u0923\\u0915\\u094b \\u0926\\u0930\\u092d\\u0928\\u094d\\u0926\\u093e \\u0930\\u093f\\u0915\\u092d\\u0930\\u0940\\u0915\\u094b \\u0926\\u0930 \\u092c\\u0922\\u093e\\u0909\\u0928 \\u0938\\u092b\\u0932 \\u092d\\u090f\\u0915\\u0948\\u0932\\u0947 \\u0930\\u0947\\u0921\\u091c\\u094b\\u0928\\u0932\\u093e\\u0908 \\u0917\\u094d\\u0930\\u093f\\u0928 \\u091c\\u094b\\u0928 \\u092c\\u0928\\u093e\\u0909\\u0928 \\u0938\\u092b\\u0932\\u0924\\u093e \\u092e\\u093f\\u0932\\u0947\\u0915\\u094b \\u0924\\u0930\\u094d\\u0915 \\u0917\\u0930\\u094d\\u091b\\u0928\\u094d \\u0964<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\"><em>\\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u092e\\u093e \\u0915\\u094b\\u0930\\u094b\\u0928\\u093e \\u0938\\u0902\\u0915\\u094d\\u0930\\u092e\\u0923 \\u0928\\u093f\\u092f\\u0928\\u094d\\u0924\\u094d\\u0930\\u0923\\u0915\\u093e \\u0932\\u093e\\u0917\\u093f \\u0915\\u0947-\\u0915\\u0947 \\u0917\\u0930\\u093f\\u090f\\u0915\\u094b \\u0925\\u093f\\u092f\\u094b ? \\u0906\\u0916\\u093f\\u0930 \\u0915\\u0947 \\u0939\\u094b \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947 \\u092e\\u094b\\u0921\\u0947\\u0932 ? \\u092f\\u0938\\u092c\\u093e\\u0930\\u0947 \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u0915\\u094b \\u0915\\u0947\\u0938\\u0932\\u093e\\u0908 \\u0928\\u091c\\u093f\\u0915\\u092c\\u093e\\u091f \\u0939\\u0947\\u0930\\u093f\\u0930\\u0939\\u0947\\u0915\\u093e \\u0921\\u093e. \\u092e\\u093e\\u0938\\u094d\\u0915\\u0947\\u0915\\u093e \\u0915\\u0941\\u0930\\u093e \\u0938\\u0941\\u0928\\u094c\\u0902\\u2013<\\/em><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\\\">\\u091c\\u092e\\u093e\\u0924\\u0940 \\u0938\\u092e\\u0942\\u0939, \\u091c\\u0938\\u0932\\u0947 \\u0917\\u0930\\u094d\\u0926\\u093e \\u092d\\u093e\\u0930\\u0924\\u092e\\u093e \\u0915\\u094b\\u0930\\u093e\\u0947\\u0928\\u093e \\u092b\\u0948\\u0932\\u093f\\u090f\\u0915\\u094b \\u092d\\u0928\\u093f\\u092f\\u094b \\u0964 \\u0928\\u0947\\u092a\\u093e\\u0932\\u092e\\u093e \\u092a\\u0928\\u093f \\u091c\\u092e\\u093e\\u0924\\u0940\\u0939\\u0930\\u0942 \\u0906\\u090f\\u0915\\u093e \\u091b\\u0928\\u094d \\u0930 \\u0909\\u0928\\u0940\\u0939\\u0930\\u0942\\u092e\\u093e \\u0915\\u094b\\u0930\\u094b\\u0928\\u093e \\u091b \\u0915\\u093f \\u092d\\u0928\\u0947\\u0930 \\u0938\\u092e\\u093e\\u091a\\u093e\\u0930\\u0939\\u0930\\u0942 \\u0906\\u0909\\u0928 \\u0925\\u093e\\u0932\\u0947 \\u0964 \\u092e\\u0938\\u094d\\u091c\\u093f\\u0926\\u0939\\u0930\\u0942\\u092e\\u093e \\u091f\\u094d\\u0930\\u0947\\u0938 \\u0917\\u0930\\u094d\\u0928\\u0947 \\u0915\\u094d\\u0930\\u092e\\u092e\\u093e \\u092d\\u0941\\u0932\\u094d\\u0915\\u0947\\u0915\\u094b \\u0928\\u0941\\u0930\\u0940 \\u092e\\u0938\\u094d\\u091c\\u093f\\u0926\\u092e\\u093e \\u091f\\u0947\\u0938\\u094d\\u091f\\u092e\\u093e \\u092a\\u0928\\u093f \\u0917\\u0930\\u093f\\u092f\\u094b \\u0964<\\/p><div><br><\\/div>\",\"status\":\"Active\",\"school_id\":1}}', '2020-05-24 12:44:36', '2020-05-24 12:44:36'),
(45, 'default', 'This model has been created', 19, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"welcome_message\",\"value\":\"<blockquote>Our school brings together children and adults of wide variety of ethnic groups and nationalities in inter-cultural network\\/harmony while celebrating the diversity of our school population. We also seek to forge among parents, students, teaching and non-teaching staff. This unified and caring community exhibits mutual respect and understanding where each individual feels welcomed and valued.<\\/blockquote>\",\"school_id\":1}}', '2020-05-24 13:15:30', '2020-05-24 13:15:30'),
(46, 'default', 'This model has been created', 20, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"adhyaksh_image\",\"value\":\"C:\\\\xampp\\\\tmp\\\\php75C5.tmp\",\"school_id\":1}}', '2020-05-24 13:15:30', '2020-05-24 13:15:30'),
(47, 'default', 'This model has been created', 21, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"adhyaksh_message\",\"value\":\"<p style=\\\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px;\\\">Pathshala, as always, is determined to foster not only knowledge development of learners but also their multiple intelligence and to cultivate the sentiment of global changes and challenges. Such achievements are possible only through the inspiring and able faculty members. Only they can transform the motto of the school, \\u2018meaningful education for meaningful life\\u2019, into the reality. Therefore, we value the welfare of our teachers by providing better working environment and opportunities to grow professionally as well as personally. We encourage them to use the best resources and their best experiences.<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px;\\\">We assure that Pathshala is all set for the new years ahead with new endeavors towards the new height of achievements! We welcome all to work and walk hand in hand with us in creating a new meaningful sensation in the world of learners! Let us all come together to render our part of meaningful contribution to the society, nation and the world.<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px;\\\">We welcome you at Pathshala at New Baneshwor or Bagdol to discover what we offer and what really makes Pathshala an appropriate school for your child.<\\/p>\",\"school_id\":1}}', '2020-05-24 13:15:30', '2020-05-24 13:15:30'),
(48, 'default', 'This model has been created', 22, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"principal_image\",\"value\":\"C:\\\\xampp\\\\tmp\\\\php75D6.tmp\",\"school_id\":1}}', '2020-05-24 13:15:30', '2020-05-24 13:15:30'),
(49, 'default', 'This model has been created', 23, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"key\":\"principal_message\",\"value\":\"<p style=\\\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\\\">Welcome to Pathshala, a learning organization that thrives always to learn the best practices in local and global context and keep transforming itself as a whole institution!<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\\\">Pathshala is the institution that believes in providing opportunities and environment for children to aspire for high achievement with practice of values. Pathshala Team is well aware of the fact that every individual child has innate potential that has to be identified and nurtured in time. Therefore, it is well prepared to encourage every student\\u2019s insightful learning with confidence and skills.<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\\\">The vision and implementation strategies for progress of this institution has inspired many which encouraged us to perform better every year with wider innovations and deep-commitment day in and day out. This also has enabled us to gain the trust of children, their parents and guardians and many well-wishers of the society. Their support and wishes have made us thrive more for the best outcome and move ahead. Pathshala successfully sent the nine batches of SLC\\/SEE graduates.<\\/p>\",\"school_id\":1}}', '2020-05-24 13:15:30', '2020-05-24 13:15:30'),
(50, 'default', 'This model has been updated', 20, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"value\":\"images\\/about\\/1590347067istockphoto-1040308104-612x612.jpg\"},\"old\":{\"value\":\"C:\\\\xampp\\\\tmp\\\\php75C5.tmp\"}}', '2020-05-24 13:19:28', '2020-05-24 13:19:28'),
(51, 'default', 'This model has been updated', 22, 'App\\Model\\About', 3, 'App\\User', '{\"attributes\":{\"value\":\"images\\/about\\/1590347068gettyimages-480440376-612x612.jpg\"},\"old\":{\"value\":\"C:\\\\xampp\\\\tmp\\\\php75D6.tmp\"}}', '2020-05-24 13:19:28', '2020-05-24 13:19:28'),
(52, 'default', 'created', 1, 'App\\Model\\Tender', 3, 'App\\User', '{\"attributes\":{\"title\":\"Library Building\",\"slug\":\"library-building\",\"file\":\"admin\\/tender\\/1590353897-8002.pdf\",\"content\":\"New Library building construction needeed\",\"status\":\"Active\",\"school_id\":1}}', '2020-05-24 15:13:17', '2020-05-24 15:13:17'),
(53, 'default', 'created', 5, 'App\\Model\\StaffType', 3, 'App\\User', '{\"attributes\":{\"title\":\"Chairman\",\"remarks\":\"Adhyaksha\",\"school_id\":1}}', '2020-05-25 11:20:06', '2020-05-25 11:20:06'),
(54, 'default', 'deleted', 3, 'App\\Model\\StaffType', 3, 'App\\User', '{\"attributes\":{\"title\":\"Head of Department\",\"remarks\":\"Science Department\",\"school_id\":1}}', '2020-05-25 11:20:19', '2020-05-25 11:20:19'),
(55, 'default', 'deleted', 4, 'App\\Model\\StaffType', 3, 'App\\User', '{\"attributes\":{\"title\":\"Head of Department\",\"remarks\":\"Nepali Department\",\"school_id\":1}}', '2020-05-25 11:20:27', '2020-05-25 11:20:27'),
(56, 'default', 'created', 3, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":1,\"image\":\"images\\/asset\\/dsfsdfds\\/1590427710school-logo.png\",\"school_id\":1}}', '2020-05-25 11:43:31', '2020-05-25 11:43:31'),
(57, 'default', 'deleted', 1, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":2,\"image\":\"images\\/asset\\/computer\\/1590118572wi-fi-wireless-network-icon-clip-art-wifi-icon-png.jpg\",\"school_id\":1}}', '2020-05-25 11:46:17', '2020-05-25 11:46:17'),
(58, 'default', 'deleted', 2, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":2,\"image\":\"images\\/asset\\/computer\\/1590118576default.png\",\"school_id\":1}}', '2020-05-25 11:46:19', '2020-05-25 11:46:19'),
(59, 'default', 'created', 4, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":2,\"image\":\"images\\/asset\\/computer\\/1590427885computerlab.jpg\",\"school_id\":1}}', '2020-05-25 11:46:25', '2020-05-25 11:46:25'),
(60, 'default', 'created', 5, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":4,\"image\":\"images\\/asset\\/microscope\\/1590427911sciencelab.jpg\",\"school_id\":1}}', '2020-05-25 11:46:52', '2020-05-25 11:46:52'),
(61, 'default', 'created', 3, 'App\\Model\\Grade', 3, 'App\\User', '{\"attributes\":{\"title\":\"3\",\"slug\":\"3\",\"remarks\":null,\"school_id\":1}}', '2020-05-26 08:35:01', '2020-05-26 08:35:01'),
(62, 'default', 'created', 4, 'App\\Model\\Grade', 3, 'App\\User', '{\"attributes\":{\"title\":\"4\",\"slug\":\"4\",\"remarks\":null,\"school_id\":1}}', '2020-05-26 08:35:08', '2020-05-26 08:35:08'),
(63, 'default', 'created', 5, 'App\\Model\\Grade', 3, 'App\\User', '{\"attributes\":{\"title\":\"5\",\"slug\":\"5\",\"remarks\":null,\"school_id\":1}}', '2020-05-26 08:35:14', '2020-05-26 08:35:14'),
(64, 'default', 'created', 6, 'App\\Model\\Grade', 3, 'App\\User', '{\"attributes\":{\"title\":\"6\",\"slug\":\"6\",\"remarks\":null,\"school_id\":1}}', '2020-05-26 08:35:18', '2020-05-26 08:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `slug`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Program', 'program', 1, NULL, '2020-05-21 21:49:05', '2020-05-21 21:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_category_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `title`, `slug`, `quantity`, `remarks`, `asset_category_id`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Educational Books', 'dsfsdfds', 50, NULL, 1, 1, NULL, '2020-04-03 08:57:43', '2020-05-23 13:23:25'),
(2, 'Computer', 'computer', 12, NULL, 2, 1, NULL, '2020-05-21 21:51:01', '2020-05-21 21:51:01'),
(3, 'Microcontrollers', 'microcontrollers', 5, NULL, 2, 1, NULL, '2020-05-23 13:21:42', '2020-05-23 13:21:42'),
(4, 'Microscope', 'microscope', 4, NULL, 3, 1, NULL, '2020-05-23 13:22:10', '2020-05-23 13:22:10'),
(5, 'Centrifuge', 'centrifuge', 1, NULL, 3, 1, NULL, '2020-05-23 13:22:29', '2020-05-23 13:22:29'),
(6, 'Pipettes and burettes', 'pipettes-and-burettes', 10, NULL, 3, 1, NULL, '2020-05-23 13:22:58', '2020-05-23 13:22:58'),
(7, 'English Novels', 'english-novels', 20, NULL, 1, 1, NULL, '2020-05-23 13:23:47', '2020-05-23 13:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `title`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Library', 'A library is a curated collection of sources of information and similar resources, selected by experts and made accessible to a defined community for reference or borrowing, often in a quiet environment conducive to study. It provides physical or digital access to material, and may be a physical location or a virtual space, or both. A library\'s collection can include books, periodicals, newspapers, manuscripts, films, maps, prints, documents, microform, CDs, cassettes, videotapes, DVDs, Blu-ray Discs, e-books, audiobooks, databases, and other formats. Libraries range widely in size up to millions of items. In Latin and Greek, the idea of a bookcase is represented by Bibliotheca and Bibliothēkē (Greek: βιβλιοθήκη): derivatives of these mean library in many modern languages, e.g. French bibliothèque.', 1, NULL, '2020-04-03 08:57:14', '2020-05-23 13:20:07'),
(2, 'Computer Lab', 'A computer lab is a space which provides computer services to a defined community. Computer labs are typically provided by libraries to the public, by academic institutions to students who attend the institution,[1] or by other institutions to the public or to people affiliated with that institution. Users typically must follow a certain user policy to retain access to the computers. This generally consists of the user not engaging in illegal activities or attempting to circumvent any security or content-control software while using the computers.[1] In public settings, computer lab users are often subject to time limits, in order to allow more people a chance to use the lab, whereas in other institutions, computer access typically requires valid personal login credentials,[1] which may also allow the institution to track the user\'s activities. Computers in computer labs are typically equipped with internet access, while scanners and printers may augment the lab setup. Computers in computer labs are typically arranged either in rows, so that every workstation has a similar view of one end of the room to facilitate lecturing or presentations,[2] or in clusters, to facilitate small group work.[3] take the place of dedicated computer labs, although computer labs still have a place in applications requiring special software or hardware not practically implementable in personal computers.[3]', 1, NULL, '2020-05-21 21:50:33', '2020-05-23 13:48:23'),
(3, 'Science Lab', 'Laboratories used for scientific research take many forms because of the differing requirements of specialists in the various fields of science and engineering. A physics laboratory might contain a particle accelerator or vacuum chamber, while a metallurgy laboratory could have apparatus for casting or refining metals or for testing their strength. A chemist or biologist might use a wet laboratory, while a psychologist\'s laboratory might be a room with one-way mirrors and hidden cameras in which to observe behavior. In some laboratories, such as those commonly used by computer scientists, computers (sometimes supercomputers) are used for either simulations or the analysis of data. Scientists in other fields will use still other types of laboratories. Engineers use laboratories as well to design, build, and test technological devices.', 1, NULL, '2020-05-23 13:21:03', '2020-05-23 13:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `asset_images`
--

CREATE TABLE `asset_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_images`
--

INSERT INTO `asset_images` (`id`, `asset_id`, `image`, `school_id`, `created_at`, `updated_at`) VALUES
(3, 1, 'images/asset/dsfsdfds/1590427710school-logo.png', 1, '2020-05-25 11:43:31', '2020-05-25 11:43:31'),
(4, 2, 'images/asset/computer/1590427885computerlab.jpg', 1, '2020-05-25 11:46:25', '2020-05-25 11:46:25'),
(5, 4, 'images/asset/microscope/1590427911sciencelab.jpg', 1, '2020-05-25 11:46:52', '2020-05-25 11:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `degination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_front` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ethnicities`
--

CREATE TABLE `ethnicities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ethnicities`
--

INSERT INTO `ethnicities` (`id`, `title`, `slug`, `remarks`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Bahun', 'bahun', NULL, NULL, '2020-04-01 09:47:57', '2020-04-01 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `event_date`, `image`, `status`, `content`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'भदौ १ र २ गते राजधानीमा ‘स्टडी इन नेपाल’ मेला', 'bhatha-ra-gata-ra-jathha-na-ma-sa-tada-ina-na-pa-l-ma-l', '2020-05-26', 'images/events/1590344903education-study-in-nepal.jpg', 'Active', '<p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">२९ साउन, काठमाडौं । स्वदेशमै उच्च शिक्षा हासिल गर्न चाहने विद्यार्थीलाई लक्षित गर्दै भदौ १ र २ गते राजधानीमा ‘स्टडी इन नेपाल’ मेला हुने भएको छ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">भिजन मिडिया इन्कर्पोरेसन र एजुकेसन डटकमको आयोजना तथा इस्लिङ्गटन कलेजको मुख्य प्रयोजनमा दरवारमार्गस्थित होटल अन्नपूर्णमा मेला हुने भएको हो।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">‘स्वदेशी शिक्षा सबैको ईच्छा’ भन्ने मुल नाराका साथ चल्ने मेलामा काठमाडौं विश्वविद्यालय, त्रिभुवन विश्वविद्यालय, पोखरा विश्वविद्यालय, पूर्वाञ्चल विश्वविद्यालय, मध्यपश्चिमाञ्चल विश्वविद्यालय तथा विभिन्न अन्तर्राष्ट्रिय विश्विविद्यालयसँग आवद्ध विभिन्न कलेजहरुले विद्यार्थीहरुलाई निःशुल्क परामर्श दिनेछन्।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">बिहान १० बजेदेखि सा“झ ६ बजेसम्म मेला संचालन हुने आयोजकले जनाएको छ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">बिबिए, एमबिए, बिआईटी, बिआईएम, बिएचएम, बिटिटिएम, बिबिएम, बिएचटिएम, बिएएसडब्लु, बिबिएस, बिएस्सी, सिएसआईटी, बिडेभ्स लगायत कोर्ष पढ्न चाहने बिद्यार्थीे यो मेलाबाट लाभान्वित हुनेछन्।</p>', 1, '2020-05-24 12:43:23', '2020-05-24 12:43:23'),
(2, 'कोरोनासँग लड्ने तरिका : ‘भुल्के मोडल’ सही छ !', 'ka-ra-na-sa-ga-lda-na-tara-ka-bha-l-ka-ma-dal-saha-chha', '2020-05-29', 'images/events/1590344976download.jpg', 'Active', '<p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">११ जेठ, काठमाडौं । एउटा बस्तीमा ठूलो संख्यामा कोरोना भाइरस (कोभिड-१९) संक्रमित देखिए भने त्यसलाई समुदायमा फैलनबाट कसरी रोक्ने ? कोरोना संक्रमितको संख्या बढ्दै जान थालेपछि बाँके, कपिलवस्तु, रुपन्देही, झापालगायतका जिल्लाका स्थानीय तहहरूमा अत्यास बढेको छ ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">जनस्वास्थ्यका जानकारहरू भने उदयपुरको त्रियुगा नगरपालिका–३ भुल्केमा फैलिएको कोरोना संक्रमण रोक्न अपनाएको रणनीति नेपालको सफल र प्रभावकारी हुने बताउँछन्।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">स्वास्थ्य तथा जनसंख्या मन्त्रालयका विज्ञ सल्लाहकार डा. खेम कार्की भन्छन्, ‘संक्रमित भेटिएपछि आइसोलेसनमा राख्ने र उसको सम्पर्कमा रहेका व्यक्तिहरूलाई ट्रेसिङ गर्ने । भुल्केकै रणनीति हामीले अन्यत्र लागू गरेका छौं । भुल्केको पहिलो केस हो, अब हामी यसो गर्ने भनेर भन्नसक्ने अवस्थामा पुग्दैछौं ।’</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">भुल्केको केसलाई अनुसन्धानात्मक रुपमा हेरिरहेका जनस्वास्थ्यविद् डा. महेश मास्के पनि यसमा सहमत छन् । डा. मास्के भुल्के मोडललाई देशभर लागू गर्नु उपयुक्त हुने बताउँछन् ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">समुदायमा संक्रमण दरभन्दा निको हुनेको दर कम भयो भने त्यसले महामारीको रुप लिनसक्छ । तर, भुल्केमा संक्रमणको दरभन्दा रिकभरीको दर बढाउन सफल भएकैले रेडजोनलाई ग्रिन जोन बनाउन सफलता मिलेको तर्क गर्छन् ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\"><em>भुल्केमा कोरोना संक्रमण नियन्त्रणका लागि के-के गरिएको थियो ? आखिर के हो भुल्के मोडेल ? यसबारे भुल्केको केसलाई नजिकबाट हेरिरहेका डा. मास्केका कुरा सुनौं–</em></p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">जमाती समूह, जसले गर्दा भारतमा कोराेना फैलिएको भनियो । नेपालमा पनि जमातीहरू आएका छन् र उनीहरूमा कोरोना छ कि भनेर समाचारहरू आउन थाले । मस्जिदहरूमा ट्रेस गर्ने क्रममा भुल्केको नुरी मस्जिदमा टेस्टमा पनि गरियो ।</p><div><br></div>', 1, '2020-05-24 12:44:36', '2020-05-24 12:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `title`, `slug`, `start_date`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dfssdf', 'dfssdf', '2020-04-07', 'dsfsdf', 1, NULL, '2020-04-03 08:58:39', '2020-04-03 08:58:39'),
(2, 'fdgfdgg', 'fdgfdgg', '2020-04-06', 'fgd', 1, NULL, '2020-04-03 08:59:03', '2020-04-03 08:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `exam_grade`
--

CREATE TABLE `exam_grade` (
  `exam_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_grade`
--

INSERT INTO `exam_grade` (`exam_id`, `grade_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `album_id`, `title`, `image`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'images/album/program/159011846495244966_319222415714481_190659405065224192_n (1).jpg', 1, '2020-05-21 21:49:24', '2020-05-21 21:49:24'),
(2, 1, NULL, 'images/album/program/1590118467default.png', 1, '2020-05-21 21:49:27', '2020-05-21 21:49:27'),
(3, 1, NULL, 'images/album/program/1590118471logo.png', 1, '2020-05-21 21:49:31', '2020-05-21 21:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `title`, `slug`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '1', NULL, 1, NULL, '2020-04-01 09:47:11', '2020-04-01 09:47:11'),
(2, '2', '2', NULL, 1, NULL, '2020-04-01 09:47:18', '2020-04-01 09:47:18'),
(3, '3', '3', NULL, 1, NULL, '2020-05-26 08:35:01', '2020-05-26 08:35:01'),
(4, '4', '4', NULL, 1, NULL, '2020-05-26 08:35:08', '2020-05-26 08:35:08'),
(5, '5', '5', NULL, 1, NULL, '2020-05-26 08:35:14', '2020-05-26 08:35:14'),
(6, '6', '6', NULL, 1, NULL, '2020-05-26 08:35:18', '2020-05-26 08:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nepali_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Backend','Frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `english_name`, `nepali_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Dashboard', 'दाशबोर्ड', 'Backend', '2020-04-03 09:45:58', '2020-04-03 10:01:34'),
(2, 'students', 'Students', 'विद्यार्थी', 'Backend', '2020-04-03 09:46:16', '2020-04-03 10:01:08'),
(3, 'occupation', 'Occupation', 'पेशा', 'Backend', '2020-04-03 09:46:33', '2020-04-03 10:00:24'),
(4, 'ethnicity', 'Ethnicity', 'जात', 'Backend', '2020-04-03 09:47:27', '2020-04-03 09:59:47'),
(5, 'asset', 'Asset', '#', 'Backend', '2020-04-11 21:38:36', '2020-04-11 21:38:36'),
(7, 'album', 'Album', '#', 'Backend', '2020-04-11 21:44:44', '2020-04-11 21:44:44'),
(8, 'grade', 'Grade', '#', 'Backend', '2020-04-11 21:45:15', '2020-04-11 21:45:15'),
(9, 'exam', 'Exam', '#', 'Backend', '2020-04-11 21:46:22', '2020-04-11 21:46:22'),
(10, 'subject', 'Subject', '#', 'Backend', '2020-04-11 21:47:37', '2020-04-11 21:47:37'),
(11, 'staff', 'Staff', '#', 'Backend', '2020-04-11 21:48:51', '2020-04-11 21:48:51'),
(12, 'stafftype', 'Stafftype', '#', 'Backend', '2020-04-11 21:49:08', '2020-04-11 21:49:08'),
(13, 'staffclasssubject', 'StaffClassSubject', '#', 'Backend', '2020-04-11 21:49:43', '2020-04-11 21:49:43'),
(14, 'committee', 'Committee', '#', 'Backend', '2020-04-11 21:49:52', '2020-04-11 21:49:52'),
(15, 'cms', 'Cms', '#', 'Backend', '2020-04-11 21:49:56', '2020-04-11 21:49:56'),
(16, 'about', 'About', '#', 'Backend', '2020-04-11 21:49:59', '2020-04-11 21:49:59'),
(17, 'user', 'User', '#', 'Backend', '2020-04-11 21:50:01', '2020-04-11 21:50:01'),
(18, 'basic-info', 'Basic Info', '#', 'Backend', '2020-04-11 21:50:07', '2020-04-11 21:50:07'),
(19, 'history', 'History', '#', 'Backend', '2020-04-11 21:50:14', '2020-04-11 21:50:14'),
(20, 'message', 'Message', '#', 'Backend', '2020-04-11 21:50:17', '2020-04-11 21:50:17'),
(21, 'student', 'Student', '#', 'Backend', '2020-04-11 21:50:20', '2020-04-11 21:50:20'),
(22, 'user-1', 'User', '#', 'Backend', '2020-04-11 21:50:23', '2020-04-11 21:50:23'),
(23, 'search', 'Search', '#', 'Backend', '2020-04-11 21:50:27', '2020-04-11 21:50:27'),
(24, 'profile', 'Profile', '#', 'Backend', '2020-04-11 21:50:33', '2020-04-11 21:50:33'),
(25, 'password', 'Password', '#', 'Backend', '2020-04-11 21:50:38', '2020-04-11 21:50:38'),
(26, 'confirm-password', 'Confirm Password', '#', 'Backend', '2020-04-11 21:50:53', '2020-04-11 21:50:53'),
(27, 'email', 'Email', '#', 'Backend', '2020-04-11 21:50:56', '2020-04-11 21:50:56'),
(28, 'name', 'Name', '#', 'Backend', '2020-04-11 21:50:58', '2020-04-11 21:50:58'),
(29, 'full-name', 'Full Name', '#', 'Backend', '2020-04-11 21:51:03', '2020-04-11 21:51:03'),
(30, 'total', 'Total', '#', 'Backend', '2020-04-11 21:51:09', '2020-04-11 21:51:09'),
(31, 'logout', 'Logout', '#', 'Backend', '2020-04-11 21:51:12', '2020-04-11 21:51:12'),
(32, 'notification', 'Notification', '#', 'Backend', '2020-04-11 21:51:25', '2020-04-11 21:51:25'),
(33, 'select-grade', 'Select Grade', '#', 'Backend', '2020-04-11 21:51:30', '2020-04-11 21:51:30'),
(34, 'class', 'Class', '#', 'Backend', '2020-04-11 21:51:35', '2020-04-11 21:51:35'),
(35, 'add-new', 'Add New', '#', 'Backend', '2020-04-11 21:51:40', '2020-04-11 21:51:40'),
(36, 'index', 'Index', '#', 'Backend', '2020-04-11 21:51:44', '2020-04-11 21:51:44'),
(37, 'select', 'Select', '#', 'Backend', '2020-04-11 21:51:51', '2020-04-11 21:51:51'),
(38, 'guardian', 'Guardian', '#', 'Backend', '2020-04-11 21:52:31', '2020-04-11 21:52:31'),
(39, 'phone', 'Phone', '#', 'Backend', '2020-04-11 21:53:01', '2020-04-11 21:53:01'),
(40, 'image', 'Image', '#', 'Backend', '2020-04-11 21:53:10', '2020-04-11 21:53:10'),
(41, 'address', 'Address', '#', 'Backend', '2020-04-11 21:53:13', '2020-04-11 21:53:13'),
(42, 'gender', 'Gender', '#', 'Backend', '2020-04-11 21:53:19', '2020-04-11 21:53:19'),
(43, 'disablity', 'Disablity', '#', 'Backend', '2020-04-11 21:53:32', '2020-04-11 21:53:32'),
(44, 'religion', 'Religion', '#', 'Backend', '2020-04-11 21:53:40', '2020-04-11 21:53:40'),
(45, 'birth-date', 'Birth Date', '#', 'Backend', '2020-04-11 21:53:47', '2020-04-11 21:53:47'),
(46, 'age', 'Age', '#', 'Backend', '2020-04-11 21:53:50', '2020-04-11 21:53:50'),
(47, 'action', 'Action', '#', 'Backend', '2020-04-11 21:53:54', '2020-04-11 21:53:54'),
(48, 'delete', 'Delete', '#', 'Backend', '2020-04-11 21:53:58', '2020-04-11 21:53:58'),
(49, 'edit', 'Edit', '#', 'Backend', '2020-04-11 21:54:02', '2020-04-11 21:54:02'),
(50, 'link', 'Link', '#', 'Backend', '2020-04-11 21:54:04', '2020-04-11 21:54:04'),
(51, 'title', 'Title', '#', 'Backend', '2020-04-11 21:54:08', '2020-04-11 21:54:08'),
(52, 'list', 'List', '#', 'Backend', '2020-04-11 21:54:26', '2020-04-11 21:54:26'),
(53, 'remarks', 'Remarks', '#', 'Backend', '2020-04-11 21:54:30', '2020-04-11 21:54:30'),
(54, 'save', 'Save', '#', 'Backend', '2020-04-11 21:54:33', '2020-04-11 21:54:33'),
(55, 'quantity', 'Quantity', '#', 'Backend', '2020-04-11 21:54:50', '2020-04-11 21:54:50'),
(56, 'file', 'File', '#', 'Backend', '2020-04-11 21:54:52', '2020-04-11 21:54:52'),
(57, 'exam-start-date', 'Exam Start Date', '#', 'Backend', '2020-04-11 21:55:17', '2020-04-11 21:55:17'),
(58, 'result', 'Result', '#', 'Backend', '2020-04-11 21:55:22', '2020-04-11 21:55:22'),
(59, 'job-title', 'Job Title', '#', 'Backend', '2020-04-11 21:55:28', '2020-04-11 21:55:28'),
(60, 'join-date', 'Join Date', '#', 'Backend', '2020-04-11 21:55:39', '2020-04-11 21:55:39'),
(61, 'teacher-name', 'Teacher Name', '#', 'Backend', '2020-04-11 21:56:08', '2020-04-11 21:56:08'),
(62, 'degination', 'Degination', '#', 'Backend', '2020-04-11 21:56:17', '2020-04-11 21:56:17'),
(63, 'status', 'Status', '#', 'Backend', '2020-04-11 21:56:21', '2020-04-11 21:56:21'),
(64, 'show-in-front', 'Show in Front', '#', 'Backend', '2020-04-11 21:56:27', '2020-04-11 21:56:27'),
(65, 'welcome-message', 'Welcome Message', '#', 'Backend', '2020-04-11 21:56:33', '2020-04-11 21:56:33'),
(66, 'vdc-municipality-adhyaksh-message', 'VDC/Municipality Adhyaksh Message', '#', 'Backend', '2020-04-11 21:57:40', '2020-04-11 21:57:40'),
(67, 'princiapal-message', 'Princiapal Message', '#', 'Backend', '2020-04-11 21:57:48', '2020-04-11 21:57:48'),
(68, 'dalit-student', 'Dalit Student', '#', 'Backend', '2020-04-11 21:57:58', '2020-04-11 21:57:58'),
(69, 'male-student', 'Male Student', '#', 'Backend', '2020-04-11 21:58:05', '2020-04-11 21:58:05'),
(70, 'femalestudent', 'FemaleStudent', '#', 'Backend', '2020-04-11 21:58:15', '2020-04-11 21:58:15'),
(71, 'total-disable-student', 'Total Disable Student', '#', 'Backend', '2020-04-11 21:58:32', '2020-04-11 21:58:32'),
(72, 'school', 'School', '#', 'Backend', '2020-04-11 21:58:39', '2020-04-11 21:58:39'),
(73, 'logo', 'Logo', '#', 'Backend', '2020-04-11 21:58:42', '2020-04-11 21:58:42'),
(74, 'favicon', 'Favicon', '#', 'Backend', '2020-04-11 21:58:47', '2020-04-11 21:58:47'),
(75, 'description', 'Description', '#', 'Backend', '2020-04-11 21:59:00', '2020-04-11 21:59:00'),
(76, 'vdc-municipality-name', 'VDC/Municipality Name', '#', 'Backend', '2020-04-11 21:59:36', '2020-04-11 21:59:36'),
(77, 'vdc-municipality-logo', 'VDC/Municipality Logo', '#', 'Backend', '2020-04-11 21:59:42', '2020-04-11 21:59:42'),
(78, 'facebook', 'Facebook', '#', 'Backend', '2020-04-11 21:59:47', '2020-04-11 21:59:47'),
(79, 'twitter', 'Twitter', '#', 'Backend', '2020-04-11 21:59:50', '2020-04-11 21:59:50'),
(80, 'youtube', 'Youtube', '#', 'Backend', '2020-04-11 22:00:04', '2020-04-11 22:00:04'),
(85, 'update', 'Update', '#', 'Backend', '2020-04-11 22:00:30', '2020-04-11 22:00:30'),
(86, '1', '1', '#', 'Backend', '2020-04-11 22:01:08', '2020-04-11 22:01:08'),
(87, '2', '2', '#', 'Backend', '2020-04-11 22:01:09', '2020-04-11 22:01:09'),
(88, '3', '3', '#', 'Backend', '2020-04-11 22:01:10', '2020-04-11 22:01:10'),
(89, '4', '4', '#', 'Backend', '2020-04-11 22:01:11', '2020-04-11 22:01:11'),
(90, '5', '5', '#', 'Backend', '2020-04-11 22:01:12', '2020-04-11 22:01:12'),
(91, '6', '6', '#', 'Backend', '2020-04-11 22:01:14', '2020-04-11 22:01:14'),
(92, '7', '7', '#', 'Backend', '2020-04-11 22:01:15', '2020-04-11 22:01:15'),
(93, '8', '8', '#', 'Backend', '2020-04-11 22:01:16', '2020-04-11 22:01:16'),
(94, '9', '9', '#', 'Backend', '2020-04-11 22:01:18', '2020-04-11 22:01:18'),
(95, '0', '0', '#', 'Backend', '2020-04-11 22:01:19', '2020-04-11 22:01:19'),
(96, 'view-all', 'View All', '#', 'Backend', '2020-04-11 22:01:32', '2020-04-11 22:01:32'),
(97, 'read-more', 'Read More', '#', 'Backend', '2020-04-11 22:01:37', '2020-04-11 22:01:37'),
(98, 'setup', 'Setup', '#', 'Backend', '2020-04-11 22:01:42', '2020-04-11 22:01:42'),
(99, 'slider', 'Slider', '#', 'Backend', '2020-04-11 22:27:12', '2020-04-11 22:27:12'),
(100, 'staff-setup', 'Staff Setup', '#', 'Backend', '2020-04-11 22:27:22', '2020-04-11 22:27:22'),
(101, 'events', 'Events', '#', 'Backend', '2020-04-11 22:30:09', '2020-04-11 22:30:09'),
(102, 'news', 'News', '#', 'Backend', '2020-04-11 22:30:12', '2020-04-11 22:30:12'),
(103, 'notice', 'Notice', '#', 'Backend', '2020-04-11 22:30:24', '2020-04-11 22:30:24'),
(104, 'tender', 'Tender', '#', 'Backend', '2020-04-11 22:30:32', '2020-04-11 22:30:32'),
(105, 'language', 'Language', '#', 'Backend', '2020-04-11 22:33:40', '2020-04-11 22:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 9),
(47, '2014_10_12_100000_create_password_resets_table', 10),
(48, '2016_06_01_000001_create_oauth_auth_codes_table', 10),
(49, '2016_06_01_000002_create_oauth_access_tokens_table', 10),
(50, '2016_06_01_000003_create_oauth_refresh_tokens_table', 10),
(51, '2016_06_01_000004_create_oauth_clients_table', 10),
(52, '2016_06_01_000005_create_oauth_personal_access_clients_table', 10),
(53, '2020_03_25_074200_create_students_table', 10),
(54, '2020_03_25_074315_create_ethnicities_table', 10),
(55, '2020_03_25_074334_create_occupations_table', 10),
(56, '2020_03_25_074352_create_subjects_table', 10),
(57, '2020_03_25_074428_create_staff_table', 10),
(58, '2020_03_25_074508_create_staff_documents_table', 10),
(59, '2020_03_25_074532_create_staff_types_table', 10),
(60, '2020_03_25_074605_create_staff_expriences_table', 10),
(61, '2020_03_25_074623_create_staff_class_subjects_table', 10),
(62, '2020_03_25_074701_create_albums_table', 10),
(63, '2020_03_25_074713_create_galleries_table', 10),
(64, '2020_03_25_074729_create_exams_table', 10),
(65, '2020_03_25_074758_create_results_table', 10),
(66, '2020_03_25_075024_create_grades_table', 10),
(67, '2020_03_25_081721_create_schools_table', 10),
(68, '2020_03_25_085412_create_exam_grade_table', 10),
(69, '2020_03_25_131033_create_assets_table', 10),
(70, '2020_03_25_131821_create_asset_categories_table', 10),
(71, '2020_03_25_170124_create_asset_images_table', 10),
(72, '2020_03_29_160247_create_news_table', 10),
(73, '2020_03_29_160358_create_notices_table', 10),
(74, '2020_03_29_160412_create_tenders_table', 10),
(75, '2020_03_29_160423_create_events_table', 10),
(76, '2020_03_29_174656_create_committees_table', 10),
(77, '2020_03_30_075947_create_abouts_table', 10),
(78, '2020_03_30_085428_create_sliders_table', 10),
(79, '2020_04_03_150642_create_languages_table', 11),
(80, '2020_04_02_165605_create_activity_log_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `image`, `status`, `content`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'विद्यार्थी बढे, व्यापार बढ्यो तर फस्टाएन नेपाल–अष्ट्रेलिया सम्बन्ध', 'va-tha-ya-ra-tha-bdha-va-ya-pa-ra-bdha-ya-tara-fasa-ta-ena-na-pa-l-ashha-ta-ra-l-ya-sama-bna-thha', 'images/news/15903441681562061983.jpg', 'Active', '<p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">नेपाली विद्यार्थीका बारेमा सिड्नी मर्निङ हेराल्डमा हालै प्रकाशित&nbsp;<a href=\"https://www.smh.com.au/national/it-s-just-abusive-experts-issue-warning-over-nepalese-student-surge-20191219-p53lhm.html\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\">एक विशेष रिपोर्ट</a>ले अष्ट्रेलियास्थित नेपाली समुदाय, बुद्धीजीवी एवं ठूला साना सबै मिडियालाई तरंगित बनायो । सामाजिक सञ्जाल र लामो बिदाको खानपिनका जमघटहरुमा समेत यो विषयले चर्चा पायो ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">अष्ट्रेलियन नेशनल युनिभर्सिटीका&nbsp;<a href=\"https://andrewnorton.net.au/about-me/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\">प्राध्यापक एन्ड्रयु नर्टन</a>&nbsp;र सिड्नी युनिभर्सिटीका&nbsp;<a href=\"https://sydney.edu.au/arts/about/our-people/academic-staff/salvatore-babones.html\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\">सह-प्राध्यापक साल्भाटोर बबोन्स</a>ले हेराल्डका लागि दिएको प्रतिकृयालाई राजनीतिक ब्युरोका रिपोर्टर&nbsp;<a href=\"https://muckrack.com/michaelkoziol\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\">माइकल कोजोइल</a>ले बिशेष (एक्स्लुजिभ) रिपोर्ट भनेर लेखिदिए ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">सरसर्ती हेर्दा अन्तर्राष्ट्रिय विद्यार्थी, शैक्षिक परामर्शदाता, भिषाका लागि काम गर्ने एजेन्ट वा कमिसनखोरका र्‍याकेटहरुले गर्ने गरेको भनिएको अनियमित वा अनैतिक काम कारवाहीविरुद्ध चनाखो भएझैं देखिने अष्ट्रेलिया सरकारको गतिविधि र सम्बन्धित आप्रवासी समाजमा यस कारण सिर्जित बहसले विद्यार्थी धेरै पठाउने देशहरुका सरकार नीति निर्माता र सर्वसाधारणमा पनि सकारात्मक र नकारात्मक दुवैखालको प्रभाव पारेको हुनुपर्छ । यसले सुरक्षित र सुन्दर भविश्यको सपना सजाएर सात समुन्ऽपारिको देश अष्ट्रेलियामा पाइला टेक्ने विद्यार्थी र तिनको पठनपाठनमा लगानी गर्न आतुर अभिभावकमा पनि एकखालको अन्योल सिर्जना गर्‍यो ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\"><img class=\" wp-image-826274 alignleft\" src=\"https://www.onlinekhabar.com/wp-content/uploads/2020/01/Dr-Bharat-Raj-Poudel_Photo-1.jpg\" alt=\"\" width=\"256\" height=\"255\" srcset=\"https://www.onlinekhabar.com/wp-content/uploads/2020/01/Dr-Bharat-Raj-Poudel_Photo-1.jpg 448w, https://www.onlinekhabar.com/wp-content/uploads/2020/01/Dr-Bharat-Raj-Poudel_Photo-1-300x300.jpg 300w, https://www.onlinekhabar.com/wp-content/uploads/2020/01/Dr-Bharat-Raj-Poudel_Photo-1-150x150.jpg 150w\" sizes=\"(max-width: 256px) 100vw, 256px\" style=\"height: auto; max-width: 100%; display: inline; float: left; margin-right: 1.5em;\">राम्रै नियतले भनिएकै भए पनि यही रिपोर्टमा च्वास्स हुने केही सन्दर्भहरु जोडिदिएर प्राध्यापक नर्टनले नेपाल र नेपालीको मन दुखाएको महसुस अष्ट्रेलियास्थित बहुसंख्यक नेपालीहरुले गरेका थिए । त्यस्तै, गरीब परिवारमाथि पढाइ र कामको सिलसिलामा हुन सक्ने शोषणको स्थिति रोक्नेतर्फ मुख्य भूमिका नखेलेको भन्दै&nbsp;<a href=\"https://www.theage.com.au/by/michael-koziol-hvf7q\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(14, 93, 174); transition: all 0.4s ease 0s;\">सह-प्राध्यापक बबोन्स</a>ले सरकार र विश्वविद्यालयहरुको आलोचना गरेकाले पनि नेपाल र नेपालीसँगै क्यानबेरास्थित नेपाली दूतावासले पनि यो विषयलाई नोटिसमा लिनुपर्ने स्थिति उत्पन्न भएको थियो ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\"><span style=\"font-weight: 700;\">सन्दर्भ के थियो ? चर्चा किन भयो त ?</span></p>', 1, '2020-05-24 12:31:09', '2020-05-24 12:31:09'),
(2, 'मंसिरबाट सर्टिफिकेट धितोमा राखेर ७ लाखसम्म ऋण, यस्तो छ तयारी', 'ma-sa-rab-ta-sara-ta-fa-ka-ta-thha-ta-ma-ra-kha-ra-l-khasama-ma-rinae-yasa-ta-chha-taya-ra', 'images/news/1590344257education-loan.jpg', 'Active', '<p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">१५ साउन, काठमाडौं । शैक्षिक बेरोजगारहरुका लागि सरकारले चालु आर्थिक वर्षबाटै शैक्षिक योग्यताको प्रमाणपत्र (एकेडेमिक सर्टिफिकेट) धितो राखेर सहुलियत व्याजदरमा ऋण दिने लगभग निश्चित भएको छ । यसका लागि अर्थ मन्त्रालयले कार्यविधिको मस्यौदा तयार गर्दैछ ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">अर्थ मन्त्रालयका प्रवक्ता झक्कप्रसाद आचार्यले भदौभित्रै सर्टिफिकेट धितोमा राखेर ऋण दिने व्यवस्थाका लागि आवश्यक कार्यविधि स्वीकृत गरिसक्ने बताए ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">उनले कुन तहसम्म अध्ययन गरेकालाई कसरी, कति रुपैयाँसम्म ऋण दिने, कति किस्तामा फिर्ता गर्ने गरी कति वर्षका लागि ऋण दिने भन्ने विषय कार्यविधिमै समेटिने बताए ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">बजेटमै अधिकतम् ७ लाखसम्म ऋण दिने भनिएकाले यही सीमाभित्र रहेर शैक्षिक योग्यताअनुसार ऋणको प्रबन्ध गरिनेछ । सरकारले बजेटमार्फत धितो राखेर सहुलियत व्याजदरमा ऋण उपलब्ध गराउने नीतिगत व्यवस्था गरेको छ ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">अघिल्लो पटक केपी शर्मा ओली पहिलो पटक प्रधानमन्त्री भएका बेलामा नै यस्तो योजना अघि सारिएको थियो । तर, सरकारले कार्यविधि नै नबनाएपछि कसैले पनि सर्टिफिकेट धितोमा राखेर ऋण लिन पाएनन् ।</p>', 1, '2020-05-24 12:32:37', '2020-05-24 12:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `slug`, `image`, `status`, `content`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'नेपालमै अध्ययनका अबसर देखाउँदै ‘स्टडी इन नेपाल’ फेयर आयोजना हुने', 'na-pa-lma-athha-yayanaka-absara-tha-kha-u-tha-sa-tada-ina-na-pa-l-fa-yara-aaya-jana-ha-na', 'images/notice/1590234328education-study-in-nepal.jpg', 'Active', '<p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">काठमाण्डौ । शहरका घरघरमा आजकल स्टडी इन फलानो देश भन्दै टाँसिएका बोर्डको बिगबिगी छ । झट्ट हेर्दा यस्तो लाग्छ, नेपालमा उच्च शिक्षाका लागि कुनै अबसर नै छैन् ।</p><p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">तर, नेपालमा यस्ता शिक्षण संस्थाहरु पनि छन् जहाँ भर्ना सिटभन्दा सयौं गुणा आबेदन पर्छन र त्यस्ता कलेजहरुमा भर्ना पाउनु सौभाग्य ठानिन्छ । बिदेशी शिक्षण संस्थाको तुलना निकै अब्बल ठहरिएका नेपालका यस्तै शैक्षिक संस्था र पढाइको अबसरबारे जानकारी दिन काठमाण्डौमा ‘स्टडी इन नेपाल’ मेला आयोजना हुँदै छ ।</p>', 1, '2020-05-23 06:00:29', '2020-05-23 06:00:29'),
(2, 'सरकारले विद्यालयलाई भन्यो – अनलाइन कक्षाका नाममा शुल्क नलिनू', 'saraka-ral-va-tha-ya-lyal-ii-bhana-ya-anal-ina-kaka-shha-ka-na-mama-sha-l-ka-nal-na', 'images/notice/1590235167education.jpg', 'Active', '<p style=\"margin-right: 0px; margin-bottom: 1.04em; margin-left: 0px; line-height: 34px; text-align: justify; color: rgb(64, 64, 64); font-family: mukta, sans-serif; font-size: 20px !important;\">२२ वैशाख, काठमाडौं । सरकारले विद्यालयहरुलाई कुनै पनि कक्षा, तह र अनलाइन कक्षाका नाममा भर्ना नलिन र शुल्क नलिन आग्रह गरेको छ ।</p>', 1, '2020-05-23 06:14:27', '2020-05-23 06:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `title`, `slug`, `remarks`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Farmer', 'farmer', NULL, NULL, '2020-04-01 09:47:40', '2020-04-01 09:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `title`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `status`, `link`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Banner1', 'images/slider/1590354944banner1.jpg', 'Active', NULL, 1, '2020-05-24 15:30:45', '2020-05-24 15:30:45'),
(2, 'Banner 2', 'images/slider/1590354963banner2.jpg', 'Active', NULL, 1, '2020-05-24 15:31:03', '2020-05-24 15:31:03'),
(3, 'Banner 3', 'images/slider/1590354980banner3.jpg', 'Active', NULL, 1, '2020-05-24 15:31:20', '2020-05-24 15:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_type_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `slug`, `image`, `job_title`, `address`, `gender`, `DOB`, `join_date`, `phone`, `email`, `staff_type_id`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ram Gyawali', 'ram-gyawali', 'images/staff/1590252043zr2h449m1jq01.jpg', 'Math Teacher', 'Kavre, Dhulikhel', 'Male', '1985-05-22', '2020-05-23', '9851234567', 'ram@gmail.com', 1, 1, NULL, '2020-05-23 10:55:45', '2020-05-23 10:55:45'),
(2, 'Sita Basnet', 'sita-basnet', 'images/staff/1590252414c24db58e5cfebbce65da.jpeg', 'Nepali Teacher', 'Balkhu, Lalitpur', 'Female', '1987-04-23', '2020-05-25', '9841234567', 'sita@gmail.com', 1, 1, NULL, '2020-05-23 11:01:54', '2020-05-23 11:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `staff_class_subjects`
--

CREATE TABLE `staff_class_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_documents`
--

CREATE TABLE `staff_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_expriences`
--

CREATE TABLE `staff_expriences` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_types`
--

CREATE TABLE `staff_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_types`
--

INSERT INTO `staff_types` (`id`, `title`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Teacher', 'Subject Teacher', 1, NULL, '2020-04-03 09:00:06', '2020-05-23 10:48:04'),
(2, 'Principal', NULL, 1, NULL, '2020-05-23 10:48:27', '2020-05-23 10:48:27'),
(3, 'Chairman', 'Adhyaksha', 1, NULL, '2020-05-25 11:20:05', '2020-05-25 11:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `ethnicity_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `disability` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` enum('Hindu','Christian','Buddhism','Islam','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `slug`, `image`, `grade_id`, `ethnicity_id`, `address`, `gender`, `disability`, `religion`, `DOB`, `guardian_name`, `guardian_phone`, `guardian_email`, `occupation_id`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Josiah Roberts', 'josiah-roberts', NULL, 1, 1, 'Ratione autem in ver', 'Male', 'No', 'Hindu', '2007-02-06', 'Elvis Rocha', '+1 (984) 915-8492', NULL, 1, 1, '2020-04-10 06:48:26', '2020-04-01 09:48:38', '2020-04-10 06:48:26'),
(2, 'Aileen Beck', 'aileen-beck', NULL, 2, 1, 'Veniam voluptas des', 'Male', 'No', 'Hindu', '2002-09-10', 'Flynn Lawson', '+1 (661) 473-9012', NULL, 1, 1, '2020-04-10 06:50:30', '2020-04-01 09:48:52', '2020-04-10 06:50:30'),
(3, 'Ahmed Dickson', 'ahmed-dickson', NULL, 2, 1, 'Aliquam sit reprehe', 'Female', 'No', 'Hindu', '1978-01-16', 'April Joyce', '+1 (552) 874-7564', NULL, 1, 1, NULL, '2020-04-01 09:49:26', '2020-04-01 09:49:26'),
(4, 'Germane Luna', 'germane-luna', NULL, 1, 1, 'Non quia qui officia', 'Female', 'No', 'Hindu', '1989-12-15', 'Rhona Randall', '+1 (447) 813-3205', NULL, 1, 1, NULL, '2020-04-01 09:49:42', '2020-04-01 09:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

CREATE TABLE `tenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenders`
--

INSERT INTO `tenders` (`id`, `title`, `slug`, `file`, `status`, `content`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Library Building', 'library-building', 'admin/tender/1590353897-8002.pdf', 'Active', 'New Library building construction needeed', 1, '2020-05-24 15:13:17', '2020-05-24 15:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('Super Admin','Admin','Editor','Mayor') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `role`, `email_verified_at`, `password`, `school_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jack Roberson1111', 'jisogylydi@mailinator.net', '+1 (991) 312-8257', 'images/users/158565435391286242_268430174185581_5591572675181936640_n.jpg', 'Super Admin', NULL, '$2y$10$tw0v4ljhkCrortf3u6i60e2hzGrGfyF8FZkZMSiNQc6gMOu6wliSC', 1, NULL, '2020-03-31 05:47:33', '2020-03-31 06:01:05'),
(3, 'test test', 'test@gmail.com', '123456789', 'images/users/1585657327amber gurung.jpg', 'Super Admin', NULL, '$2y$10$uYTv4lrY/ONYWyKJHkLs4.aac8cU6.s7N1FchHr6RsgJFdjPqD2U2', 1, NULL, '2020-03-31 06:37:08', '2020-03-31 06:37:08'),
(4, 'Quinlan Knowles', 'valesybef@mailinator.net', '+1 (392) 857-4355', 'images/users/1585659208amber gurung.jpg', 'Admin', NULL, '$2y$10$A0DdQ31/JHrDYAUtL4DpreKcwgo5ryfjo5DC0DulMP9PO6fUPexRG', 1, NULL, '2020-03-31 07:08:28', '2020-03-31 07:08:28'),
(5, 'Tanisha Kline', 'sodirih@mailinator.net', '+1 (733) 264-5669', 'images/users/1585659443mana bahadur mukhiya & bhim birag.JPG', 'Admin', NULL, '$2y$10$md33K6i4U0bbZ04w/8rxNuGqt/MIqfqaJpBbrwmPBzrKfCqf7PYt6', 1, NULL, '2020-03-31 07:12:23', '2020-03-31 07:12:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_images`
--
ALTER TABLE `asset_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ethnicities`
--
ALTER TABLE `ethnicities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_class_subjects`
--
ALTER TABLE `staff_class_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_documents`
--
ALTER TABLE `staff_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_expriences`
--
ALTER TABLE `staff_expriences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_types`
--
ALTER TABLE `staff_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenders`
--
ALTER TABLE `tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `asset_images`
--
ALTER TABLE `asset_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ethnicities`
--
ALTER TABLE `ethnicities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_class_subjects`
--
ALTER TABLE `staff_class_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_documents`
--
ALTER TABLE `staff_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_expriences`
--
ALTER TABLE `staff_expriences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_types`
--
ALTER TABLE `staff_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenders`
--
ALTER TABLE `tenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
