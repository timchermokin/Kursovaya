-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 31 2019 г., 17:15
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bd_of_timur`
--

-- --------------------------------------------------------

--
-- Структура таблицы `friendship`
--

CREATE TABLE `friendship` (
  `userid1` int(11) NOT NULL,
  `userid2` int(11) NOT NULL,
  `timestamp` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы ` likes`
--

CREATE TABLE ` likes` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `timestamp` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `userid` varchar(45) COLLATE utf8_bin NOT NULL,
  `text` varchar(45) COLLATE utf8_bin NOT NULL,
  `timestamp` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  `surname` varchar(45) COLLATE utf8_bin NOT NULL,
  `DateOfBirth` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `DateOfBirth`) VALUES
(1, 'Ivan', 'Ivanov', '12.03.1995'),
(2, 'Timur', 'Cermokin', '31.01.1999'),
(3, 'Igor', 'Alexandrov', '31.01.2001'),
(4, 'Petya', 'Belov', '18.10.1997'),
(5, 'Katya', 'Petrova', '03.07.1990');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `friendship`
--
ALTER TABLE `friendship`
  ADD UNIQUE KEY `userid1_UNIQUE` (`userid1`),
  ADD UNIQUE KEY `userid2_UNIQUE` (`userid2`);

--
-- Индексы таблицы ` likes`
--
ALTER TABLE ` likes`
  ADD PRIMARY KEY (`postid`),
  ADD UNIQUE KEY `userid_UNIQUE` (`userid`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid_UNIQUE` (`userid`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы ` likes`
--
ALTER TABLE ` likes`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
