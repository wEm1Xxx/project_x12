-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 16 2025 г., 11:47
-- Версия сервера: 8.0.13
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `GevS1234_project_X`
--

-- --------------------------------------------------------

--
-- Структура таблицы `College`
--

CREATE TABLE `College` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groups_id` int(11) NOT NULL,
  `students_director_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `College`
--

INSERT INTO `College` (`id`, `groups_id`, `students_director_id`, `name`) VALUES
(1, 5, 1, 'ЯМК'),
(2, 4, 1, 'ЯМК'),
(3, 3, 2, 'ЯМК'),
(4, 2, 1, 'ЯМК'),
(5, 1, 2, 'ЯМК');

-- --------------------------------------------------------

--
-- Структура таблицы `Director`
--

CREATE TABLE `Director` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surename` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `full_name_in_the_genetive_case` text NOT NULL,
  `initials` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Director`
--

INSERT INTO `Director` (`id`, `surename`, `name`, `middle_name`, `full_name_in_the_genetive_case`, `initials`, `post_id`, `phone_number`) VALUES
(1, 'Кузнецов', 'Алексей', 'Михайлович', 'Кузнецова Алексея Михайловича', 'Кузнецов.А.М.', 3, '+7(912)345-67-89'),
(2, 'Соколова', 'Екатерина', 'Валерьевна', 'Соколовой Екатерины Валерьевны', 'Соколова.Е.В.', 1, '+7(987)654-32-10'),
(3, 'Морозов', 'Дмитрий', 'Сергеевич', 'Морозова Дмитрия Сергеевича', 'Морозов.Д.С.', 5, '+7(905)123-45-67'),
(4, 'Волкова', 'Анна', 'Павловна', 'Волковой Анны Павловны', 'Волкова.А.П.', 2, '+7(916)789-01-23'),
(5, 'Григорьев', 'Илья', 'Андреевич', 'Григорьева Ильи Андреевича', 'Григорьев.И.А.', 4, '+7(925)456-78-90'),
(6, 'Зайцева', 'Ольга', 'Игоревна', 'Зайцевой Ольги Игоревны', 'Зайцева.О.И.', 1, '+7(903)210-98-76'),
(7, 'Белов', 'Роман', 'Викторович', 'Белова Романа Викторовича', 'Белов.Р.В.', 3, '+7(926)543-21-09'),
(8, 'Ковалёва', 'Наталья', 'Денисовна', 'Ковалёвой Натальи Денисовны', 'Ковалёва.Н.Д.', 5, '+7(909)876-54-32'),
(9, 'Титов', 'Артём', 'Олегович', 'Титова Артёма Олеговича', 'Титов.А.О.', 2, '+7(917)234-56-78'),
(10, 'Симонова', 'Вероника', 'Алексеевна', 'Симоновой Вероники Алексеевны', 'Симонова.В.А', 4, '+7(919)765-43-21');

-- --------------------------------------------------------

--
-- Структура таблицы `Director_post`
--

CREATE TABLE `Director_post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Director_post`
--

INSERT INTO `Director_post` (`id`, `name`) VALUES
(1, 'Директор'),
(2, 'Исполняющий обязанности ');

-- --------------------------------------------------------

--
-- Структура таблицы `Groups`
--

CREATE TABLE `Groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Groups`
--

