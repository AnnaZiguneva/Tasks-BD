-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 17 2026 г., 20:43
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cinema`
--

-- --------------------------------------------------------

--
-- Структура таблицы `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `genre` text DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `relese_date` date DEFAULT NULL,
  `age_rating` text DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_showing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `movies`
--

INSERT INTO `movies` (`id`, `name`, `genre`, `duration`, `relese_date`, `age_rating`, `rating`, `description`, `is_showing`) VALUES
(1, 'Интерстеллар', 'Научная фантастика', 169, '2014-11-07', '12+', 8.6, 'Экипаж ищет новый дом для человечества', 1),
(2, 'Зеленая книга', 'Драма', 130, '2018-11-16', '16+', 8.2, 'История о дружбе белых и черных', 1),
(3, 'Дюна', 'Научная фантастика', 155, '2021-10-22', '12+', 8, 'Наследник отправляется на пустынную планету, чтобы предотвратить войну', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
