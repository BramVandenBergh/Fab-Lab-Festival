-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql258.hosting.combell.com:3306
-- Gegenereerd op: 28 aug 2019 om 08:39
-- Serverversie: 5.7.22-22
-- PHP-versie: 7.1.25-1+0~20181207224605.11+jessie~1.gbpf65b84

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ID282067_20182019`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_bucketlist_challenges`
--

CREATE TABLE `int2herex_bucketlist_challenges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `challenger_name` varchar(255) NOT NULL,
  `challenge` varchar(255) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_bucketlist_challenges`
--

INSERT INTO `int2herex_bucketlist_challenges` (`id`, `user_id`, `challenger_name`, `challenge`, `value`) VALUES
(1, 1, 'Nathan', 'Ga zwemmen met haaien.', 20),
(2, 1, 'Nathan', 'Bungeejump van de eifeltoren.', 100),
(3, 2, 'Bram', 'Eet een hele maand vegetarisch', 50);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_bucketlist_users`
--

CREATE TABLE `int2herex_bucketlist_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_bucketlist_users`
--

INSERT INTO `int2herex_bucketlist_users` (`id`, `name`) VALUES
(1, 'Bram'),
(2, 'Nathan');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_kinds`
--

CREATE TABLE `int2herex_kinds` (
  `id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_kinds`
--

INSERT INTO `int2herex_kinds` (`id`, `kind`, `price`, `description`, `title`) VALUES
(1, 'timeslot', 2, 'Want to try the technology yourself? Reserve a timeslot for one of our                         trucks. At the end of the session you can take home your creations.', 'Reserve a <span>timeslot</span>'),
(2, 'book', 10, 'Want to learn more about the technology you just tried out? Buy a book                         about it and maybe you can even try it at home.', 'Buy a <span>book</span>'),
(3, 'tech', 500, 'Were you completely blown away by the tech you just discovered? Do you                         want to own it yourself? Well, that\'s possible! Order now before stock runs out!', 'Buy the <span>tech</span>'),
(4, 'combi', 380, 'Can\'t decide? Want to save some money? This is your chance! Book a timeslot at a truck, get a book from the tech you tried out <em>and</em> take the tech home with you. And to make it even better, you get all that <em>with a 25% discount</em>!', '<span>Combi</span>-pack');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_locations`
--

CREATE TABLE `int2herex_locations` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_locations`
--

INSERT INTO `int2herex_locations` (`id`, `location`, `date`) VALUES
(1, 'Aalst', '2019-09-01'),
(2, 'Boom', '2019-09-15'),
(3, 'Kortrijk', '2019-09-29'),
(4, 'Kortenberg', '2019-10-20'),
(5, 'Herne', '2019-11-10'),
(6, 'Hasselt', '2019-11-24'),
(7, 'Jabbeke', '2019-12-15'),
(8, 'Kalmthout', '2020-01-12'),
(9, 'Gent', '2020-01-26'),
(10, 'Veurne', '2020-02-02');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_orders`
--

CREATE TABLE `int2herex_orders` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) NOT NULL,
  `truck_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `timeslot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_prices`
--

CREATE TABLE `int2herex_prices` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_prices`
--

INSERT INTO `int2herex_prices` (`id`, `kind_id`, `price`) VALUES
(1, 1, 2),
(2, 2, 10),
(3, 3, 500),
(4, 4, 380);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_timeslots`
--

CREATE TABLE `int2herex_timeslots` (
  `id` int(11) NOT NULL,
  `timeslot` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_timeslots`
--

INSERT INTO `int2herex_timeslots` (`id`, `timeslot`) VALUES
(1, '10:00:00'),
(2, '11:00:00'),
(3, '14:00:00'),
(4, '15:00:00'),
(5, '16:00:00'),
(6, '17:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_truckinfo`
--

CREATE TABLE `int2herex_truckinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `article_id` varchar(255) NOT NULL,
  `catchphrase` varchar(40) NOT NULL,
  `description_block1` text NOT NULL,
  `description_block2` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `img_alt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_truckinfo`
--

INSERT INTO `int2herex_truckinfo` (`id`, `title`, `article_id`, `catchphrase`, `description_block1`, `description_block2`, `image`, `img_alt`) VALUES
(1, '3d printing', '3dprint', 'Print your imagination', 'Have you ever made your own <em>custom name tag</em> for your mailbox? Or maybe you need a <em>replacement part</em> for your furniture? Well, today is your chance! We will show you how a digital 3D-model is made and how to print it on one of our <em>3D printers</em>.', 'If you want to learn more about this technology, you can <em>buy a book</em> about it on the tickets page. If you got knocked completely off your socks and want to <em>buy a 3D printer</em> to bring your projects to life <em>at home</em>, you can order one on the tickets page.', '3dprinter.svg', '3d printer'),
(2, 'Raspberry pi', 'raspberrypi', 'A raspberry with infinite applications', 'Have you ever wanted to <em>automate</em> something in your home? Or maybe you want to build a <em>mini home entertainment system</em>? Well, today is your chance! We will teach you how to easily write <em>simple</em> programs on the <em>Raspberry Pi</em> and realise your own projects.', 'If you want to learn more about this technology, you can <em>buy a book</em> about it on the tickets page. If you got knocked completely off your socks and want to <em>buy a Raspberry Pi</em> to experiment <em>at home</em>, you can order one on the tickets page.', 'raspberrypi.svg', 'raspberry pi'),
(3, 'Laser cutting', 'lasercutting', 'Lasers? Pew pew! (just kidding)', 'Have you ever wanted to make something out of <em>metal</em> but ended up not making it at all, just because it’s too <em>difficult</em> to cut out the form? Well, today is your chance! We will show you how easy it is to cut out both <em>simple</em> and <em>complex</em> forms with a lasercutter.', 'If you want to learn more about this technology, you can <em>buy a book</em> about it on the tickets page. If you got knocked completely off your socks and want to <em>buy a lasercutter</em> to bring your projects to life <em>at home</em>, you can order one on the tickets page.', 'lasercutter.svg', 'laser cutter'),
(4, 'Fix your electronic devices', 'fix', 'If it ain’t broke, fix it till it is', 'In today\'s <em>throw-away society</em>, electronic devices aren\'t as easy to repair as they used to be. However difficult, it <em>is</em> possible. We will show you how to fix the most common things that break in today\'s technology.', 'If you want to <em>realise the possimpible</em> at home and fix all your broken electronics, you can <em>buy a book</em> about it on the tickets page. ', 'tools.svg', 'tools'),
(5, 'Waterjet cutting', 'waterjet', 'It\'s like a pressure washer on steroids', 'Have you ever wanted to make something out of <em>metal</em> but ended up not making it at all, just because it’s too <em>difficult</em> to cut out the form? Well, today is your chance! We will show you how easy it is to cut out both <em>simple</em> and <em>complex</em> forms with a waterjet cutter.', 'If you want to learn more about this technology, you can <em>buy a book</em> about it on the tickets page. If you got knocked completely off your socks and want to <em>buy a waterjet cutter</em> to bring your projects to life <em>at home</em>, you can order one on the tickets page.', 'waterjet.svg', 'waterjet'),
(6, 'Food printing', 'foodprint', 'High-tech food has never tasted so good', 'Food all shapes you can imagine? From now on it\'s possible, because Europe\'s first foodprinter is here! Bring all your culinary dreams to life with this amazing machine!', 'If you want to learn more about this technology, you can <em>buy a book</em> about it on the tickets page. If you got knocked completely off your socks and want to <em>buy a foodprinter</em> to bring your culinary masterpieces to life <em>at home</em>, you can order one on the tickets page.', 'foodprinter.svg', 'food printer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2herex_trucks`
--

CREATE TABLE `int2herex_trucks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2herex_trucks`
--

INSERT INTO `int2herex_trucks` (`id`, `name`) VALUES
(1, '3D printing'),
(2, 'Laser cutting'),
(3, 'Raspberry pi'),
(4, 'Fix your electronic devices'),
(5, 'Waterjet cutting');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2_events`
--

CREATE TABLE `int2_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_clean` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `desc_short` text NOT NULL,
  `desc_long` text NOT NULL,
  `kind` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_detail` varchar(255) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2_events`
--

INSERT INTO `int2_events` (`id`, `title`, `title_clean`, `date`, `time`, `desc_short`, `desc_long`, `kind`, `image`, `image_detail`, `ticket_id`) VALUES
(1, 'Jump <br><span class=\"lime\">enhancement</span> <br>training', 'Jump enhancement training', '2019-07-01', '10:00:00', 'Experiencing trouble happy hooping from building to building? This training session will help you make the perfect jumps every time!', 'Experiencing trouble happy hooping from building to building? This training session will help you make the perfect jumps every time! Our trainers will guide you into using the perfect jump and landing technique. They will even give you some tips and tricks from their own experiences as a happy hooper.', '1', 'event1.png', 'eventdetail1.png', 1),
(2, 'Taking <br>care of your <br><span class=\"pink\">hoop</span>', 'Taking care of your hoop', '2019-07-02', '09:00:00', 'Your hoop might take some heavy beatings during training sessions and happy hoop sessions. In this how-to session we will go over some methods to keep your hoop as new as possible.', 'Your hoop might take some heavy beatings during training sessions and happy hoop sessions. In this how-to session we will go over some methods to keep your hoop as new as possible. We will show you all kinds of products and materials you can use to maintain your hoop. After all, without a hoop you can\'t play happy hoops.', '2', 'event2.png', 'eventdetail2.png', 2),
(3, 'Picking <br>the right <br><span class=\"pink\">shoes</span>', 'Picking the right shoes', '2019-07-03', '11:00:00', 'When you\'re happy hooping you probably don\'t want to break your feet. That\'s why you\'ll definitely need some good shoes.', 'When you\'re happy hooping you probably don\'t want to break your feet. That\'s why you\'ll definitely need some good shoes. In this how-to session we will show you what makes a good shoe for happy hooping, and what kinds of shoes to stay away from.', '2', 'event3.png', 'eventdetail3.png', 3),
(4, 'Improve your <br><span class=\"lime\">throwing</span> <br>technique', 'Improve your throwing technique', '2019-07-04', '14:00:00', 'Throwing your hoop building to building is not easy. In this training session we will teach you how to perfectly throw your hoop and make sure it lands where you want it to.', 'Throwing your hoop building to building is not easy. In this training session we will teach you how to perfectly throw your hoop and make sure it lands where you want it to. Our trainers will teach you the best throwing and aiming techniques and guide you into mastering them.', '1', 'event4.png', 'eventdetail4.png', 4),
(5, 'Yearly <br><span class=\"lime\">fundraiser</span>', 'Yearly fundraiser', '2019-07-05', '09:00:00', 'Every year we organise a fundraiser to raise money for new equipment. This year the raised money will go towards new team shirts and sweaters.', 'Every year we organise a fundraiser to raise money for new equipment. This year the raised money will go towards new team shirts and sweaters. That way, when we are happy hooping throughout Kortrijk people will recognise us immediately.', '3', 'event5.png', 'eventdetail5.png', 5),
(6, 'Choosing the <br>right kind of <br><span class=\"pink\">hoop</span>', 'Choosing the right kind of hoop', '2019-07-08', '08:30:00', 'To execute perfect throws when happy hooping, you\'ll need a good hoop. In this how-to session we\'ll explain you what makes a good, and what makes a bad hoop.', 'To execute perfect throws when happy hooping, you\'ll need a good hoop. In this how-to session we\'ll explain you what makes a good, and what makes a bad hoop. We\'ll explain you the different kinds of hoops, along with the advantages and disadvantages of each kind. Every participant of this how-to session gets a 50&#37;-off coupon for their next hoop purchase.', '2', 'event6.png', 'eventdetail6.png', 6),
(7, 'Improve your <br><span class=\"lime\">hoop</span> <br>stability', 'Improve your hoop stability', '2019-07-09', '17:00:00', 'Experiencing trouble keeping your hoop stable while happy hooping?\r\nThis training session will teach you you how to keep your hoop stable by improving your aim.', 'Experiencing trouble keeping your hoop stable while happy hooping?\r\nThis training session will teach you you how to keep your hoop stable by improving your aim. Our trainers will teach you the finest techniques and give you some tips and tricks to even do some trickshots.', '1', 'event7.png', 'eventdetail7.png', 7),
(8, 'Train your <br><span class=\"lime\">tactics</span>', 'Train your tactics', '2019-07-10', '11:00:00', 'Besides technique, tactics are one of the most important things in happy hoops. In this training session we\'ll teach you various happy hoops tactics.', 'Besides technique, tactics are one of the most important things in happy hoops. In this training session we\'ll teach you various happy hoops tactics. You\'ll be guided by our experienced trainers.', '1', 'event8.png', 'eventdetail8.png', 8),
(9, 'Recording epic <br>happy hoops <br><span class=\"pink\">videos</span>', 'Recording epic happy hoops videos', '2019-07-11', '09:30:00', 'Yearning to share your happy hoop adventures? This is your chance! We will teach you how to schoot, edit and upload the most amazing, exciting and epic happy hoop videos ever!', 'Yearning to share your happy hoop adventures? This is your chance! We will teach you how to schoot, edit and upload the most amazing, exciting and epic happy hoop videos ever! We’ll show you the best shooting techniques and the most exciting compositions for your videos. We’ll even show you how to use editing software to take your videos to the next level!', '2', 'event9.png', 'eventdetail9.png', 9),
(10, 'Improve your <br><span class=\"lime\">teamplay</span> <br>skills', 'Improve your teamplay skills', '2019-07-12', '15:00:00', 'In many sports teamplay is a big aspect, and especially in Happy Hoops. In this training session you’ll learn how to efficiently communicate with your team and play as a team.', 'In many sports teamplay is a big aspect, and especially in Happy Hoops. In this training session you’ll learn how to efficiently communicate with your team and play as a team. Not only will this improve your Happy Hoops experience, it will also greatly improve team spirit.', '1', 'event10.png', 'eventdetail10.png', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2_orders`
--

CREATE TABLE `int2_orders` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2_orders`
--

INSERT INTO `int2_orders` (`id`, `ticket_id`, `name`, `email`) VALUES
(1, 1, 'bram', 'bram@gmail.com'),
(2, 1, 'Test', 'Test@gmail.com'),
(3, 1, 'Test', 'Test@gmail.com'),
(4, 1, 'en nu?', 'nu@gmail.com'),
(5, 1, 'en nu?', 'nu@gmail.com'),
(6, 2, 'd', 'd@gmail.com'),
(7, 10, 'chinouk', 'chinouk@bmail.com'),
(8, 5, 'Bram', 'Bram@brambail.com'),
(9, 2, 'beheerder', 'bramvandenbergh@icloud.com'),
(10, 2, 'Jelle', 'bramvandenbergh@icloud.com'),
(11, 2, 'Guylian', 'd@gmail.com'),
(12, 2, 'beheerder', 'bramvandenbergh@icloud.com'),
(13, 2, 'nathaaaaan', 'vandeweggge@gmail.com'),
(14, 5, 'Bram', 'bramvandenbergh@icloud.com'),
(15, 5, 'Bram', 'bramvandenbergh@icloud.com'),
(16, 2, 'NATHAN IS DE BESTE JAJAJAJ', 'nathanvragenbijphpkommaaraf@phpisnietzoleukhe.com'),
(17, 2, 'beheerder', 'bramvandenbergh@icloud.com'),
(18, 4, 'test', 'test@test'),
(19, 1, 'Yarl', 'yarl.van.onckelen@student.howest.be'),
(20, 3, 'Alexander', 'alexander_verbeeck@outlook.be'),
(21, 10, 'klaus', 'klaus.delanghe@howest.be'),
(22, 1, 'test', 'test@test.com'),
(23, 1, 'Bram', 'test@test123'),
(24, 5, 'Nathan Vandeweghe', 'nathanvdw99@gmail.com');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `int2_type`
--

CREATE TABLE `int2_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `int2_type`
--

INSERT INTO `int2_type` (`id`, `name`) VALUES
(1, 'training'),
(2, 'how-to'),
(3, 'fundraiser');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `int2herex_bucketlist_challenges`
--
ALTER TABLE `int2herex_bucketlist_challenges`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_bucketlist_users`
--
ALTER TABLE `int2herex_bucketlist_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_kinds`
--
ALTER TABLE `int2herex_kinds`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_locations`
--
ALTER TABLE `int2herex_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_orders`
--
ALTER TABLE `int2herex_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_prices`
--
ALTER TABLE `int2herex_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_timeslots`
--
ALTER TABLE `int2herex_timeslots`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_truckinfo`
--
ALTER TABLE `int2herex_truckinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2herex_trucks`
--
ALTER TABLE `int2herex_trucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2_events`
--
ALTER TABLE `int2_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2_orders`
--
ALTER TABLE `int2_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `int2_type`
--
ALTER TABLE `int2_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `int2herex_bucketlist_challenges`
--
ALTER TABLE `int2herex_bucketlist_challenges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `int2herex_bucketlist_users`
--
ALTER TABLE `int2herex_bucketlist_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `int2herex_kinds`
--
ALTER TABLE `int2herex_kinds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `int2herex_locations`
--
ALTER TABLE `int2herex_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `int2herex_orders`
--
ALTER TABLE `int2herex_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `int2herex_prices`
--
ALTER TABLE `int2herex_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `int2herex_timeslots`
--
ALTER TABLE `int2herex_timeslots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `int2herex_truckinfo`
--
ALTER TABLE `int2herex_truckinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `int2herex_trucks`
--
ALTER TABLE `int2herex_trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `int2_events`
--
ALTER TABLE `int2_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `int2_orders`
--
ALTER TABLE `int2_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT voor een tabel `int2_type`
--
ALTER TABLE `int2_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
