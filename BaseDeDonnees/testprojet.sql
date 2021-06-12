-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 12 juin 2021 à 19:30
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `testprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'myapptoken', 'd6e127571ef500ae291525634ea571a9af264aeac17748c2966021dbf3cba3f1', '[\"*\"]', NULL, '2021-06-11 14:15:56', '2021-06-11 14:15:56'),
(2, 'App\\Models\\User', 3, 'myapptoken', '823b5c9ee555db0b3bb844bcc6612bd8135c302f4b4928e6fe7e8e72395b9690', '[\"*\"]', NULL, '2021-06-11 14:24:00', '2021-06-11 14:24:00'),
(3, 'App\\Models\\User', 4, 'myapptoken', 'b3136bae8311ff0372a3550a92fd7ae0142f2abc84515d2254137bec5ae8ff5e', '[\"*\"]', NULL, '2021-06-11 14:26:11', '2021-06-11 14:26:11'),
(4, 'App\\Models\\User', 5, 'myapptoken', '52c9d2c3c88d01e5b972fbf98a7c42ffbacc2e59c852029cdf4fefe2b3c6f627', '[\"*\"]', NULL, '2021-06-11 14:45:04', '2021-06-11 14:45:04'),
(5, 'App\\Models\\User', 5, 'myapptoken', 'd6e6afa05cd679d295439423feb00e04154e48ab48538a7e21909212fb33a88e', '[\"*\"]', NULL, '2021-06-11 14:45:20', '2021-06-11 14:45:20'),
(6, 'App\\Models\\User', 5, 'myapptoken', 'ad9c052175c3e9742da393c18f0e407f0dec7ad966f46d9f0383bac04cbbcdee', '[\"*\"]', NULL, '2021-06-11 14:56:18', '2021-06-11 14:56:18'),
(7, 'App\\Models\\User', 5, 'myapptoken', '10380712c1ceee90d5acac818b74cda419beef4b58a0205ef5127ac580fc8fb5', '[\"*\"]', NULL, '2021-06-11 14:57:24', '2021-06-11 14:57:24'),
(8, 'App\\Models\\User', 5, 'myapptoken', '79da0644b2a225b3bc9ff6342d5798e25d969b413dbd0bbb04e059c0aa152be3', '[\"*\"]', '2021-06-11 15:14:08', '2021-06-11 15:02:00', '2021-06-11 15:14:08'),
(9, 'App\\Models\\User', 5, 'myapptoken', '96e3f272bef5b45f6fb955d9af33585310ee566149a1ca70e7d04877ab974135', '[\"*\"]', NULL, '2021-06-11 15:17:37', '2021-06-11 15:17:37'),
(10, 'App\\Models\\User', 5, 'myapptoken', '72dee64327c0a36d4eac4cb08d7aac4d768b2f2f52df3b8fc7704a592b42fa5e', '[\"*\"]', '2021-06-11 15:37:59', '2021-06-11 15:20:59', '2021-06-11 15:37:59'),
(11, 'App\\Models\\User', 5, 'myapptoken', '5071389c104587d9ce7254649d26b44ba978e1829f06d4ea5ec56f94d097bdbf', '[\"*\"]', '2021-06-11 15:57:29', '2021-06-11 15:56:05', '2021-06-11 15:57:29'),
(12, 'App\\Models\\User', 5, 'myapptoken', '98e44d2124f36ca87b95872f66601c7d67fb12727bd27f968e3e048a26973f68', '[\"*\"]', '2021-06-11 16:00:52', '2021-06-11 15:58:35', '2021-06-11 16:00:52'),
(13, 'App\\Models\\User', 5, 'myapptoken', '0ef3a1bb99b502b894ef8b6de62327bd805be7bee0e8e033b838904b51955c12', '[\"*\"]', NULL, '2021-06-11 16:00:25', '2021-06-11 16:00:25'),
(14, 'App\\Models\\User', 5, 'myapptoken', '056896d99b5908f96404da7324d18268b894cb99e4b6f522c68fc918cd718599', '[\"*\"]', NULL, '2021-06-11 16:01:53', '2021-06-11 16:01:53'),
(15, 'App\\Models\\User', 5, 'myapptoken', 'c1d7d65df7ee62c8b70ed8cd258f88d57f59e52dc0ea56cc43eee8e7f9eed3f0', '[\"*\"]', '2021-06-11 16:04:57', '2021-06-11 16:03:35', '2021-06-11 16:04:57'),
(16, 'App\\Models\\User', 5, 'myapptoken', '7b1fe8b62e3870835fa94cb8692a48d48c6281714edd931ef10fcd90d61b0dfe', '[\"*\"]', NULL, '2021-06-11 16:06:40', '2021-06-11 16:06:40'),
(17, 'App\\Models\\User', 5, 'myapptoken', '38881313e7665983f0447f21da8176a49ed829d219eb49eb7bca1253b81173e9', '[\"*\"]', NULL, '2021-06-11 16:08:02', '2021-06-11 16:08:02'),
(18, 'App\\Models\\User', 5, 'myapptoken', 'e2290955a42ebb574cac224c38c2d403ed194de0dcd2fde42284944b32476bff', '[\"*\"]', NULL, '2021-06-11 16:09:06', '2021-06-11 16:09:06'),
(19, 'App\\Models\\User', 5, 'myapptoken', '0b82ad948cc0d71728c09793218202360cee5e8a19be979ff4d6aa52fd2be6a8', '[\"*\"]', NULL, '2021-06-11 16:10:20', '2021-06-11 16:10:20'),
(20, 'App\\Models\\User', 5, 'myapptoken', '20499b55c9acdb7ba1a48a8f9fcb0b31251a74db364c422420fe9a7ef7ddd3d3', '[\"*\"]', '2021-06-11 16:13:38', '2021-06-11 16:11:17', '2021-06-11 16:13:38'),
(21, 'App\\Models\\User', 5, 'myapptoken', 'da7666e228772beb9baa690a9834695f15846cd7c5b37ba6429c42e8a0f8cd3e', '[\"*\"]', NULL, '2021-06-11 16:15:18', '2021-06-11 16:15:18'),
(22, 'App\\Models\\User', 5, 'myapptoken', 'e787f5a827d28a9b9b0a62192c6b0322394910740ee4f9a4ee549b1554dd8938', '[\"*\"]', '2021-06-11 16:17:32', '2021-06-11 16:16:10', '2021-06-11 16:17:32'),
(23, 'App\\Models\\User', 5, 'myapptoken', '72bdb2baacbf9c131aa3154c78c4eeafcf3e2d8936189b7ddf6c92ae4e348b12', '[\"*\"]', NULL, '2021-06-11 16:17:19', '2021-06-11 16:17:19'),
(24, 'App\\Models\\User', 5, 'myapptoken', '825cd3c1805749a47010e33b06da157ad9bb557e4725f6d4c8fdc346ea19297e', '[\"*\"]', NULL, '2021-06-11 16:22:35', '2021-06-11 16:22:35'),
(25, 'App\\Models\\User', 5, 'myapptoken', '4afd516818d41eadd375f84c37ae9c5289cee1e4fff3bd9dc496cb666218e973', '[\"*\"]', NULL, '2021-06-11 19:35:20', '2021-06-11 19:35:20'),
(26, 'App\\Models\\User', 5, 'myapptoken', 'cd0627a5d1a496d36de27b04010bbac000d85c14be3f4d4431c36397793d883d', '[\"*\"]', NULL, '2021-06-11 19:39:06', '2021-06-11 19:39:06'),
(27, 'App\\Models\\User', 5, 'myapptoken', '2effbfddcbf03536bd6c84b5d434fb0656384f64ebd8fdf39a3ff2cdab0501aa', '[\"*\"]', '2021-06-11 19:42:46', '2021-06-11 19:40:59', '2021-06-11 19:42:46'),
(28, 'App\\Models\\User', 5, 'myapptoken', 'c59a335f8145bba5c140a9c16cc30fe8a2dbf419429f1d87c9e7df86cf619301', '[\"*\"]', NULL, '2021-06-11 19:45:44', '2021-06-11 19:45:44'),
(29, 'App\\Models\\User', 5, 'myapptoken', '99639634d61892e2368ca54c162d80bf0501fe440a18de9a09b4ec5f8117b572', '[\"*\"]', NULL, '2021-06-11 19:47:20', '2021-06-11 19:47:20'),
(30, 'App\\Models\\User', 5, 'myapptoken', 'b017e812bbc233562ad341fc94fd337dea471a1fac4454cdb331ccc7f7cf6d6d', '[\"*\"]', NULL, '2021-06-11 19:49:12', '2021-06-11 19:49:12'),
(31, 'App\\Models\\User', 5, 'myapptoken', 'a3971f2429932e0cfd8118c5e6d70caf16954cc09cb0927e8ca6e2b2ebf08ebb', '[\"*\"]', NULL, '2021-06-11 19:50:42', '2021-06-11 19:50:42'),
(32, 'App\\Models\\User', 5, 'myapptoken', '4e670b341f6b4c01af8fc2d2d326f4be7e1a760fc319dfc0c7f3b537ddd97c5c', '[\"*\"]', NULL, '2021-06-11 19:52:20', '2021-06-11 19:52:20'),
(33, 'App\\Models\\User', 5, 'myapptoken', 'ccc5f90a19b8b303998260b3fab59090d9564550631405afdc9c0d2a8a30ee8c', '[\"*\"]', '2021-06-11 19:55:42', '2021-06-11 19:52:50', '2021-06-11 19:55:42'),
(34, 'App\\Models\\User', 5, 'myapptoken', '64ccf9e70377b4dbdc70466d821991b7383f1abe4a690a3b7e2e586e14698592', '[\"*\"]', '2021-06-11 19:56:45', '2021-06-11 19:55:26', '2021-06-11 19:56:45'),
(35, 'App\\Models\\User', 5, 'myapptoken', '48158201b132e609a55ea2ac7caef92229bc95388a3770d3a950726fd1394590', '[\"*\"]', '2021-06-11 19:59:41', '2021-06-11 19:57:03', '2021-06-11 19:59:41'),
(36, 'App\\Models\\User', 5, 'myapptoken', 'cccfce341e84e6809b91636976129f524acb5ceba92bba888dda16f5e479a545', '[\"*\"]', NULL, '2021-06-11 20:01:40', '2021-06-11 20:01:40'),
(37, 'App\\Models\\User', 5, 'myapptoken', '1afaec6219dbc9f0b8b89a2c7e8bb9c88c1427754b2b5ab0d2775e8299b66015', '[\"*\"]', NULL, '2021-06-11 20:02:21', '2021-06-11 20:02:21'),
(38, 'App\\Models\\User', 5, 'myapptoken', '6db487c9c665cf70e91a4617f09cd79c41b73cf22f1b9bcba64580b05f9d7498', '[\"*\"]', NULL, '2021-06-11 20:02:35', '2021-06-11 20:02:35'),
(39, 'App\\Models\\User', 5, 'myapptoken', '3595eb2f9fdecda5bcb7b267b16696a83569624a756a1f96d74073cc409888cd', '[\"*\"]', NULL, '2021-06-11 20:03:10', '2021-06-11 20:03:10'),
(40, 'App\\Models\\User', 5, 'myapptoken', 'e967a4b0fe8db327d6a9c1614e0685bbcecafd5ef6f0d656092b46ebc3bddf57', '[\"*\"]', '2021-06-11 20:04:10', '2021-06-11 20:03:20', '2021-06-11 20:04:10'),
(41, 'App\\Models\\User', 5, 'myapptoken', 'bb11cdae0cfae9cb7ddaf62a4824b15777715376ee8ce1804eb5d04752d4c061', '[\"*\"]', '2021-06-11 20:05:59', '2021-06-11 20:03:56', '2021-06-11 20:05:59'),
(42, 'App\\Models\\User', 5, 'myapptoken', 'de5a30f2fbec533555815697bcf707439d5b7f399eef916fc39bcbc2b1445185', '[\"*\"]', '2021-06-11 20:08:35', '2021-06-11 20:05:40', '2021-06-11 20:08:35'),
(43, 'App\\Models\\User', 5, 'myapptoken', '0eed48757ae91d58c799ceb138e82813ac9bb7a73dc65cc78198eaa9a6df816b', '[\"*\"]', NULL, '2021-06-11 20:08:22', '2021-06-11 20:08:22'),
(44, 'App\\Models\\User', 5, 'myapptoken', '4827ef5bf35c6d53a0031ccc95f430719376f9eea28b2d3568bfbfc9019382ff', '[\"*\"]', NULL, '2021-06-11 20:09:28', '2021-06-11 20:09:28'),
(45, 'App\\Models\\User', 5, 'myapptoken', '879f558a7cde93a59f0680ecb7e07a10ed4d6721dff1de34e9936829d86b3633', '[\"*\"]', NULL, '2021-06-11 20:09:40', '2021-06-11 20:09:40'),
(46, 'App\\Models\\User', 5, 'myapptoken', '82e44cf2fb47fceb5b6218fd0bf117c240df1647911a6a491f6c38e8db646b44', '[\"*\"]', NULL, '2021-06-11 20:09:54', '2021-06-11 20:09:54'),
(47, 'App\\Models\\User', 5, 'myapptoken', '4d49735540e29360109c62b74e2ee2bb5ae5b7257c086b9570ff76cf31d7d8be', '[\"*\"]', NULL, '2021-06-11 20:10:01', '2021-06-11 20:10:01'),
(48, 'App\\Models\\User', 5, 'myapptoken', '5d73ce67b97a1dc14b4399bf0f088c52b77402236fbd67e14f0279d12ce9b2f1', '[\"*\"]', NULL, '2021-06-11 20:10:43', '2021-06-11 20:10:43'),
(49, 'App\\Models\\User', 5, 'myapptoken', '8a8147c6987e4142b3f1851d3b973440dd747d993b84743df49a301167cb1e6b', '[\"*\"]', '2021-06-11 20:13:18', '2021-06-11 20:11:13', '2021-06-11 20:13:18'),
(50, 'App\\Models\\User', 5, 'myapptoken', '6da3f829a7293e7196198dbdd6078445445acec6532c84c6f4b29c20dbd05f6e', '[\"*\"]', NULL, '2021-06-11 20:11:58', '2021-06-11 20:11:58'),
(51, 'App\\Models\\User', 5, 'myapptoken', '5dd09672faf01da98b9fb250d00501ad510c6e26e2cb8aac5fe9a12f80b510a7', '[\"*\"]', NULL, '2021-06-11 20:12:41', '2021-06-11 20:12:41'),
(52, 'App\\Models\\User', 5, 'myapptoken', '8cc28da91d31e26d21e5c0482e9504f75f50c3baf1650b11fbb822f68ef99828', '[\"*\"]', NULL, '2021-06-11 20:13:31', '2021-06-11 20:13:31'),
(53, 'App\\Models\\User', 5, 'myapptoken', 'c2b3e2d683b6eef019bbc4c8fe052648622ee1ad46d1da41d6b846a660591cc6', '[\"*\"]', NULL, '2021-06-12 10:06:48', '2021-06-12 10:06:48'),
(54, 'App\\Models\\User', 5, 'myapptoken', '8123803e150c6111a6b147741a0176c2e99f1ccba0452fc22ea6260046ef1aa0', '[\"*\"]', NULL, '2021-06-12 10:52:10', '2021-06-12 10:52:10'),
(55, 'App\\Models\\User', 5, 'myapptoken', '089e860920ada6722b6f80cd8a85df365259629d7b1f8da74c76945cdeb12e7d', '[\"*\"]', '2021-06-12 10:56:54', '2021-06-12 10:54:19', '2021-06-12 10:56:54'),
(56, 'App\\Models\\User', 5, 'myapptoken', '54c330ab49aa381afc95f4bfd8d8085598b7c9c07e1d6df4ff91322510217422', '[\"*\"]', '2021-06-12 11:11:49', '2021-06-12 10:58:38', '2021-06-12 11:11:49'),
(57, 'App\\Models\\User', 5, 'myapptoken', '34c8ee99aaed2fbd1cc669095c22d8aebf507b4f4e93f520a4baf1d1a66fdc0b', '[\"*\"]', NULL, '2021-06-12 11:13:10', '2021-06-12 11:13:10'),
(58, 'App\\Models\\User', 5, 'myapptoken', '2bcc636b11144a7c2ac7c2cbf682f08d7f2bd06c76bb97e8f3ad2e39fa745835', '[\"*\"]', '2021-06-12 11:51:54', '2021-06-12 11:47:05', '2021-06-12 11:51:54'),
(59, 'App\\Models\\User', 5, 'myapptoken', '5f67ffa42077efbe398f77ed73661220bc642f8ffd11537ac27f3d7be6d76a2d', '[\"*\"]', '2021-06-12 12:13:58', '2021-06-12 11:53:28', '2021-06-12 12:13:58'),
(60, 'App\\Models\\User', 5, 'myapptoken', 'da0d22997572dc98851286727a2f95d8dea73dbf5a527a83f817acfc0c8b4b5e', '[\"*\"]', '2021-06-12 14:30:51', '2021-06-12 14:16:21', '2021-06-12 14:30:51'),
(61, 'App\\Models\\User', 5, 'myapptoken', 'ba388786bf3068fded65c5caca6565db024af658c17158a4d446feb099321c9a', '[\"*\"]', NULL, '2021-06-12 14:37:29', '2021-06-12 14:37:29'),
(62, 'App\\Models\\User', 5, 'myapptoken', 'd5c9e2d4c4ffd88ca14f3bacbfde6f361f9797909adf97902a6f186349e0656d', '[\"*\"]', NULL, '2021-06-12 14:40:26', '2021-06-12 14:40:26'),
(63, 'App\\Models\\User', 5, 'myapptoken', 'ad772fe99ef8e71887575fc931b097fc5007d081666a1673eff6cad8232da660', '[\"*\"]', NULL, '2021-06-12 14:42:31', '2021-06-12 14:42:31'),
(64, 'App\\Models\\User', 5, 'myapptoken', '45ca32865cb3c27269eb979a7aade906482f022bb277912478f33b6297ba8b72', '[\"*\"]', NULL, '2021-06-12 14:43:39', '2021-06-12 14:43:39'),
(65, 'App\\Models\\User', 5, 'myapptoken', '2fa8bad3f21102d6cedc65351ae01c89e45f9e8ccffafe94b7f52519319ad6d2', '[\"*\"]', '2021-06-12 14:46:49', '2021-06-12 14:46:29', '2021-06-12 14:46:49'),
(66, 'App\\Models\\User', 5, 'myapptoken', 'c08f27df672bf71c53e6437f444977256be9e438ebcd9c27551a814c28809879', '[\"*\"]', NULL, '2021-06-12 14:48:20', '2021-06-12 14:48:20'),
(67, 'App\\Models\\User', 6, 'myapptoken', '129a85f50901be448e20eb810f297031afb3a705c4118076248615e3f02df04a', '[\"*\"]', NULL, '2021-06-12 14:49:27', '2021-06-12 14:49:27'),
(68, 'App\\Models\\User', 6, 'myapptoken', '6149ac64dbd2bbc7d788d4ab9fd14983222eb9e2539a4b147a0917efbf1422ee', '[\"*\"]', '2021-06-12 14:53:37', '2021-06-12 14:50:03', '2021-06-12 14:53:37'),
(69, 'App\\Models\\User', 6, 'myapptoken', '5652ef20f15bfa46e4fdf3a36168e56fcb26a16fe5055571bcdb7487549154a3', '[\"*\"]', NULL, '2021-06-12 14:54:20', '2021-06-12 14:54:20');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civilite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `prenom`, `email`, `password`, `civilite`, `adresse`, `ville`, `photo`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Alaa', 'test7', 'nouassi94@gmail.com', '$2y$10$1Sr/eaYCtkoIN996IQ5hZeLtOrhPZSrBEkey6r1asU8Qv01nFTbh.', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-11 14:26:11', '2021-06-11 14:29:52'),
(5, 'alaa2', 'testprenom2', 'test@test.com', '$2y$10$rJrs3AwD6FcbTxAw21KzretGw1vDBPSZ6BA2cGYXKV7ECq79jw5Ny', 'testcivilite2', 'testadresse2', 'testadresse2', 'file:///data/user/0/com.testproject/cache/rn_image_picker_lib_temp_e8cc4133-af5c-4383-bd2f-1af9675dd4ea.jpg', NULL, NULL, '2021-06-11 14:45:04', '2021-06-12 14:46:49'),
(6, 'Nouassi', 'Ala-eddine', 'nouassi@gmail.com', '$2y$10$TQd8YVC5ESHxNouy9H2cCuTcPucyoybWEFBsaKNvjLvm7Nf2e.Wni', 'testcivilite', 'testadresse', 'temera', 'file:///data/user/0/com.testproject/cache/rn_image_picker_lib_temp_5a0f1078-b417-4944-b648-e9a45f203066.jpg', NULL, NULL, '2021-06-12 14:49:27', '2021-06-12 14:53:37');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
