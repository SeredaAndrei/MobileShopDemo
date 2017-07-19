-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 04 2017 г., 15:54
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mobileshop`
--
CREATE DATABASE IF NOT EXISTS `mobileshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mobileshop`;

-- --------------------------------------------------------

--
-- Структура таблицы `журнал покупок`
--

CREATE TABLE `журнал покупок` (
  `ID покупки` int(11) NOT NULL,
  `ID товара` int(11) NOT NULL,
  `количество` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `журнал покупок`
--

INSERT INTO `журнал покупок` (`ID покупки`, `ID товара`, `количество`) VALUES
(1, 1, 100),
(2, 2, 3),
(3, 3, 54),
(4, 4, 98),
(5, 5, 11),
(6, 6, 28),
(7, 7, 36),
(8, 8, 4),
(9, 9, 30),
(10, 10, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `журнал поставок`
--

CREATE TABLE `журнал поставок` (
  `ID поставки` int(11) NOT NULL,
  `ID товара` int(11) NOT NULL,
  `количество` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `журнал поставок`
--

INSERT INTO `журнал поставок` (`ID поставки`, `ID товара`, `количество`) VALUES
(1, 1, 100),
(2, 2, 3),
(3, 3, 54),
(4, 4, 98),
(5, 5, 11),
(6, 6, 28),
(7, 7, 36),
(8, 8, 4),
(9, 9, 30),
(10, 10, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `покупатель`
--

CREATE TABLE `покупатель` (
  `ID покупателя` int(11) NOT NULL,
  `ФИО` varchar(50) NOT NULL,
  `e-mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `покупатель`
--

INSERT INTO `покупатель` (`ID покупателя`, `ФИО`, `e-mail`) VALUES
(1, 'Аня', 'anya@1'),
(2, 'Богдан', 'bodya@2'),
(3, 'Вадик', 'vadik@3'),
(4, 'Гриша', 'grisha@4'),
(5, 'Диана', 'diana@5'),
(6, 'Елена', 'lena@6'),
(7, 'Женя', 'evgen@7'),
(8, 'Зина', 'zina@8'),
(9, 'Игорь', 'igor@9'),
(10, 'Костя', 'kost@10');

-- --------------------------------------------------------

--
-- Структура таблицы `покупка`
--

CREATE TABLE `покупка` (
  `ID покупки` int(11) NOT NULL,
  `ID покупателя` int(11) NOT NULL,
  `дата` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `покупка`
--

INSERT INTO `покупка` (`ID покупки`, `ID покупателя`, `дата`) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 3, NULL),
(4, 4, NULL),
(5, 5, NULL),
(6, 6, NULL),
(7, 7, NULL),
(8, 8, NULL),
(9, 9, NULL),
(10, 10, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `поставка`
--

CREATE TABLE `поставка` (
  `ID поставки` int(11) NOT NULL,
  `ID поставщика` int(11) NOT NULL,
  `дата` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `поставка`
--

INSERT INTO `поставка` (`ID поставки`, `ID поставщика`, `дата`) VALUES
(1, 1, '2017-04-04'),
(2, 2, '2017-04-04'),
(3, 3, '2017-04-04'),
(4, 4, '2017-04-04'),
(5, 5, '2017-04-04'),
(6, 6, '2017-04-04'),
(7, 7, '2017-04-04'),
(8, 8, '2017-04-04'),
(9, 9, '2017-04-04'),
(10, 10, '2017-04-04');

-- --------------------------------------------------------

--
-- Структура таблицы `поставщик`
--

CREATE TABLE `поставщик` (
  `ID поставщика` int(11) NOT NULL,
  `наименование` varchar(50) NOT NULL,
  `город` varchar(50) NOT NULL,
  `адрес` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `поставщик`
--

INSERT INTO `поставщик` (`ID поставщика`, `наименование`, `город`, `адрес`) VALUES
(1, 'Apple', 'Сан-Франсиско', 'васи пупкина улица дом 23'),
(2, 'Benq', 'Шанхай', 'китай 12'),
(3, 'Citrus', 'Киев', 'есть 1'),
(4, 'Dell', 'ПалАльто', 'авто'),
(5, 'Epson', 'Вашингтон', 'ДС'),
(6, 'Fly', 'Пекин', 'есть 13'),
(7, 'Google', 'Купертино', 'отож 1'),
(8, 'Javashop', 'Солнечный город', 'ага, точно'),
(9, 'Samsung', 'Харьков', 'Гагарина 199'),
(10, 'Vivo', 'Ханой', 'хуайвэй 12');

-- --------------------------------------------------------

--
-- Структура таблицы `товар`
--

CREATE TABLE `товар` (
  `ID товара` int(11) NOT NULL,
  `наименование` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `товар`
--

INSERT INTO `товар` (`ID товара`, `наименование`) VALUES
(1, 'Apple'),
(2, 'Benq'),
(3, 'Citrus'),
(4, 'Dell'),
(5, 'Epson'),
(6, 'Fly'),
(7, 'Google'),
(8, 'Javashop'),
(9, 'Samsung'),
(10, 'Vivo');

-- --------------------------------------------------------

--
-- Структура таблицы `цена`
--

CREATE TABLE `цена` (
  `ID товара` int(11) NOT NULL,
  `дата` date NOT NULL,
  `цена` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `цена`
--

INSERT INTO `цена` (`ID товара`, `дата`, `цена`) VALUES
(1, '2017-04-04', 50),
(2, '2017-04-04', 25),
(3, '2017-04-04', 67),
(4, '2017-04-04', 90),
(5, '2017-04-04', 55),
(6, '2017-04-04', 80),
(7, '2017-04-04', 1),
(8, '2017-04-04', 70),
(9, '2017-04-04', 31),
(10, '2017-04-04', 150);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `покупатель`
--
ALTER TABLE `покупатель`
  ADD PRIMARY KEY (`ID покупателя`);

--
-- Индексы таблицы `покупка`
--
ALTER TABLE `покупка`
  ADD PRIMARY KEY (`ID покупки`);

--
-- Индексы таблицы `поставка`
--
ALTER TABLE `поставка`
  ADD PRIMARY KEY (`ID поставки`);

--
-- Индексы таблицы `поставщик`
--
ALTER TABLE `поставщик`
  ADD PRIMARY KEY (`ID поставщика`);

--
-- Индексы таблицы `товар`
--
ALTER TABLE `товар`
  ADD PRIMARY KEY (`ID товара`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
