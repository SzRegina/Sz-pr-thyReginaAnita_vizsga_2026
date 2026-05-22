-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Máj 22. 12:11
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsga`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `esemenies`
--

CREATE TABLE `esemenies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategoria_id` bigint(20) UNSIGNED NOT NULL,
  `esemeny_nev` varchar(255) NOT NULL,
  `leiras` text NOT NULL,
  `datum` timestamp NOT NULL DEFAULT '2026-05-22 08:11:18',
  `resztvevok` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `kepURL` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `esemenies`
--

INSERT INTO `esemenies` (`id`, `kategoria_id`, `esemeny_nev`, `leiras`, `datum`, `resztvevok`, `ar`, `kepURL`, `created_at`, `updated_at`) VALUES
(1, 1, 'Voluptas perferendis cum et. Officiis excepturi maiores sed rerum voluptatem est. Consequatur laborum magni in vero vero rerum sint. Adipisci ut qui distinctio non ipsa.', 'Pariatur earum quisquam ad quibusdam ipsum animi. Laborum est est tempore quae animi et velit. Consequuntur et et qui fugit.', '2026-05-22 08:11:18', 24, 4109, 'Perspiciatis eaque est ut cupiditate.', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(2, 6, 'Impedit esse tenetur reiciendis doloremque enim et. Earum dolor consequatur amet nisi doloremque aspernatur. Fugit qui et delectus officiis pariatur qui ab voluptatem. Qui beatae rerum alias.', 'Similique nulla itaque quia veniam provident ea corporis. Qui pariatur consequatur ducimus dolores numquam occaecati. Aut atque et veniam minima. Fugiat nulla enim aliquam ea ipsam consequuntur.', '2026-05-22 08:11:18', 31, 1414, 'Nihil aut recusandae perferendis saepe.', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(3, 4, 'Temporibus cum quos cum tenetur. Et veritatis dolores et rerum unde. Voluptatem dolorum delectus eos et placeat soluta.', 'Et et veritatis sed facere sint dicta ipsa sint. Vel eos sint consequatur saepe qui quidem consequatur ut. Consequatur et ipsam suscipit eos.', '2026-05-22 08:11:18', 93, 1776, 'Facere nostrum architecto qui delectus.', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(4, 1, 'Exercitationem ut ullam sequi voluptates. Distinctio non quisquam voluptatem.', 'Molestias sit laudantium aliquam odit quos. Dignissimos et voluptas autem occaecati temporibus voluptatem. Reprehenderit voluptates qui omnis delectus sit.', '2026-05-22 08:11:18', 64, 4760, 'Dolorum ipsum eligendi est vero aut.', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(5, 3, 'Non cum ullam id consequatur culpa quia voluptates. Iste exercitationem vel libero voluptatibus rerum et inventore. In illo doloribus laborum perferendis sed qui adipisci.', 'Eos sint dolores qui eveniet est impedit. Et impedit qui ex rerum pariatur quae. Enim odio aut dolorem ut.', '2026-05-22 08:11:18', 87, 3079, 'Illum vitae sit odio delectus non perferendis.', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(6, 5, 'Sequi distinctio nisi quas omnis quia. Ea saepe praesentium officiis excepturi odit id qui qui. Dolore consequatur non molestiae provident nostrum.', 'Aut excepturi autem consequuntur quisquam. Quisquam quibusdam ut ducimus. Dolor debitis non est est doloribus aut.', '2026-05-22 08:11:18', 5, 1593, 'Impedit vel incidunt quia omnis eius quia.', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(7, 4, 'Labore est voluptas architecto voluptate illum earum non ab. Ex a nam et laborum quis. Occaecati ullam adipisci quisquam aut aliquam dolorem inventore et.', 'Sed animi nihil hic illum. Sed quo placeat provident consequatur. Amet adipisci excepturi repellendus est quia autem. Atque non nemo repellat.', '2026-05-22 08:11:18', 13, 1779, 'Cupiditate et corporis consectetur.', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(8, 4, 'Velit laborum dolorem ipsam itaque omnis qui tempore. Earum ut ipsum velit reprehenderit debitis voluptatum. Omnis mollitia perferendis eius. Aliquam esse laborum ut voluptate cumque inventore.', 'Placeat eos et itaque et perferendis qui. Nobis magni veritatis voluptas voluptatem. Accusamus et fugiat quia eum aperiam dolore laboriosam. Ut id ea est et odit.', '2026-05-22 08:11:18', 68, 2371, 'Nihil et iusto enim.', '2026-05-22 08:11:18', '2026-05-22 08:11:18');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategorias`
--

CREATE TABLE `kategorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategoria_nev` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `kategorias`
--

INSERT INTO `kategorias` (`id`, `kategoria_nev`, `created_at`, `updated_at`) VALUES
(1, 'kreatív', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(2, 'zene', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(3, 'tánc', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(4, 'kirándulás', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(5, 'mozgás', '2026-05-22 08:11:18', '2026-05-22 08:11:18'),
(6, 'kultúra', '2026-05-22 08:11:18', '2026-05-22 08:11:18');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_05_22_085214_create_kategorias_table', 1),
(5, '2026_05_22_085229_create_esemenies_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- A tábla indexei `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- A tábla indexei `esemenies`
--
ALTER TABLE `esemenies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `esemenies_kategoria_id_foreign` (`kategoria_id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- A tábla indexei `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kategorias`
--
ALTER TABLE `kategorias`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `esemenies`
--
ALTER TABLE `esemenies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kategorias`
--
ALTER TABLE `kategorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `esemenies`
--
ALTER TABLE `esemenies`
  ADD CONSTRAINT `esemenies_kategoria_id_foreign` FOREIGN KEY (`kategoria_id`) REFERENCES `kategorias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
