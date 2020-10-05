-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 05 2020 г., 10:54
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `commentator_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `commentator_id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 5, 'I don\'t like it, yer honour, at all, at all!\' \'Do as I used--and I don\'t want to go! Let me see.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(2, 14, 7, 'Queen,\' and she felt certain it must be Mabel after all, and I shall think nothing of the.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(3, 17, 12, 'She drew her foot slipped, and in THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(4, 12, 4, 'When the pie was all very well to introduce some other subject of conversation. \'Are you--are you.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(5, 14, 8, 'And mentioned me to him: She gave me a good opportunity for croqueting one of them.\' In another.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(6, 12, 6, 'Dormouse, who seemed to be a walrus or hippopotamus, but then she looked up, but it said nothing.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(7, 14, 12, 'For some minutes the whole head appeared, and then nodded. \'It\'s no business there, at any rate.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(8, 18, 10, 'INSIDE, you might like to be talking in his throat,\' said the Caterpillar. \'I\'m afraid I don\'t.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(9, 17, 5, 'The Panther took pie-crust, and gravy, and meat, While the Duchess sang the second thing is to.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(10, 17, 11, 'The Panther took pie-crust, and gravy, and meat, While the Duchess sang the second thing is to.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL),
(11, 14, 10, 'For some minutes the whole head appeared, and then nodded. \'It\'s no business there, at any rate.', '2020-10-04 15:52:40', '2020-10-04 15:52:40', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `url`) VALUES
(16, 'public\\images\\728ed7904e0ed851fc306e2654cb33b8.jpg'),
(17, 'public\\images\\50ae201129038d0900a93142dcb89315.jpg'),
(18, 'public\\images\\cc3fcd391e552830cb260c6ef7fe5bdb.jpg'),
(19, 'public\\images\\cd1da6148c2862bad78d69e0310d2f3c.jpg'),
(20, 'public\\images\\85834b74f9ddb6b9f22876bbfd5d477e.jpg'),
(21, 'public\\images\\cd092ef44c63952eeb505fa363a3fb03.jpg'),
(22, 'public\\images\\7399646dfbaadc3e5e9d329c74279bd1.jpg'),
(23, 'public\\images\\ae3507501893b79484b6ffb8bca0c2b2.jpg'),
(24, 'public\\images\\73a3584f554f64d12bf256e8dfdae962.jpg'),
(25, 'public\\images\\8b9ad91119c89358bc2e206e15a7ff40.jpg'),
(26, 'public\\images\\0ad70d406fa4eaf81e946e8c680558b5.jpg'),
(27, 'public\\images\\12cbe83e5a773307da83a456b165449f.jpg'),
(28, 'public\\images\\35262bf53fe8871d8052907d2c609b76.jpg'),
(29, 'public\\images\\931521b119697cd20544ce0e84ae83c3.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_10_04_151337_create_users_table', 1),
(2, '2020_10_04_152425_create_images_table', 1),
(3, '2020_10_04_152719_create_posts_table', 1),
(4, '2020_10_04_155355_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `image_id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 10, 17, 'I can say.\' This was not here before,\' said Alice,) and round Alice, every now and then she looked.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(11, 7, 21, 'Hatter went on, \'I must be really offended. \'We won\'t talk about trouble!\' said the Mock Turtle.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(12, 7, 18, 'I\'m not looking for it, she found she had never seen such a pleasant temper, and thought it would.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(13, 1, 16, 'Her chin was pressed so closely against her foot, that there was nothing on it but tea. \'I don\'t.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(14, 7, 26, 'March Hare said--\' \'I didn\'t!\' the March Hare took the watch and looked at the time he was in.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(15, 4, 26, 'Soon her eye fell upon a time there were no arches left, and all would change to tinkling.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(16, 2, 19, 'Dodo could not help thinking there MUST be more to come, so she waited. The Gryphon sat up and.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(17, 3, 24, 'BEST butter, you know.\' \'And what an ignorant little girl or a worm. The question is, what?\' The.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(18, 11, NULL, 'Dormouse, not choosing to notice this last remark. \'Of course it is,\' said the Gryphon. \'They.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(19, 11, NULL, 'Dormouse, not choosing to notice this last remark. \'Of course it is,\' said the Gryphon. \'They.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL),
(20, 3, 26, 'BEST butter, you know.\' \'And what an ignorant little girl or a worm. The question is, what?\' The.', '2020-10-04 15:24:32', '2020-10-04 15:24:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Lynn Boehm MD', 'demetris23@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 14:17:03', '2020-10-04 14:17:03'),
(2, 'Eldon Welch', 'eleazar.stehr@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 14:17:03', '2020-10-04 14:17:03'),
(3, 'Cynthia Emmerich', 'tkris@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 14:17:03', '2020-10-04 14:17:03'),
(4, 'Miss Citlalli Ziemann DDS', 'dickinson.abe@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:16', '2020-10-04 15:15:16'),
(5, 'Delmer Nicolas', 'ethelyn31@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:16', '2020-10-04 15:15:16'),
(6, 'Verna Reichel', 'wayne39@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:16', '2020-10-04 15:15:16'),
(7, 'Judge Jaskolski', 'fahey.crawford@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:16', '2020-10-04 15:15:16'),
(8, 'Jamel Kreiger', 'rosetta.glover@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:17', '2020-10-04 15:15:17'),
(9, 'Delaney Erdman', 'hbreitenberg@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:17', '2020-10-04 15:15:17'),
(10, 'Prof. Taurean Mayer', 'lockman.shirley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:17', '2020-10-04 15:15:17'),
(11, 'Brennan Towne', 'candida28@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:17', '2020-10-04 15:15:17'),
(12, 'Raymundo Gottlieb', 'bridgette.kshlerin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2020-10-04 15:15:18', '2020-10-04 15:15:18');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_commentator_id_foreign` (`commentator_id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_image_id_foreign` (`image_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_commentator_id_foreign` FOREIGN KEY (`commentator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
