-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 29 2020 г., 02:04
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
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
-- База данных: `v502725v_baza`
--

-- --------------------------------------------------------

--
-- Структура таблицы `all_accesses`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `all_accesses`;
CREATE TABLE `all_accesses` (
  `type` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `all_accesses`
--

INSERT INTO `all_accesses` (`type`, `name`) VALUES
('adm_panel_show', 'Админка - доступ к разделам админки'),
('loads_file_upload', 'Загрузки - выгрузка файлов'),
('loads_dir_mesto', 'Загрузки - перемещение папок'),
('loads_dir_delete', 'Загрузки - удаление папок'),
('loads_dir_rename', 'Загрузки - переименование папок'),
('loads_dir_create', 'Загрузки - создание папок'),
('loads_file_edit', 'Загрузки - параметры файлов'),
('loads_file_delete', 'Загрузки - удаление файлов'),
('loads_unzip', 'Загрузки - Распаковка ZIP'),
('lib_stat_zip', 'Библиотека - выгрузка статей в ZIP'),
('lib_stat_txt', 'Библиотека - выгрузка статей в txt'),
('lib_stat_create', 'Библиотека - создание статей'),
('lib_dir_delete', 'Библиотека - удаление папок'),
('lib_dir_mesto', 'Библиотека - перемещение папок'),
('lib_dir_edit', 'Библиотека - редактирование папок'),
('lib_dir_create', 'Библиотека - создание папок'),
('lib_stat_delete', 'Библиотека - удаление статей'),
('votes_settings', 'Голосования - закрытие/удаление'),
('votes_create', 'Голосования - создание'),
('mini_chat_clear', 'Мини чат - очистка'),
('mini_chat_delete', 'Мини чат - удаление постов'),
('obmen_dir_delete', 'Обменник - удаление папок'),
('obmen_dir_edit', 'Обменник - управление папками'),
('obmen_dir_create', 'Обменник - создание папок'),
('obmen_file_delete', 'Обменник - удаление файлов'),
('obmen_file_edit', 'Обменник - редактирование файлов'),
('obmen_komm_del', 'Обменник - удаление комментариев'),
('foto_foto_edit', 'Фотогалерея - редактирование/удаление фото'),
('foto_alb_del', 'Фотогалерея - удаление альбомов'),
('foto_komm_del', 'Фотогалерея - удаление комментариев'),
('forum_razd_create', 'Форум - создание разделов'),
('forum_for_delete', 'Форум - удаление подфорумов'),
('forum_for_edit', 'Форум - редактирование подфорумов'),
('forum_for_create', 'Форум - создание подфорумов'),
('forum_razd_edit', 'Форум - управление разделами'),
('adm_info', 'Админка - общая информация'),
('forum_them_edit', 'Форум - редактирование тем'),
('forum_them_del', 'Форум - удаление тем'),
('forum_post_ed', 'Форум - редактирование сообщений'),
('chat_clear', 'Чат - очистка'),
('chat_room', 'Чат - управление комнатами'),
('adm_statistic', 'Админка - статистика'),
('adm_banlist', 'Админка - список забаненых'),
('adm_menu', 'Админка - главное меню'),
('adm_news', 'Админка - новости'),
('adm_rekl', 'Админка - реклама'),
('adm_set_sys', 'Админка - настройки системы'),
('adm_set_loads', 'Админка - настройки загруз-центра'),
('adm_set_user', 'Админка - пользовательские настройки'),
('adm_set_chat', 'Админка - настройки чата'),
('adm_set_forum', 'Админка - настройки форума'),
('adm_set_foto', 'Админка - настройки фотогалереи'),
('adm_forum_sinc', 'Админка - синхронизация таблиц форума'),
('adm_themes', 'Админка - темы оформления'),
('adm_log_read', 'Админка - лог действий администрации'),
('adm_log_delete', 'Админка - удаление лога'),
('adm_mysql', 'Админка - MySQL запросы !!!'),
('adm_ref', 'Админка - рефералы'),
('adm_show_adm', 'Админка - список администрации'),
('adm_ip_edit', 'Админка - редактирование IP операторов'),
('adm_ban_ip', 'Админка - бан по IP'),
('adm_accesses', 'Привилегии групп пользователей !!!'),
('user_delete', 'Пользователи - удаление'),
('user_mass_delete', 'Пользователи - массовое удаление'),
('user_ban_set', 'Пользователи - бан'),
('user_ban_unset', 'Пользователи - снятие бана'),
('user_prof_edit', 'Пользователи - редактирование профиля'),
('user_collisions', 'Пользователи - совпадения ников'),
('user_show_ip', 'Пользователи - показывать IP'),
('user_show_ua', 'Пользователи - показ USER-AGENT'),
('user_show_add_info', 'Пользователи - показ доп. информации'),
('guest_show_ip', 'Гости - показ IP'),
('user_change_group', 'Пользователи - смена группы привилегий'),
('user_ban_set_h', 'Пользователи - бан (max 1 сутки)'),
('forum_post_close', 'Форум - возможность писать в закрытой теме'),
('user_change_nick', 'Пользователи - смена ника'),
('loads_file_import', 'Загрузки - импорт файлов'),
('adm_lib_repair', 'Восстановление библиотеки'),
('notes_edit', 'Дневники - редактирование'),
('notes_delete', 'Дневники - удаление');

-- --------------------------------------------------------

--
-- Структура таблицы `ban`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:09
--

DROP TABLE IF EXISTS `ban`;
CREATE TABLE `ban` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ban` int(11) NOT NULL,
  `prich` varchar(1024) NOT NULL,
  `view` set('1','0') NOT NULL DEFAULT '0',
  `razdel` varchar(10) DEFAULT 'all',
  `post` int(1) DEFAULT '0',
  `pochemu` int(11) DEFAULT '0',
  `navsegda` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ban_ip`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:09
--

DROP TABLE IF EXISTS `ban_ip`;
CREATE TABLE `ban_ip` (
  `min` bigint(20) NOT NULL,
  `max` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bookmarks`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:50
--

DROP TABLE IF EXISTS `bookmarks`;
CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_object` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `id_user`, `id_object`, `time`, `type`) VALUES
(6, 1, 13, 1580251849, 'foto'),
(2, 1, 12, 1580250736, 'foto'),
(3, 1, 11, 1580251360, 'foto'),
(4, 2, 11, 1580251705, 'foto');

-- --------------------------------------------------------

--
-- Структура таблицы `cron`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 28 2020 г., 09:40
--

DROP TABLE IF EXISTS `cron`;
CREATE TABLE `cron` (
  `id` varchar(32) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cron`
--

INSERT INTO `cron` (`id`, `time`) VALUES
('clear_tmp_dir', 1580204420),
('visit', 1574024548),
('everyday', 1574283841),
('backup_mysql', 1574024550);

-- --------------------------------------------------------

--
-- Структура таблицы `discussions`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:50
--

DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `avtor` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `count` int(11) DEFAULT '0',
  `msg` varchar(1024) NOT NULL,
  `time` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `id_sim` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `discussions`
--

INSERT INTO `discussions` (`id`, `avtor`, `id_user`, `count`, `msg`, `time`, `type`, `id_sim`) VALUES
(1, 1, 2, 0, '', 1580250584, 'foto', 10),
(2, 1, 1, 1, '', 1580250584, 'foto', 10),
(3, 1, 2, 0, '', 1580251354, 'foto', 11),
(4, 1, 2, 0, '', 1580251482, 'foto', 7),
(5, 1, 1, 1, '', 1580251482, 'foto', 7),
(6, 1, 2, 0, '', 1580251501, 'foto', 5),
(7, 1, 1, 1, '', 1580251501, 'foto', 5),
(8, 2, 1, 0, '', 1580251842, 'foto', 13),
(9, 2, 2, 2, '', 1580251842, 'foto', 13),
(10, 2, 1, 0, '', 1580251767, 'foto', 12),
(11, 2, 2, 1, '', 1580251767, 'foto', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `discussions_set`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:27
--

DROP TABLE IF EXISTS `discussions_set`;
CREATE TABLE `discussions_set` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `disc_status` int(11) DEFAULT '1',
  `disc_foto` int(11) DEFAULT '1',
  `disc_files` int(11) DEFAULT '1',
  `disc_forum` int(11) DEFAULT '1',
  `disc_notes` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `discussions_set`
--

INSERT INTO `discussions_set` (`id`, `id_user`, `disc_status`, `disc_foto`, `disc_files`, `disc_forum`, `disc_notes`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `frends`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:28
--

DROP TABLE IF EXISTS `frends`;
CREATE TABLE `frends` (
  `user` int(11) NOT NULL DEFAULT '0',
  `frend` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `i` int(1) DEFAULT '0',
  `lenta_forum` int(11) NOT NULL DEFAULT '1',
  `lenta_obmen` int(11) NOT NULL DEFAULT '1',
  `lenta_foto` int(11) NOT NULL DEFAULT '1',
  `lenta_notes` int(11) NOT NULL DEFAULT '1',
  `lenta_avatar` int(11) DEFAULT '1',
  `lenta_frends` int(1) DEFAULT '1',
  `lenta_status` int(1) DEFAULT '1',
  `lenta_status_like` int(1) DEFAULT '1',
  `disc_forum` int(11) NOT NULL DEFAULT '1',
  `disc_obmen` int(11) NOT NULL DEFAULT '1',
  `disc_foto` int(11) NOT NULL DEFAULT '1',
  `disc_notes` int(11) NOT NULL DEFAULT '1',
  `disc_frends` int(1) DEFAULT '1',
  `disc_status` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `frends`
--

INSERT INTO `frends` (`user`, `frend`, `time`, `i`, `lenta_forum`, `lenta_obmen`, `lenta_foto`, `lenta_notes`, `lenta_avatar`, `lenta_frends`, `lenta_status`, `lenta_status_like`, `disc_forum`, `disc_obmen`, `disc_foto`, `disc_notes`, `disc_frends`, `disc_status`) VALUES
(1, 2, 1580250493, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 1580250493, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `frends_new`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:28
--

DROP TABLE IF EXISTS `frends_new`;
CREATE TABLE `frends_new` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `to` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:29
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `time_create` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `my` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `id_user`, `name`, `time_create`, `time`, `my`) VALUES
(1, 1, 'Публикации', 0, 1580249802, 0),
(2, 2, 'Публикации', 0, 1580250554, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_foto`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:29
--

DROP TABLE IF EXISTS `gallery_foto`;
CREATE TABLE `gallery_foto` (
  `id` int(11) NOT NULL,
  `id_gallery` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `opis` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ras` varchar(4) NOT NULL,
  `type` varchar(64) NOT NULL,
  `id_user` int(11) NOT NULL,
  `avatar` enum('0','1') DEFAULT '0',
  `people` int(11) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `cover` enum('0','1') DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_foto`
--

INSERT INTO `gallery_foto` (`id`, `id_gallery`, `name`, `opis`, `ras`, `type`, `id_user`, `avatar`, `people`, `time`, `cover`) VALUES
(1, 1, 'BnYJOOcHyw0', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(2, 1, 'bwLyxU9n0AU', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(3, 1, 'gDJuLzJYuPc', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(4, 1, 'gnnzXJC-cXA', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(5, 1, 'KAb5790jh6k', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(6, 1, 'MAOdPV9rsOU', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(7, 1, 'mCXDipRS36Y', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(8, 1, 'OEoBsrmWc1I', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(9, 1, 'oXci0fQx5gI', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(10, 1, 'Y3JB-Wa1W5M', 'Тест', 'jpg', 'image/jpeg', 1, '0', NULL, 0, '0'),
(11, 1, 'YbzPHHVydW0', 'Тест', 'jpg', 'image/jpeg', 1, '1', NULL, 0, '0'),
(12, 2, 'gcx_tuXtaDI', 'Тест', 'jpg', 'image/jpeg', 2, '0', NULL, 0, '0'),
(13, 2, 'h9tprA8CI84', 'Тест', 'jpg', 'image/jpeg', 2, '1', NULL, 0, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_komm`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:50
--

DROP TABLE IF EXISTS `gallery_komm`;
CREATE TABLE `gallery_komm` (
  `id` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `msg` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_komm`
--

INSERT INTO `gallery_komm` (`id`, `id_foto`, `id_user`, `time`, `msg`) VALUES
(1, 10, 2, 1580250584, 'Тест комментарий'),
(2, 11, 1, 1580251354, 'Тест'),
(3, 7, 2, 1580251482, 'Тест'),
(4, 5, 2, 1580251501, 'Тест'),
(5, 13, 1, 1580251639, 'Тест'),
(6, 12, 1, 1580251767, 'Тест'),
(7, 13, 1, 1580251842, '......................');

-- --------------------------------------------------------

--
-- Структура таблицы `gifts_user`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:32
--

DROP TABLE IF EXISTS `gifts_user`;
CREATE TABLE `gifts_user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ank` int(11) NOT NULL,
  `id_gift` int(11) NOT NULL,
  `anonim` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `coment` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `gifts_user`
--

INSERT INTO `gifts_user` (`id`, `id_user`, `id_ank`, `id_gift`, `anonim`, `time`, `coment`, `status`) VALUES
(1, 2, 1, 1, 0, 1580250715, '', 1),
(2, 1, 2, 1, 0, 1580250779, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_categories`
--
-- Создание: Янв 21 2020 г., 21:03
-- Последнее обновление: Янв 21 2020 г., 21:22
--

DROP TABLE IF EXISTS `gift_categories`;
CREATE TABLE `gift_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `gift_categories`
--

INSERT INTO `gift_categories` (`id`, `name`) VALUES
(1, 'Тестовая категория');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_list`
--
-- Создание: Янв 21 2020 г., 21:03
-- Последнее обновление: Янв 21 2020 г., 21:23
--

DROP TABLE IF EXISTS `gift_list`;
CREATE TABLE `gift_list` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `money` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `gift_list`
--

INSERT INTO `gift_list` (`id`, `id_category`, `name`, `money`) VALUES
(1, 1, 'Подарок', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `konts`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:09
--

DROP TABLE IF EXISTS `konts`;
CREATE TABLE `konts` (
  `id_user` int(11) NOT NULL,
  `id_kont` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mail`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:51
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kont` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `msg` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` set('0','1') NOT NULL DEFAULT '0',
  `unlink` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mail`
--

INSERT INTO `mail` (`id`, `id_user`, `id_kont`, `time`, `msg`, `read`, `unlink`) VALUES
(1, 2, 1, 1580250614, 'Тест', '1', 0),
(2, 2, 1, 1580250624, '........................', '1', 0),
(3, 2, 1, 1580250636, '.........................', '1', 0),
(4, 2, 1, 1580250641, '...................', '1', 0),
(5, 2, 1, 1580250644, '.....................', '1', 0),
(6, 2, 1, 1580250647, '............', '1', 0),
(7, 2, 1, 1580250649, '..................', '1', 0),
(8, 2, 1, 1580250651, '...............', '1', 0),
(9, 1, 2, 1580251181, 'Тест', '0', 0),
(10, 1, 2, 1580251906, 'Тест........', '0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mail_to_send`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `mail_to_send`;
CREATE TABLE `mail_to_send` (
  `id` int(11) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `them` varchar(32) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ncolor`
--
-- Создание: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `ncolor`;
CREATE TABLE `ncolor` (
  `cena1` varchar(15) NOT NULL,
  `cena2` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ncolor`
--

INSERT INTO `ncolor` (`cena1`, `cena2`) VALUES
('50', '30');

-- --------------------------------------------------------

--
-- Структура таблицы `notification`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:59
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `id_object` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `avtor` int(11) DEFAULT NULL,
  `all_type` varchar(11) DEFAULT NULL,
  `read` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notification`
--

INSERT INTO `notification` (`id`, `id_user`, `time`, `id_object`, `type`, `avtor`, `all_type`, `read`) VALUES
(1, 2, 1580250493, 1, 'ok_frend', 1, NULL, 1),
(2, 1, 1580250572, 11, 'like', 2, '1', 1),
(3, 1, 1580250584, 10, 'photo_kom', 2, '1', 1),
(4, 2, 1580250715, 1, 'new_gift', 1, NULL, 0),
(5, 1, 1580250779, 2, 'new_gift', 2, NULL, 1),
(6, 2, 1580251022, 13, 'like', 1, '2', 0),
(7, 2, 1580251025, 12, 'like', 1, '2', 0),
(8, 2, 1580251390, 13, 'like', 1, '2', 0),
(9, 1, 1580251473, 8, 'like', 2, '1', 1),
(10, 1, 1580251482, 7, 'photo_kom', 2, '1', 1),
(11, 1, 1580251493, 6, 'like', 2, '1', 1),
(12, 1, 1580251501, 5, 'photo_kom', 2, '1', 1),
(13, 1, 1580251522, 4, 'like', 2, '1', 1),
(14, 2, 1580251632, 13, 'like', 1, '2', 0),
(15, 2, 1580251639, 13, 'photo_kom', 1, '2', 0),
(16, 2, 1580251751, 13, 'like', 1, '2', 0),
(17, 2, 1580251767, 12, 'photo_kom', 1, '2', 0),
(18, 2, 1580251837, 13, 'like', 1, '2', 0),
(19, 2, 1580251842, 13, 'photo_kom', 1, '2', 0),
(20, 1, 1580252179, 11, 'like', 2, '1', 1),
(21, 1, 1580252305, 7, 'like', 2, '1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `notification_set`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:27
--

DROP TABLE IF EXISTS `notification_set`;
CREATE TABLE `notification_set` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `komm` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notification_set`
--

INSERT INTO `notification_set` (`id`, `id_user`, `komm`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `opsos`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
-- Последняя проверка: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `opsos`;
CREATE TABLE `opsos` (
  `min` bigint(11) DEFAULT NULL,
  `max` bigint(11) DEFAULT NULL,
  `opsos` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `opsos`
--

INSERT INTO `opsos` (`min`, `max`, `opsos`) VALUES
(3274702592, 3274702847, 'Kcel'),
(1333559296, 1333575679, 'life:)'),
(-734354944, -734354433, 'life:)'),
(3582431104, 3582434943, 'TambovGSM'),
(1358905344, 1358905471, 'UMC'),
(1490444288, 1490452479, 'UMC'),
(1490436096, 1490444287, 'UMC'),
(3588472832, 3588489215, 'WellCOM GSM'),
(3253698560, 3253699071, 'WellCOM GSM'),
(3557661440, 3557661695, 'КаР-Тел'),
(3240705024, 3240706047, 'Киевстар'),
(1360467968, 1360470015, 'Киевстар'),
(1360465920, 1360467967, 'Киевстар'),
(1402278912, 1402279935, 'МегаФон'),
(1402286080, 1402287103, 'МегаФон'),
(1402273792, 1402275839, 'MegaFon'),
(3650368512, 3650368767, 'МОТИВ'),
(1410459648, 1410460159, 'МТС'),
(3641237504, 3641241599, 'МТС'),
(3276428288, 3276428543, 'МТС'),
(3258356736, 3258357759, 'МТС'),
(3562834880, 3562834943, 'МТС'),
(3579259392, 3579265535, 'МТС'),
(1347674112, 1347678207, 'МТС'),
(3579267072, 3579267935, 'МТС'),
(1358906880, 1358907135, 'МТС'),
(1476194816, 1476195071, 'МТС'),
(1372794624, 1372794879, 'МТС'),
(3642047744, 3642047999, 'МТС'),
(3579269120, 3579273215, 'МТС'),
(3277188608, 3277188863, 'МТС'),
(3645018112, 3645019135, 'МТС'),
(1347126528, 1347127167, 'МТС'),
(3281465344, 3281465599, 'МТС'),
(1360933376, 1360933887, 'МТС'),
(3647698432, 3647698687, 'МТС'),
(3267023360, 3267023488, 'МТС'),
(1535627776, 1535628031, 'МТС'),
(1410457600, 1410459647, 'МТС'),
(1433788416, 1433788671, 'МТС'),
(1389383040, 1389383167, 'НСС'),
(1358122240, 1358123007, 'НТК'),
(1358118912, 1358119423, 'НТК'),
(1438682304, 1438682335, 'Оренбург-GSM'),
(1509752832, 1509756927, 'Скай Линк'),
(3565250560, 3565254655, 'Скай Линк'),
(1536507904, 1536516095, 'Скай Линк'),
(1536516096, 1536518143, 'Скай Линк'),
(3578853376, 3578854079, 'Скай Линк'),
(1406738432, 1406739967, 'Скай Линк'),
(3266342656, 3266342911, 'Скай Мобайл'),
(1346736128, 1346737151, 'СМАРТС'),
(3260286336, 3260286463, 'СМАРТС'),
(1509527552, 1509528575, 'СТеК Джи Эс Эм'),
(1506762752, 1506764799, 'ТАТИНКОМ-Т'),
(1404203008, 1404211199, 'Теле2'),
(3580231936, 3580232191, 'Теле2'),
(1404215296, 1404219391, 'Теле2'),
(1404874752, 1404875775, 'Теле2'),
(1404189184, 1404189695, 'Теле2'),
(1404829696, 1404837887, 'Теле2'),
(3580236800, 3580237567, 'Теле2'),
(3580235264, 3580235775, 'Теле2'),
(1404837888, 1404846079, 'Теле2'),
(3580214272, 3580214783, 'Теле2'),
(1404227584, 1404232191, 'Теле2'),
(3580232448, 3580233215, 'Теле2'),
(3580239360, 3580239871, 'Теле2'),
(3580231680, 3580231935, 'Теле2'),
(1441366016, 1441371903, 'Utel'),
(1401450496, 1401450751, 'Utel'),
(1506570240, 1506574335, 'Utel'),
(3571187712, 3571191807, 'Utel'),
(3564676832, 3564676863, 'Utel'),
(1494507776, 1494508031, 'Utel'),
(3641816064, 3641816319, 'Utel'),
(3651755008, 3651756031, 'Цифровая экспансия'),
(2130706433, 2130706433, 'localhost'),
(3283979853, 3283979853, 'Opera Mini'),
(1412413440, 1412413951, 'Наука-Связь'),
(1518993408, 1519058943, 'Теле2'),
(1410269184, 1410334719, 'Bite GSM'),
(1407907840, 1407908351, 'Ульяновск-GSM'),
(2197028864, 2197094399, 'Теле2'),
(3274702592, 3274702847, 'Kcel'),
(-734351360, -734347265, 'life:)'),
(-734353408, -734351361, 'life:)'),
(3582431104, 3582434943, 'TambovGSM'),
(1358905344, 1358905471, 'UMC'),
(1490444288, 1490452479, 'UMC'),
(1490436096, 1490444287, 'UMC'),
(3588472832, 3588489215, 'WellCOM GSM'),
(3253698560, 3253699071, 'WellCOM GSM'),
(3557661440, 3557661695, 'КаР-Тел'),
(3240705024, 3240706047, 'Киевстар'),
(1360467968, 1360470015, 'Киевстар'),
(1360465920, 1360467967, 'Киевстар'),
(1402275840, 1402276863, 'МегаФон'),
(1402278912, 1402279935, 'МегаФон'),
(1402286080, 1402287103, 'МегаФон'),
(1402273792, 1402275839, 'МегаФон'),
(1346621440, 1346622463, 'МегаФон'),
(3251233792, 3251234815, 'МегаФон'),
(1402284032, 1402285055, 'МегаФон'),
(1402281984, 1402283007, 'МегаФон'),
(1402287104, 1402288127, 'МегаФон'),
(1402279936, 1402280959, 'МегаФон'),
(1402277888, 1402278911, 'МегаФон'),
(3650368512, 3650368767, 'МОТИВ'),
(1410459648, 1410460159, 'МТС'),
(3641237504, 3641241599, 'МТС'),
(3276428288, 3276428543, 'МТС'),
(3258356736, 3258357759, 'МТС'),
(3562834880, 3562834943, 'МТС'),
(3579259392, 3579265535, 'МТС'),
(1347674112, 1347678207, 'МТС'),
(3579267072, 3579267935, 'МТС'),
(1358906880, 1358907135, 'МТС'),
(1476194816, 1476195071, 'МТС'),
(1372794624, 1372794879, 'МТС'),
(3642047744, 3642047999, 'МТС'),
(3579269120, 3579273215, 'МТС'),
(3277188608, 3277188863, 'МТС'),
(3645018112, 3645019135, 'МТС'),
(1347126528, 1347127167, 'МТС'),
(3281465344, 3281465599, 'МТС'),
(1360933376, 1360933887, 'МТС'),
(3647698432, 3647698687, 'МТС'),
(3267023360, 3267023488, 'МТС'),
(3645566976, 3645569023, 'МТС'),
(1535627776, 1535628031, 'МТС'),
(1410457600, 1410459647, 'МТС'),
(1433788416, 1433788671, 'МТС'),
(1389383040, 1389383167, 'НСС'),
(1358122240, 1358123007, 'НТК'),
(1358118912, 1358119423, 'НТК'),
(1438682304, 1438682335, 'Оренбург-GSM'),
(1509752832, 1509756927, 'Скай Линк'),
(3565250560, 3565254655, 'Скай Линк'),
(1536507904, 1536516095, 'Скай Линк'),
(1536516096, 1536518143, 'Скай Линк'),
(3578853376, 3578854079, 'Скай Линк'),
(1406738432, 1406739967, 'Скай Линк'),
(3266342656, 3266342911, 'Скай Мобайл'),
(1346736128, 1346737151, 'СМАРТС'),
(3260286336, 3260286463, 'СМАРТС'),
(1509527552, 1509528575, 'СТеК Джи Эс Эм'),
(1506762752, 1506764799, 'ТАТИНКОМ-Т'),
(1404203008, 1404211199, 'Теле2'),
(3580231936, 3580232191, 'Теле2'),
(1404215296, 1404219391, 'Теле2'),
(1404874752, 1404875775, 'Теле2'),
(1404189184, 1404189695, 'Теле2'),
(1404829696, 1404837887, 'Теле2'),
(3580236800, 3580237567, 'Теле2'),
(3580235264, 3580235775, 'Теле2'),
(1404837888, 1404846079, 'Теле2'),
(3580214272, 3580214783, 'Теле2'),
(1404227584, 1404232191, 'Теле2'),
(3580232448, 3580233215, 'Теле2'),
(3580239360, 3580239871, 'Теле2'),
(3580231680, 3580231935, 'Теле2'),
(1441366016, 1441371903, 'Utel'),
(1401450496, 1401450751, 'Utel'),
(1506570240, 1506574335, 'Utel'),
(3571187712, 3571191807, 'Utel'),
(3564676832, 3564676863, 'Utel'),
(1494507776, 1494508031, 'Utel'),
(3641816064, 3641816319, 'Utel'),
(3651755008, 3651756031, 'Цифровая экспансия'),
(2130706433, 2130706433, 'localhost'),
(3283979853, 3283979853, 'Opera Mini'),
(1412413440, 1412413951, 'Наука-Связь'),
(3588390912, 3588391935, 'Bite GSM'),
(1518993408, 1519058943, 'Теле2'),
(1410269184, 1410334719, 'Bite GSM'),
(1407907840, 1407908351, 'Ульяновск-GSM'),
(2197028864, 2197094399, 'Теле2'),
(-646557696, -646556673, 'Beeline'),
(3274702592, 3274702847, 'K cel'),
(-712536192, -712532353, 'TambovGSM'),
(1333575680, 1333592063, 'life:)'),
(-734355456, -734355201, 'life:)'),
(1536278528, 1536294911, 'Life:)'),
(3582431104, 3582434943, 'TambovGSM'),
(1358905344, 1358905471, 'UMC'),
(1490444288, 1490452479, 'UMC'),
(1490436096, 1490444287, 'UMC'),
(3588472832, 3588489215, 'WellCOM GSM'),
(3253698560, 3253699071, 'WellCOM GSM'),
(1519796224, 1519800319, 'Уралсвязьинформ'),
(1388849152, 1388850175, 'ИНДИГО'),
(1427948288, 1427948543, 'Дальсвязь'),
(1385632000, 1385632255, 'БашСЕЛ'),
(3273026560, 3273027583, 'БашСЕЛ'),
(1347599104, 1347599359, 'Байкалвестком'),
(1360162816, 1360166911, 'Байкалвестком'),
(1360163840, 1360164351, 'Байкалвестком'),
(3588519936, 3588520447, 'Байкалвестком'),
(1407888896, 1407889151, 'Байкалвестком'),
(3564188672, 3564188927, 'Utel'),
(3564189696, 3564191743, 'Utel'),
(1441366016, 1441371903, 'Utel'),
(1401450496, 1401450751, 'Utel'),
(1506570240, 1506574335, 'Utel'),
(3571187712, 3571191807, 'Utel'),
(3564676832, 3564676863, 'Utel'),
(1494507776, 1494508031, 'Utel'),
(3641816064, 3641816319, 'Utel'),
(3564189440, 3564189695, 'Utel'),
(2130706433, 2130706433, 'localhost'),
(3283979853, 3283979853, 'Opera Mini'),
(3588390912, 3588391935, 'Bite GSM'),
(3585764352, 3585764607, 'Utel'),
(1410269184, 1410334719, 'Bite GSM'),
(3564189184, 3564189439, 'Utel'),
(3582031776, 3582031807, 'Мегафон'),
(1427812352, 1427813375, 'Мегафон'),
(1433657344, 1433657599, 'Билайн'),
(3648405504, 3648406527, 'Билайн'),
(3648406528, 3648407551, 'Билайн'),
(3648408576, 3648409599, 'Билайн'),
(3648409600, 3648410623, 'Билайн'),
(3648410624, 3648411647, 'Билайн'),
(3648411648, 3648412671, 'Билайн'),
(3648412672, 3648413695, 'Билайн'),
(1047070464, 1047072255, 'Utel'),
(1401451520, 1401451775, 'Utel'),
(1425981440, 1425997823, 'Utel'),
(3272364544, 3272364799, 'Utel'),
(3564675072, 3564675583, 'Utel'),
(3641816576, 3641816831, 'Utel'),
(1519779840, 1519910911, 'Utel'),
(3274599168, 3274599423, 'БайкалВестКом'),
(1042394624, 1042394879, 'МТС'),
(1346950400, 1346950655, 'МТС'),
(3281453056, 3281518591, 'МТС'),
(3287259392, 3287259647, 'МТС'),
(3559689216, 3559689471, 'МТС'),
(3562834688, 3562834879, 'МТС'),
(3578831872, 3578832127, 'МТС'),
(3648478720, 3648479231, 'МТС'),
(3579268096, 3579268607, 'МТС'),
(1404862464, 1404870655, 'Tele2'),
(1404846080, 1404854271, 'Tele2'),
(1404854272, 1404862463, 'Tele2'),
(1518927872, 1518944255, 'Tele2'),
(3650367488, 3650368511, 'Мотив'),
(3278955480, 3278955515, 'ЕТК'),
(3278956288, 3278956543, 'ЕТК'),
(3278960128, 3278960383, 'ЕТК'),
(1432330240, 1432334335, 'НСС'),
(3282161664, 3282163711, 'НСС'),
(3282171904, 3282173951, 'НСС'),
(3585171456, 3585174271, 'НСС'),
(3267008512, 3267008767, 'НСС'),
(3277992448, 3277992959, 'НСС'),
(1441609984, 1441610239, 'НСС'),
(3645731072, 3645731079, 'Смартс'),
(1310210048, 1310211071, 'Смартс'),
(1536099328, 1536099839, 'Смартс'),
(3587219456, 3587219711, 'Смартс'),
(3648294912, 3648295935, 'Stek GSM'),
(1481787392, 1481787647, 'Татинком-Т'),
(3652001536, 3652001599, 'Татинком-Т'),
(1052193280, 1052193535, 'MTT'),
(1347125248, 1347125759, 'MTT'),
(1358119424, 1358120703, 'НТК'),
(1406740480, 1406746623, 'Sky Link'),
(3564593152, 3564593919, 'Sky Link'),
(3564595968, 3564596735, 'Sky Link'),
(3564599808, 3564601343, 'Sky Link'),
(3565248512, 3565250047, 'Sky Link'),
(3565250048, 3565250559, 'Sky Link'),
(3648212992, 3648217087, 'Sky Link'),
(1386348544, 1386414079, 'Акос'),
(1566410752, 1566411775, 'Ульяновск GSM'),
(3651751936, 3651752191, 'Цифровая экспансия'),
(3651752192, 3651752447, 'Цифровая экспансия'),
(3287244288, 3287244543, 'Индиго'),
(3560612864, 3560613887, 'Киевстар'),
(1486487552, 1486553087, 'Киевстар'),
(1295253504, 1295319039, 'UMC'),
(1358907392, 1358907647, 'UMC'),
(1358907648, 1358907903, 'UMC'),
(1358907904, 1358908031, 'UMC'),
(1358908160, 1358908415, 'UMC'),
(1358908416, 1358908671, 'UMC'),
(1358908672, 1358908927, 'UMC'),
(1358908928, 1358909183, 'UMC'),
(1358909184, 1358909439, 'UMC'),
(2516451328, 2516516863, 'T-Mobile'),
(3562889472, 3562889727, 'LMT'),
(3651710976, 3651715071, 'AzerCellTelecom'),
(1365222400, 1365223423, 'Ge-Magticom'),
(3645744128, 3645744639, 'Vodafon'),
(3584180736, 3584180991, 'T-Mobile'),
(1358192896, 1358193151, 'Vodafon'),
(1507835904, 1507852287, 'Vodafon'),
(1507819520, 1507827711, 'Vodafon'),
(1507827712, 1507835903, 'Vodafon'),
(1536655360, 1536659455, 'Geocell'),
(3253712384, 3253712895, 'Voxtel'),
(3560144384, 3560144639, 'Mobtel'),
(3644964864, 3644965479, 'T-Mobile'),
(1054471936, 1054472191, 'Orange'),
(3275173632, 3275173695, 'TME'),
(1404190720, 1404198911, 'Tele2'),
(3583496320, 3583496447, 'Orange'),
(3266322432, 3266322687, 'Omnitel'),
(1407033600, 1407033855, 'Unitel'),
(3568795648, 3568799999, 'Vodafon'),
(1407188992, 1407210495, 'Vodafon'),
(3645317120, 3645318015, 'EMT'),
(3240329216, 3240333311, 'Orange'),
(3254619392, 3254619647, 'Orange'),
(1358598144, 1358600191, 'Cellcom'),
(1296285696, 1296302079, 'Tcell'),
(3576365056, 3576397823, 'Tcell'),
(1449959424, 1449967615, 'Tcell'),
(1336598528, 1336599521, 'Mordcell'),
(3566895360, 3566895615, 'МТС'),
(3279123456, 3279124479, 'SRR'),
(3652165632, 3652167167, 'OutRemer'),
(3283979776, 3283980287, 'Opera Mini'),
(3242554368, 3242554495, 'Opera Mini'),
(1357411584, 1357411839, 'Opera Mini'),
(1540055040, 1540056063, 'Opera Mini'),
(1593212416, 1593212927, 'Opera Mini'),
(-1010987520, -1010987009, 'Opera Mini'),
(-646555136, -646554369, 'Вымпелком'),
(-646554368, -646553857, 'Вымпелком WiFi');

-- --------------------------------------------------------

--
-- Структура таблицы `photo_like`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:58
--

DROP TABLE IF EXISTS `photo_like`;
CREATE TABLE `photo_like` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_photo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `photo_like`
--

INSERT INTO `photo_like` (`id`, `id_user`, `id_photo`) VALUES
(12, 2, 11),
(4, 1, 11),
(3, 1, 12),
(11, 1, 13),
(6, 2, 8),
(7, 2, 6),
(8, 2, 4),
(13, 2, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `reg_mail`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
-- Последняя проверка: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `reg_mail`;
CREATE TABLE `reg_mail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `mail` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reg_msg`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 28 2020 г., 21:55
--

DROP TABLE IF EXISTS `reg_msg`;
CREATE TABLE `reg_msg` (
  `msg` varchar(2000) NOT NULL,
  `money` varchar(6) DEFAULT '1',
  `rating` varchar(3) DEFAULT '1',
  `balls` varchar(6) DEFAULT '1',
  `id` varchar(128) DEFAULT '1',
  `on` int(2) DEFAULT '1',
  `true` int(2) DEFAULT '0',
  `gift` int(11) DEFAULT NULL,
  `gift_msg` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reg_msg`
--

INSERT INTO `reg_msg` (`msg`, `money`, `rating`, `balls`, `id`, `on`, `true`, `gift`, `gift_msg`) VALUES
('Привет [b][blue]{Name}[/blue][/b]! ;-)\r\nДобро пожаловать на [b][red]Mobik.best[/red][/b] .улыбка. \r\nНа данный момент наш  сайт находится в разработке, и мало что есть, пока что присутствует только основной функционал, такой как странички, фотки, личные сообщения, подарки, чатик и тд :3 \r\nВ дальнейшем будет больше возможностей .ghost. \r\n \r\nОставайтесь с нами .cat2. \r\n \r\n[green]P.s. За регистрацию вы получили 50 монет .money.[/green]', '50', '0', '0', '0', 0, 0, 1, 'Добро пожаловать!');

-- --------------------------------------------------------

--
-- Структура таблицы `rekl`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:09
--

DROP TABLE IF EXISTS `rekl`;
CREATE TABLE `rekl` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `img` varchar(64) NOT NULL,
  `link` varchar(64) NOT NULL,
  `time_last` int(11) NOT NULL,
  `sel` set('1','2','3','4') NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `dop_str` set('0','1') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smile`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:09
--

DROP TABLE IF EXISTS `smile`;
CREATE TABLE `smile` (
  `id` int(11) NOT NULL,
  `smile` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `survey_v`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
-- Последняя проверка: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `survey_v`;
CREATE TABLE `survey_v` (
  `id_s` int(11) NOT NULL,
  `id_r` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tape`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:31
--

DROP TABLE IF EXISTS `tape`;
CREATE TABLE `tape` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `id_file` int(11) NOT NULL,
  `avtor` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` varchar(24) NOT NULL,
  `read` set('0','1') NOT NULL DEFAULT '0',
  `avatar` int(11) DEFAULT '0',
  `ot_kogo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tape`
--

INSERT INTO `tape` (`id`, `id_user`, `count`, `id_file`, `avtor`, `time`, `type`, `read`, `avatar`, `ot_kogo`) VALUES
(1, 1, 2, 2, 2, 1580250554, 'album', '1', 0, NULL),
(2, 1, 1, 13, 2, 1580250560, 'avatar', '1', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tape_set`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:27
--

DROP TABLE IF EXISTS `tape_set`;
CREATE TABLE `tape_set` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `lenta_status_like` int(11) DEFAULT '1',
  `lenta_status` int(11) DEFAULT '1',
  `lenta_foto` int(11) DEFAULT '1',
  `lenta_files` int(11) DEFAULT '1',
  `lenta_forum` int(11) DEFAULT '1',
  `lenta_notes` int(11) DEFAULT '1',
  `lenta_avatar` int(11) DEFAULT '1',
  `lenta_frends` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tape_set`
--

INSERT INTO `tape_set` (`id`, `id_user`, `lenta_status_like`, `lenta_status`, `lenta_foto`, `lenta_files`, `lenta_forum`, `lenta_notes`, `lenta_avatar`, `lenta_frends`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 23:04
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nick` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `sess` varchar(32) DEFAULT NULL,
  `activation` varchar(32) DEFAULT NULL,
  `ban` int(11) NOT NULL DEFAULT '0',
  `ban_pr` varchar(64) DEFAULT NULL,
  `ip` bigint(20) NOT NULL DEFAULT '0',
  `ip_cl` bigint(20) NOT NULL DEFAULT '0',
  `ip_xff` bigint(20) NOT NULL DEFAULT '0',
  `ua` varchar(32) DEFAULT NULL,
  `date_reg` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `date_aut` int(11) NOT NULL DEFAULT '0',
  `date_last` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `level` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `group_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pol` enum('0','1') NOT NULL DEFAULT '1',
  `url` varchar(64) NOT NULL DEFAULT '/',
  `show_url` enum('0','1') NOT NULL DEFAULT '1',
  `ank_g_r` int(4) DEFAULT NULL,
  `ank_m_r` int(2) DEFAULT NULL,
  `ank_d_r` int(2) DEFAULT NULL,
  `ank_city` varchar(32) DEFAULT NULL,
  `ank_strana` varchar(32) DEFAULT NULL,
  `ank_o_sebe` varchar(512) DEFAULT NULL,
  `ank_site` varchar(50) DEFAULT NULL,
  `ank_mail` varchar(32) DEFAULT NULL,
  `ank_n_tel` varchar(11) DEFAULT NULL,
  `ank_name` varchar(32) DEFAULT NULL,
  `ank_fam` varchar(32) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `set_p_str` int(11) DEFAULT '7',
  `set_show_icon` set('0','1','2') DEFAULT '1',
  `set_files` enum('0','1') NOT NULL DEFAULT '0',
  `set_timesdvig` int(11) NOT NULL DEFAULT '0',
  `set_news_to_mail` enum('0','1') NOT NULL DEFAULT '0',
  `set_show_mail` enum('0','1') NOT NULL DEFAULT '0',
  `set_them` varchar(32) DEFAULT 'default',
  `set_them2` varchar(32) DEFAULT 'default',
  `meteo_country` int(11) NOT NULL DEFAULT '0',
  `autorization` enum('0','1') NOT NULL DEFAULT '0',
  `add_konts` enum('0','1','2') NOT NULL DEFAULT '1',
  `wall` int(1) DEFAULT '1',
  `browser` varchar(3) DEFAULT 'wap',
  `rating_tmp` int(11) DEFAULT '0',
  `sort` int(1) DEFAULT '0',
  `news_read` int(1) DEFAULT '0',
  `ban_where` varchar(10) DEFAULT NULL,
  `abuld` int(1) DEFAULT '0',
  `vk_id` int(11) DEFAULT NULL,
  `type_reg` varchar(100) DEFAULT NULL,
  `identity` varchar(100) DEFAULT NULL,
  `set_nick` int(1) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `ncolor2` varchar(10) NOT NULL,
  `ncolor` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `nick`, `pass`, `sess`, `activation`, `ban`, `ban_pr`, `ip`, `ip_cl`, `ip_xff`, `ua`, `date_reg`, `time`, `date_aut`, `date_last`, `rating`, `level`, `group_access`, `pol`, `url`, `show_url`, `ank_g_r`, `ank_m_r`, `ank_d_r`, `ank_city`, `ank_strana`, `ank_o_sebe`, `ank_site`, `ank_mail`, `ank_n_tel`, `ank_name`, `ank_fam`, `status`, `set_p_str`, `set_show_icon`, `set_files`, `set_timesdvig`, `set_news_to_mail`, `set_show_mail`, `set_them`, `set_them2`, `meteo_country`, `autorization`, `add_konts`, `wall`, `browser`, `rating_tmp`, `sort`, `news_read`, `ban_where`, `abuld`, `vk_id`, `type_reg`, `identity`, `set_nick`, `money`, `verified`, `ncolor2`, `ncolor`) VALUES
(1, 'Admin', '69c1c2363176512067cfdadc547a4df25', 'b9601cf630ac45f809ce37c07f23969b', NULL, 0, NULL, 3268769804, 0, 0, 'Mozilla', 1580249520, 2223, 1580252610, 1580252656, 0, '0', 0, '1', '/user/feed/index.php', '1', NULL, NULL, NULL, NULL, NULL, 'Информация о себе...', 'https://vk.com/xaotik', 'Test@mail.ru', '', 'Том', 'Тернер', NULL, 7, '1', '0', 0, '0', '0', 'default', 'default', 0, '0', '1', 0, 'web', 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 890, '0', '#FF0000', '#0000CD'),
(2, 'Тест', '69c1c2363176520617cfdadc547a4df25', '416c9e0689f242c2fd2baaf03f2a0cae', NULL, 0, NULL, 3268769804, 0, 0, 'Mozilla', 1580250458, 337, 1580252298, 1580252307, 0, '0', 0, '1', '/user/profil.php', '1', NULL, NULL, NULL, NULL, NULL, 'Аккаунт для теста', NULL, 'Test2@mail.ru', NULL, 'Тест', 'Аккаунт', NULL, 7, '1', '0', 0, '0', '0', 'default', 'default', 0, '0', '1', 0, 'web', 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 90, '0', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users_konts`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:51
--

DROP TABLE IF EXISTS `users_konts`;
CREATE TABLE `users_konts` (
  `id_user` int(11) NOT NULL,
  `id_kont` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `new_msg` int(11) NOT NULL DEFAULT '0',
  `type` enum('common','ignor','favorite','deleted') NOT NULL DEFAULT 'common',
  `name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_konts`
--

INSERT INTO `users_konts` (`id_user`, `id_kont`, `time`, `new_msg`, `type`, `name`) VALUES
(2, 1, 1580251906, 0, 'common', NULL),
(1, 2, 1580251906, 0, 'common', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_collision`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `user_collision`;
CREATE TABLE `user_collision` (
  `id_user` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL,
  `type` set('sess','ip_ua_time') NOT NULL DEFAULT 'sess'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_collision`
--

INSERT INTO `user_collision` (`id_user`, `id_user2`, `type`) VALUES
(2, 1, 'ip_ua_time'),
(3, 1, 'ip_ua_time'),
(3, 2, 'ip_ua_time'),
(4, 1, 'ip_ua_time'),
(4, 3, 'ip_ua_time'),
(1, 5, 'ip_ua_time'),
(1, 6, 'ip_ua_time'),
(9, 8, 'ip_ua_time'),
(1, 8, 'ip_ua_time'),
(1, 9, 'ip_ua_time'),
(10, 1, 'ip_ua_time'),
(11, 1, 'ip_ua_time'),
(11, 10, 'ip_ua_time'),
(1, 12, 'ip_ua_time'),
(13, 1, 'ip_ua_time'),
(14, 1, 'ip_ua_time'),
(14, 13, 'ip_ua_time'),
(15, 14, 'ip_ua_time'),
(1, 15, 'ip_ua_time'),
(16, 1, 'ip_ua_time'),
(17, 16, 'ip_ua_time'),
(2, 16, 'ip_ua_time'),
(2, 17, 'ip_ua_time'),
(18, 2, 'ip_ua_time'),
(18, 16, 'ip_ua_time'),
(18, 17, 'ip_ua_time'),
(1, 18, 'ip_ua_time'),
(19, 1, 'ip_ua_time'),
(20, 1, 'ip_ua_time'),
(20, 19, 'ip_ua_time'),
(1, 21, 'ip_ua_time'),
(22, 1, 'ip_ua_time'),
(22, 21, 'ip_ua_time'),
(23, 1, 'ip_ua_time'),
(23, 21, 'ip_ua_time'),
(23, 22, 'ip_ua_time'),
(24, 1, 'ip_ua_time'),
(24, 22, 'ip_ua_time'),
(24, 23, 'ip_ua_time'),
(25, 1, 'ip_ua_time'),
(25, 23, 'ip_ua_time'),
(25, 24, 'ip_ua_time'),
(26, 25, 'ip_ua_time'),
(27, 25, 'ip_ua_time'),
(27, 26, 'ip_ua_time'),
(28, 25, 'ip_ua_time'),
(28, 26, 'ip_ua_time'),
(28, 27, 'ip_ua_time'),
(29, 25, 'ip_ua_time'),
(29, 26, 'ip_ua_time'),
(29, 27, 'ip_ua_time'),
(29, 28, 'ip_ua_time'),
(1, 26, 'ip_ua_time'),
(1, 27, 'ip_ua_time'),
(1, 28, 'ip_ua_time'),
(1, 29, 'ip_ua_time'),
(30, 1, 'ip_ua_time'),
(31, 1, 'ip_ua_time'),
(31, 30, 'ip_ua_time'),
(32, 1, 'ip_ua_time'),
(32, 30, 'ip_ua_time'),
(32, 31, 'ip_ua_time'),
(33, 1, 'ip_ua_time'),
(33, 31, 'ip_ua_time'),
(33, 32, 'ip_ua_time'),
(34, 1, 'ip_ua_time'),
(34, 33, 'ip_ua_time');

-- --------------------------------------------------------

--
-- Структура таблицы `user_group`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_group`
--

INSERT INTO `user_group` (`id`, `name`, `level`) VALUES
(1, 'Пользователь', 0),
(2, 'Модератор чата', 1),
(3, 'Модератор форума', 1),
(4, 'Модератор Зоны обмена', 1),
(5, 'Модератор библиотеки', 1),
(6, 'Модератор фотогалереи', 1),
(7, 'Модератор', 2),
(8, 'Администратор', 3),
(9, 'Главный администратор', 9),
(15, 'Основатель Mobik.best', 10),
(11, 'Модератор дневников', 1),
(12, 'Модератор мини чата', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_group_access`
--
-- Создание: Янв 06 2020 г., 22:24
-- Последнее обновление: Янв 06 2020 г., 22:24
-- Последняя проверка: Янв 06 2020 г., 22:24
--

DROP TABLE IF EXISTS `user_group_access`;
CREATE TABLE `user_group_access` (
  `id_group` int(10) UNSIGNED NOT NULL,
  `id_access` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_group_access`
--

INSERT INTO `user_group_access` (`id_group`, `id_access`) VALUES
(2, 'adm_info'),
(2, 'adm_panel_show'),
(2, 'adm_ref'),
(2, 'adm_set_chat'),
(2, 'adm_show_adm'),
(2, 'adm_statistic'),
(2, 'chat_clear'),
(2, 'chat_room'),
(2, 'user_ban_set'),
(2, 'user_ban_set_h'),
(2, 'user_ban_unset'),
(2, 'user_prof_edit'),
(2, 'user_show_add_info'),
(2, 'user_show_ua'),
(3, 'adm_banlist'),
(3, 'adm_panel_show'),
(3, 'adm_set_forum'),
(3, 'adm_show_adm'),
(3, 'adm_statistic'),
(3, 'forum_for_edit'),
(3, 'forum_post_ed'),
(3, 'forum_razd_create'),
(3, 'forum_razd_edit'),
(3, 'forum_them_del'),
(3, 'forum_them_edit'),
(3, 'user_ban_set_h'),
(3, 'user_prof_edit'),
(3, 'user_show_add_info'),
(3, 'user_show_ip'),
(3, 'user_show_ua'),
(4, 'adm_info'),
(4, 'adm_panel_show'),
(4, 'adm_set_loads'),
(4, 'adm_show_adm'),
(4, 'adm_statistic'),
(4, 'loads_dir_create'),
(4, 'loads_dir_delete'),
(4, 'loads_dir_mesto'),
(4, 'loads_dir_rename'),
(4, 'loads_file_delete'),
(4, 'loads_file_edit'),
(4, 'loads_file_upload'),
(4, 'loads_unzip'),
(5, 'adm_info'),
(5, 'adm_lib_repair'),
(5, 'adm_panel_show'),
(5, 'adm_ref'),
(5, 'adm_set_foto'),
(5, 'adm_statistic'),
(5, 'lib_dir_create'),
(5, 'lib_dir_delete'),
(5, 'lib_dir_edit'),
(5, 'lib_dir_mesto'),
(5, 'lib_stat_create'),
(5, 'lib_stat_delete'),
(5, 'lib_stat_txt'),
(5, 'lib_stat_zip'),
(5, 'user_ban_set_h'),
(5, 'user_prof_edit'),
(6, 'adm_banlist'),
(6, 'adm_info'),
(6, 'adm_panel_show'),
(6, 'adm_set_foto'),
(6, 'adm_show_adm'),
(6, 'adm_statistic'),
(6, 'foto_alb_del'),
(6, 'foto_foto_edit'),
(6, 'foto_komm_del'),
(6, 'user_ban_set_h'),
(6, 'user_show_ua'),
(7, 'adm_banlist'),
(7, 'adm_lib_repair'),
(7, 'adm_panel_show'),
(7, 'adm_set_chat'),
(7, 'adm_set_forum'),
(7, 'adm_set_foto'),
(7, 'adm_statistic'),
(7, 'chat_clear'),
(7, 'chat_room'),
(7, 'forum_post_close'),
(7, 'forum_post_ed'),
(7, 'forum_razd_create'),
(7, 'forum_razd_edit'),
(7, 'forum_them_del'),
(7, 'forum_them_edit'),
(7, 'foto_foto_edit'),
(7, 'foto_komm_del'),
(7, 'guest_show_ip'),
(7, 'lib_stat_create'),
(7, 'lib_stat_txt'),
(7, 'loads_file_delete'),
(7, 'loads_file_edit'),
(7, 'loads_file_upload'),
(7, 'mini_chat_clear'),
(7, 'mini_chat_delete'),
(7, 'notes_delete'),
(7, 'notes_edit'),
(7, 'obmen_dir_create'),
(7, 'obmen_dir_delete'),
(7, 'obmen_dir_edit'),
(7, 'obmen_file_delete'),
(7, 'obmen_file_edit'),
(7, 'obmen_komm_del'),
(7, 'user_ban_set'),
(7, 'user_ban_set_h'),
(7, 'user_ban_unset'),
(7, 'user_collisions'),
(7, 'user_prof_edit'),
(7, 'user_show_add_info'),
(7, 'user_show_ua'),
(8, 'adm_banlist'),
(8, 'adm_ban_ip'),
(8, 'adm_forum_sinc'),
(8, 'adm_info'),
(8, 'adm_lib_repair'),
(8, 'adm_news'),
(8, 'adm_panel_show'),
(8, 'adm_ref'),
(8, 'adm_set_chat'),
(8, 'adm_set_forum'),
(8, 'adm_set_foto'),
(8, 'adm_set_loads'),
(8, 'adm_show_adm'),
(8, 'adm_statistic'),
(8, 'chat_clear'),
(8, 'chat_room'),
(8, 'forum_for_create'),
(8, 'forum_for_delete'),
(8, 'forum_for_edit'),
(8, 'forum_post_ed'),
(8, 'forum_razd_create'),
(8, 'forum_razd_edit'),
(8, 'forum_them_del'),
(8, 'forum_them_edit'),
(8, 'foto_alb_del'),
(8, 'foto_foto_edit'),
(8, 'foto_komm_del'),
(8, 'guest_clear'),
(8, 'guest_delete'),
(8, 'guest_show_ip'),
(8, 'lib_dir_create'),
(8, 'lib_dir_delete'),
(8, 'lib_dir_edit'),
(8, 'lib_dir_mesto'),
(8, 'lib_stat_create'),
(8, 'lib_stat_delete'),
(8, 'lib_stat_txt'),
(8, 'lib_stat_zip'),
(8, 'loads_dir_create'),
(8, 'loads_dir_delete'),
(8, 'loads_dir_mesto'),
(8, 'loads_dir_rename'),
(8, 'loads_file_delete'),
(8, 'loads_file_edit'),
(8, 'loads_file_upload'),
(8, 'loads_unzip'),
(8, 'notes_delete'),
(8, 'notes_edit'),
(8, 'obmen_dir_create'),
(8, 'obmen_dir_delete'),
(8, 'obmen_dir_edit'),
(8, 'obmen_file_delete'),
(8, 'obmen_file_edit'),
(8, 'obmen_komm_del'),
(8, 'user_ban_set'),
(8, 'user_ban_set_h'),
(8, 'user_ban_unset'),
(8, 'user_change_group'),
(8, 'user_change_nick'),
(8, 'user_collisions'),
(8, 'user_delete'),
(8, 'user_prof_edit'),
(8, 'user_show_add_info'),
(8, 'user_show_ip'),
(8, 'user_show_ua'),
(8, 'votes_create'),
(8, 'votes_settings'),
(9, 'adm_banlist'),
(9, 'adm_ban_ip'),
(9, 'adm_forum_sinc'),
(9, 'adm_info'),
(9, 'adm_ip_edit'),
(9, 'adm_lib_repair'),
(9, 'adm_log_read'),
(9, 'adm_menu'),
(9, 'adm_news'),
(9, 'adm_panel_show'),
(9, 'adm_ref'),
(9, 'adm_rekl'),
(9, 'adm_set_chat'),
(9, 'adm_set_forum'),
(9, 'adm_set_foto'),
(9, 'adm_set_loads'),
(9, 'adm_set_sys'),
(9, 'adm_set_user'),
(9, 'adm_show_adm'),
(9, 'adm_statistic'),
(9, 'adm_themes'),
(9, 'chat_clear'),
(9, 'chat_room'),
(9, 'forum_for_create'),
(9, 'forum_for_delete'),
(9, 'forum_for_edit'),
(9, 'forum_post_close'),
(9, 'forum_post_ed'),
(9, 'forum_razd_create'),
(9, 'forum_razd_edit'),
(9, 'forum_them_del'),
(9, 'forum_them_edit'),
(9, 'foto_alb_del'),
(9, 'foto_foto_edit'),
(9, 'foto_komm_del'),
(9, 'guest_clear'),
(9, 'guest_delete'),
(9, 'guest_show_ip'),
(9, 'lib_dir_create'),
(9, 'lib_dir_delete'),
(9, 'lib_dir_edit'),
(9, 'lib_dir_mesto'),
(9, 'lib_stat_create'),
(9, 'lib_stat_delete'),
(9, 'lib_stat_txt'),
(9, 'lib_stat_zip'),
(9, 'loads_dir_create'),
(9, 'loads_dir_delete'),
(9, 'loads_dir_mesto'),
(9, 'loads_dir_rename'),
(9, 'loads_file_delete'),
(9, 'loads_file_edit'),
(9, 'loads_file_import'),
(9, 'loads_file_upload'),
(9, 'loads_unzip'),
(9, 'notes_delete'),
(9, 'notes_edit'),
(9, 'obmen_dir_create'),
(9, 'obmen_dir_delete'),
(9, 'obmen_dir_edit'),
(9, 'obmen_file_delete'),
(9, 'obmen_file_edit'),
(9, 'obmen_komm_del'),
(9, 'user_ban_set'),
(9, 'user_ban_set_h'),
(9, 'user_ban_unset'),
(9, 'user_change_group'),
(9, 'user_change_nick'),
(9, 'user_collisions'),
(9, 'user_delete'),
(9, 'user_mass_delete'),
(9, 'user_prof_edit'),
(9, 'user_show_add_info'),
(9, 'user_show_ip'),
(9, 'user_show_ua'),
(9, 'votes_create'),
(9, 'votes_settings'),
(11, 'adm_banlist'),
(11, 'adm_info'),
(11, 'adm_panel_show'),
(11, 'adm_show_adm'),
(11, 'adm_statistic'),
(11, 'forum_post_close'),
(11, 'notes_delete'),
(11, 'notes_edit'),
(11, 'user_ban_set'),
(11, 'user_ban_set_h'),
(12, 'adm_banlist'),
(12, 'adm_info'),
(12, 'adm_panel_show'),
(12, 'adm_show_adm'),
(12, 'adm_statistic'),
(12, 'guest_clear'),
(12, 'guest_delete'),
(12, 'user_ban_set'),
(12, 'user_ban_set_h'),
(15, 'adm_accesses'),
(15, 'adm_banlist'),
(15, 'adm_ban_ip'),
(15, 'adm_forum_sinc'),
(15, 'adm_info'),
(15, 'adm_ip_edit'),
(15, 'adm_lib_repair'),
(15, 'adm_log_delete'),
(15, 'adm_log_read'),
(15, 'adm_menu'),
(15, 'adm_mysql'),
(15, 'adm_news'),
(15, 'adm_panel_show'),
(15, 'adm_ref'),
(15, 'adm_rekl'),
(15, 'adm_set_chat'),
(15, 'adm_set_forum'),
(15, 'adm_set_foto'),
(15, 'adm_set_loads'),
(15, 'adm_set_sys'),
(15, 'adm_set_user'),
(15, 'adm_show_adm'),
(15, 'adm_statistic'),
(15, 'adm_themes'),
(15, 'chat_clear'),
(15, 'chat_room'),
(15, 'forum_for_create'),
(15, 'forum_for_delete'),
(15, 'forum_for_edit'),
(15, 'forum_post_close'),
(15, 'forum_post_ed'),
(15, 'forum_razd_create'),
(15, 'forum_razd_edit'),
(15, 'forum_them_del'),
(15, 'forum_them_edit'),
(15, 'foto_alb_del'),
(15, 'foto_foto_edit'),
(15, 'foto_komm_del'),
(15, 'guest_show_ip'),
(15, 'lib_dir_create'),
(15, 'lib_dir_delete'),
(15, 'lib_dir_edit'),
(15, 'lib_dir_mesto'),
(15, 'lib_stat_create'),
(15, 'lib_stat_delete'),
(15, 'lib_stat_txt'),
(15, 'lib_stat_zip'),
(15, 'loads_dir_create'),
(15, 'loads_dir_delete'),
(15, 'loads_dir_mesto'),
(15, 'loads_dir_rename'),
(15, 'loads_file_delete'),
(15, 'loads_file_edit'),
(15, 'loads_file_import'),
(15, 'loads_file_upload'),
(15, 'loads_unzip'),
(15, 'mini_chat_clear'),
(15, 'mini_chat_delete'),
(15, 'notes_delete'),
(15, 'notes_edit'),
(15, 'obmen_dir_create'),
(15, 'obmen_dir_delete'),
(15, 'obmen_dir_edit'),
(15, 'obmen_file_delete'),
(15, 'obmen_file_edit'),
(15, 'obmen_komm_del'),
(15, 'user_ban_set'),
(15, 'user_ban_set_h'),
(15, 'user_ban_unset'),
(15, 'user_change_group'),
(15, 'user_change_nick'),
(15, 'user_collisions'),
(15, 'user_delete'),
(15, 'user_mass_delete'),
(15, 'user_prof_edit'),
(15, 'user_show_add_info'),
(15, 'user_show_ip'),
(15, 'user_show_ua'),
(15, 'votes_create'),
(15, 'votes_settings');

-- --------------------------------------------------------

--
-- Структура таблицы `user_set`
--
-- Создание: Янв 28 2020 г., 22:09
-- Последнее обновление: Янв 28 2020 г., 22:27
--

DROP TABLE IF EXISTS `user_set`;
CREATE TABLE `user_set` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `privat_str` int(11) DEFAULT '1',
  `privat_mail` int(11) DEFAULT '1',
  `ocenka` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_set`
--

INSERT INTO `user_set` (`id`, `id_user`, `privat_str`, `privat_mail`, `ocenka`) VALUES
(1, 1, 1, 1, 0),
(2, 2, 1, 1, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `all_accesses`
--
ALTER TABLE `all_accesses`
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`,`id_ban`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `ban_ip`
--
ALTER TABLE `ban_ip`
  ADD KEY `min` (`min`,`max`);

--
-- Индексы таблицы `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cron`
--
ALTER TABLE `cron`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `discussions_set`
--
ALTER TABLE `discussions_set`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `frends`
--
ALTER TABLE `frends`
  ADD PRIMARY KEY (`user`,`frend`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `frends_new`
--
ALTER TABLE `frends_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `gallery_foto`
--
ALTER TABLE `gallery_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gallery` (`id_gallery`);

--
-- Индексы таблицы `gallery_komm`
--
ALTER TABLE `gallery_komm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_foto` (`id_foto`);

--
-- Индексы таблицы `gifts_user`
--
ALTER TABLE `gifts_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gift_categories`
--
ALTER TABLE `gift_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gift_list`
--
ALTER TABLE `gift_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konts`
--
ALTER TABLE `konts`
  ADD KEY `id_user` (`id_user`,`id_kont`,`time`);

--
-- Индексы таблицы `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`,`id_kont`),
  ADD KEY `read` (`read`);

--
-- Индексы таблицы `mail_to_send`
--
ALTER TABLE `mail_to_send`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notification_set`
--
ALTER TABLE `notification_set`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `opsos`
--
ALTER TABLE `opsos`
  ADD KEY `min` (`min`,`max`);

--
-- Индексы таблицы `photo_like`
--
ALTER TABLE `photo_like`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reg_mail`
--
ALTER TABLE `reg_mail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `rekl`
--
ALTER TABLE `rekl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sel` (`sel`),
  ADD KEY `time_last` (`time_last`);

--
-- Индексы таблицы `smile`
--
ALTER TABLE `smile`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `survey_v`
--
ALTER TABLE `survey_v`
  ADD KEY `id_s` (`id_s`,`id_r`,`id_user`);

--
-- Индексы таблицы `tape`
--
ALTER TABLE `tape`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`,`avtor`),
  ADD KEY `read` (`read`);

--
-- Индексы таблицы `tape_set`
--
ALTER TABLE `tape_set`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nick` (`nick`),
  ADD KEY `url` (`url`);

--
-- Индексы таблицы `users_konts`
--
ALTER TABLE `users_konts`
  ADD UNIQUE KEY `id_user` (`id_user`,`id_kont`),
  ADD KEY `type` (`type`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `user_collision`
--
ALTER TABLE `user_collision`
  ADD KEY `id_user` (`id_user`,`id_user2`);

--
-- Индексы таблицы `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_group_access`
--
ALTER TABLE `user_group_access`
  ADD KEY `id_group` (`id_group`,`id_access`);

--
-- Индексы таблицы `user_set`
--
ALTER TABLE `user_set`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ban`
--
ALTER TABLE `ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `discussions_set`
--
ALTER TABLE `discussions_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `frends_new`
--
ALTER TABLE `frends_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gallery_foto`
--
ALTER TABLE `gallery_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `gallery_komm`
--
ALTER TABLE `gallery_komm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `gifts_user`
--
ALTER TABLE `gifts_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gift_categories`
--
ALTER TABLE `gift_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `gift_list`
--
ALTER TABLE `gift_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `mail_to_send`
--
ALTER TABLE `mail_to_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `notification_set`
--
ALTER TABLE `notification_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `photo_like`
--
ALTER TABLE `photo_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `reg_mail`
--
ALTER TABLE `reg_mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rekl`
--
ALTER TABLE `rekl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `smile`
--
ALTER TABLE `smile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tape`
--
ALTER TABLE `tape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tape_set`
--
ALTER TABLE `tape_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `user_set`
--
ALTER TABLE `user_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