INSERT INTO `Groups` (`id`, `name`, `course`) VALUES
(2, '23ИСиП', '2'),
(3, '22СиС', '3'),
(4, '21ИСиП', '4'),
(5, '21ИСП', '4'),
(6, '24МРИС', '1'),
(7, '24НАИС', '1'),
(8, '24ОИС', '1'),
(9, '24МРАТ', '1'),
(10, '24ОТТ', '1'),
(11, '24ОМД', '1'),
(12, '24СИС', '1'),
(13, '24ИСиП', '1'),
(14, '24ВЕБ', '1'),
(15, '24ЭММ', '1'),
(16, '24ТОиРА', '1'),
(17, '24СУД', '1'),
(18, '24ОСиМ', '1'),
(19, '24ПОВ', '1'),
(20, '24РА', '1'),
(21, '23ОИС', '2'),
(22, '23ЭМ', '2'),
(23, '23МРАТ', '2'),
(24, '23МОТ', '2'),
(25, '23ОМ', '2'),
(26, '23ОМД', '2'),
(27, '23КСК', '2'),
(28, '23СИС', '2'),
(30, '23ОИБ', '2'),
(31, '23ТОРД', '2'),
(32, '23СУД', '2'),
(33, '23ПОВ', '2'),
(34, '23ЭВМ', '2'),
(35, '23ПАР', '2'),
(36, '23КОРЗ', '2'),
(37, '23РА', '2'),
(38, '22НКС', '3'),
(39, '22ЭМ', '3'),
(40, '22МРАТ', '3'),
(41, '22СПМ', '3'),
(42, '22ОМ', '3'),
(44, '22ИСиП(1)', '3'),
(45, '22ИСиП(2)', '3'),
(46, '22ИСиП(я)', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `Metodical_director`
--

CREATE TABLE `Metodical_director` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surename` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `initials` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Metodical_director`
--

INSERT INTO `Metodical_director` (`id`, `surename`, `name`, `middle_name`, `initials`, `role_id`) VALUES
(1, 'Иванов', 'Александр', 'Петрович', 'Иванов.А.П.', 2),
(2, 'Смирнова', 'Елена', 'Владимировна', 'Смирнова.Е.В.', 2),
(3, 'Кузнецов', 'Дмитрий', 'Сергеевич', 'Кузнецов.Д.С.', 2),
(4, 'Попова', 'Ольга', 'Александровна', 'Попова.О.А.', 2),
(5, 'Лебедев', 'Михаил', 'Игоревич', 'Лебедев.М.И.', 2),
(6, 'Новикова', 'Анна', 'Дмитриевна', 'Новикова.А.Д.', 2),
(7, 'Соколов', 'Артём', 'Викторович', 'Соколов.А.В.', 2),
(8, 'Волкова', 'Татьяна', 'Сергеевна', 'Волкова.Т.С.', 2),
(9, 'Фёдоров', 'Иван', 'Алексеевич', 'Фёдоров.И.А.', 2),
(10, 'Козлова', 'Наталья', 'Павловна', 'Козлова.Н.П.', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Metodical_Groups_Practice`
--

CREATE TABLE `Metodical_Groups_Practice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metodical_director_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `practice_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Metodical_Groups_Practice`
--

INSERT INTO `Metodical_Groups_Practice` (`id`, `metodical_director_id`, `group_id`, `practice_id`) VALUES
(1, 7, 3, 4),
(2, 2, 1, 9),
(3, 9, 4, 6),
(4, 5, 2, 3),
(5, 10, 5, 8),
(6, 3, 2, 1),
(7, 6, 4, 7),
(8, 1, 3, 10),
(9, 8, 1, 2),
(10, 4, 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Post`
--

CREATE TABLE `Post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Post`
--

INSERT INTO `Post` (`id`, `name`) VALUES
(1, 'Генеральный директор'),
(2, 'Заместитель директора'),
(3, 'Менеджер по персоналу'),
(4, 'Бухгалтер'),
(5, 'Маркетолог'),
(6, 'Менеджер по продажам'),
(7, 'Администратор офиса'),
(8, 'Специалист по закупкам'),
(9, 'Веб-разработчик'),
(10, 'Дизайнер');

-- --------------------------------------------------------

--
-- Структура таблицы `Practice`
--

CREATE TABLE `Practice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization` varchar(255) NOT NULL,
  `production_practice_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `practice_time` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Practice`
--

INSERT INTO `Practice` (`id`, `organization`, `production_practice_id`, `address`, `practice_time`, `start_date`, `end_date`, `director_id`) VALUES
(1, 'ООО \"ТехноСервис\"', 3, 'ул. Советская  24', '8ч', '2045-10-08', '2045-12-02', 5),
(2, 'АО \"НефтеГаз\"', 5, 'пр. Энергетиков 11', '10ч', '2023-07-10', '2023-07-25', 8),
(3, 'ИП \"СтройМастер\"', 2, 'ул. Строителей 7', '6ч', '2023-08-05', '2023-08-20', 2),
(4, 'ЗАО \"АгроТех\"', 4, 'ул. Полевая 8', '8ч', '2023-09-12', '2023-09-27', 7),
(5, 'ООО \"ТоргПром\"', 1, 'ул. Торговая 9', '3ч', '2023-10-01', '2023-10-16', 4),
(6, 'АО \"МедИнструмент\"', 6, 'ул. Здоровья 10', '10ч', '2023-11-15', '2023-11-30', 9),
(7, 'ИП \"Быстрое Такси\"', 3, 'ул. Транспортная 11', '6ч', '2023-12-03', '2023-12-18', 1),
(8, 'ООО \"КомпьютерЛэнд\"', 2, 'ул. Программистов 12', '8ч', '2024-01-10', '2024-01-25', 6),
(9, 'ЗАО \"ПищеКомбинат\"', 5, 'ул. Мукомольная 13', '10ч', '2024-02-05', '2024-02-20', 3),
(10, 'ООО \"ДизайнСтудия\"', 4, 'ул. Креативная 14', '3ч', '2024-03-15', '2024-03-30', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `Production_practice`
--

CREATE TABLE `Production_practice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `practice_name` varchar(255) NOT NULL,
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Production_practice`
--

INSERT INTO `Production_practice` (`id`, `practice_name`, `module_name`) VALUES
(1, 'ПДП', 'ПДП'),
(2, 'ПП 02 название', 'Пм.02 название'),
(3, 'УП 03 название', 'Пм.03 Название'),
(4, 'ПДП', 'ПДП'),
(5, 'УП 05 название', 'Пм.05 название'),
(6, 'ПП 06 название', 'Пм.06 название');

-- --------------------------------------------------------

--
-- Структура таблицы `Roles`
--

CREATE TABLE `Roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Roles`
--

INSERT INTO `Roles` (`id`, `name`) VALUES
(1, 'Администратор'),
(2, 'Преподаватель');

-- --------------------------------------------------------

--
-- Структура таблицы `Students`
--

CREATE TABLE `Students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surename` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `full_name_in_the_genitive_case` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Students`
--

INSERT INTO `Students` (`id`, `surename`, `name`, `middle_name`, `full_name_in_the_genitive_case`, `group_id`, `specialization`, `date_of_birth`) VALUES
(1, 'Иванова', 'Дарья', 'Сергеевна', 'Ивановой Дарьи Сергеевны ', 6, 'Системный администратор', '2015-08-05'),
(2, 'Петров', 'Максим', 'Андреевич', 'Петрова Максима Андреевича', 7, 'Программист', '2022-11-04'),
(3, 'Смирнова', 'Анна', 'Викторовна', 'Смирновой Анны Викторовны', 5, 'Системный администратор', '2010-03-03'),
(4, 'Козлов', 'Артём', 'Игоревич', 'Козлова Артёма Игоревича', 2, 'Программист', '2005-07-06'),
(5, 'Новикова', 'Елена', 'Дмитриевна', 'Новиковой Елены Дмитриевны', 4, 'Системный администратор', '2030-09-02'),
(6, 'Лебедев', 'Кирилл', 'Павлович', 'Лебедева Кирилла Павловича', 2, 'Программист', '2014-12-05'),
(7, 'Фёдорова', 'Ольга', 'Александровна', 'Фёдоровой Ольги Александровны', 3, 'Системный администратор', '2018-04-01'),
(8, 'Громов', 'Даниил', 'Евгеньевич', 'Громова Даниила Евгеньевича', 5, 'Программист', '2025-10-04'),
(9, 'Белова', 'Мария', 'Алексеевна', 'Беловой Марии Алексеевны', 5, 'Системный администратор', '2007-06-03'),
(10, 'Соколов', 'Иван', 'Васильевич', 'Соколова Ивана Васильевича', 4, 'Программист', '2012-02-06');

-- --------------------------------------------------------

--
-- Структура таблицы `Students_director`
--

CREATE TABLE `Students_director` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surename` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `initials` varchar(255) NOT NULL,
  `director_post_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Students_director`
--

INSERT INTO `Students_director` (`id`, `surename`, `name`, `middle_name`, `initials`, `director_post_id`) VALUES
(1, 'Смирнова', 'Анна', 'Дмитриевна', 'Смирнова А.Д.', 2),
(2, 'Лебедев', 'Алексей', 'Николаевич', 'Лебедев А.Н.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `login`, `password`, `role_id`) VALUES
(1, 'sunny23', '!Rainbow7', 2),
(2, 'cat_lover', 'M3ow#2024', 1),
(3, 'bookworm', 'Page_Turner1', 2),
(4, 'star_gazer', 'Sky!Night88', 2),
(5, 'coffee123', 'Cup_Black', 1),
(6, 'traveler', ' Road_Trip99', 1),
(7, 'gamer_ace', 'Win_No1!', 1),
(8, 'music_fan', 'Guitar$2024', 2),
(9, 'sporty', 'Run#Fast5', 1),
(10, 'happy_day', 'Smile^Sun', 2),
(11, 'user1', '$2b$12$AXUiDC6ATbHiw14UtgUgXOBPlP6WPr6rpTDkhPlKWgI6GOPAMfPOi', 1),
(12, 'user2', '$2b$12$0dxXygP0urJwgTiUcd51lO0zmSz/u2ktU7oKcgrvSPomCPxClQDm2', 2),
(13, 'user3', '$2b$12$FyNU3vnIHZ2y7gxrV.rh6eCIiDFwfWNrAT8uRviJ7jQQfRH2aF/Rq', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `College`
--
ALTER TABLE `College`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_students_director_id_foreign` (`students_director_id`),
  ADD KEY `college_groups_id_foreign` (`groups_id`);

--
-- Индексы таблицы `Director`
--
ALTER TABLE `Director`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `Director_post`
--
ALTER TABLE `Director_post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Metodical_director`
--
ALTER TABLE `Metodical_director`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metodical_director_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `Metodical_Groups_Practice`
--
ALTER TABLE `Metodical_Groups_Practice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metodical_groups_practice_practice_id_foreign` (`practice_id`),
  ADD KEY `metodical_groups_practice_metodical_director_id_foreign` (`metodical_director_id`),
  ADD KEY `metodical_groups_practice_group_id_foreign` (`group_id`);

--
-- Индексы таблицы `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Practice`
--
ALTER TABLE `Practice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `practice_director_id_foreign` (`director_id`),
  ADD KEY `practice_production_practice_id_foreign` (`production_practice_id`);

--
-- Индексы таблицы `Production_practice`
--
ALTER TABLE `Production_practice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_group_id_foreign` (`group_id`);

--
-- Индексы таблицы `Students_director`
--
ALTER TABLE `Students_director`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `College`
--
ALTER TABLE `College`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Director`
--
ALTER TABLE `Director`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Director_post`
--
ALTER TABLE `Director_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Groups`
--
ALTER TABLE `Groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `Metodical_director`
--
ALTER TABLE `Metodical_director`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Metodical_Groups_Practice`
--
ALTER TABLE `Metodical_Groups_Practice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Post`
--
ALTER TABLE `Post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Practice`
--
ALTER TABLE `Practice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `Production_practice`
--
ALTER TABLE `Production_practice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Roles`
--
ALTER TABLE `Roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Students`
--
ALTER TABLE `Students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `Students_director`
--
ALTER TABLE `Students_director`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
