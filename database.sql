-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 26, 2013 at 04:12 AM
-- Server version: 5.1.68-cll
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chargeme_p2_chargemeupsidedown_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'FK',
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `created`, `modified`, `user_id`, `content`) VALUES
(28, 1384108599, 1384108599, 52, 'Boston, I miss you so much. Brooklyn just doesn''t have the same heart.'),
(29, 1384108692, 1384108692, 49, 'Kev, how did you deal with being sidelined by injury for months at a time?'),
(31, 1384108809, 1384108809, 51, 'Even though I''m not in Boston anymore, I still want to beat the Heat so badly. My boy Jeff Green just beat me to it last night!'),
(32, 1384108909, 1384108909, 50, 'Hey guys, I''m sorry I went to the Heat. Remember my 52 point game?'),
(34, 1384109005, 1384109005, 49, 'Maybe I''ll make a February appearance on the court? Sound good to you all?'),
(39, 1384109340, 1384109340, 51, 'When I retire, I think I''m gonna build myself a restaurant in Back Bay on Newbury Street.'),
(40, 1384109385, 1384109385, 51, 'Every time I see Joe Johnson with the ball, I wanna strangle him, I swear. Mr. Joe Iso.'),
(42, 1384109532, 1384109532, 52, 'It''s getting harder and harder to take these 82 game seasons. I''m gonna keep on pushing though.'),
(43, 1384109552, 1384109552, 52, 'To this day, I still believe that anything is possible. Literally.'),
(44, 1384109609, 1384109609, 50, 'Just to let you know, guys, I''ve been secretly trying to sabotage the Heat from the inside.'),
(45, 1384109640, 1384109640, 50, 'Just to let you know, I have 3% bodyfat. Doesn''t come easy, let me tell you.'),
(47, 1384741235, 1384741235, 57, 'First post!'),
(48, 1384741242, 1384741242, 57, 'Second post!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `first_name`, `last_name`, `email`, `image`) VALUES
(49, 1384108334, 1384108334, 'fbdcee110f1977b055d681d27bbe2e92181f98e6', 'c81cf32e7531f474c0c1cc9d1b22d9703bbd5ea0', 0, '', 'Rajon', 'Rondo', 'rrondo@gmail.com', '49.jpg'),
(50, 1384108469, 1384108469, 'a7d6e7fa4a8eb59d28ed990a422fe5bf392cb3c9', '693f346aa9ed885d9a2d5d917a19a8c7c45b788d', 0, '', 'Ray', 'Allen', 'rallen@gmail.com', '50.png'),
(51, 1384108493, 1384108493, '086286e9b2a20e4fc20e50bf9d3639acf6a79b44', '43dcbac5078f1c907ced73728aed29c4e15bdd81', 0, '', 'Paul ', 'Pierce', 'ppierce@gmail.com', ''),
(52, 1384108515, 1384108515, '7fa6e5cc5627d981b68fbce127fdc6f7e11a3262', 'c118e8c789bcc6b9b264ffb6c345bdf83d1491a4', 0, '', 'Kevin', 'Garnett', 'kgarnett@gmail.com', ''),
(53, 1384187525, 1384187525, '71aac287855871246f1d61039702f4f0b3ef8694', '0c3dce19df1e3a12aba792a46339a26e16269fc6', 0, '', '', '', '', ''),
(54, 1384192472, 1384192472, '8e604d9e0e71428069d654305bff6c6db97ef3cd', '664e93ce311d878914be371b54c2114e5e3ba2fb', 0, '', 'qeqrfqerfe', 'tfgetfetg', 'etetettgr4t@wjiejie.com', ''),
(55, 1384741032, 1384741032, '42e33ba957ad93b924a240901e0af507025d1d32', '0c3dce19df1e3a12aba792a46339a26e16269fc6', 0, '', '', '', '', ''),
(56, 1384741069, 1384741069, 'bb32a3fe4463c520f3044a5894a1820231393bf8', 'f0a4b8005e26190f45ba7d0849f2a4e54d8e6639', 0, '', 'bogus', 'bogus', 'bogus', ''),
(57, 1384741140, 1384741140, 'cab76c204d5a817c7b4dec99604475ab0b0dc0dd', 'b735514de2d050de8d651f3e7c6953eaa8aa4093', 0, '', 'Quintin', 'Marcus', 'quintinmarcus@gmail.com', '57.gif'),
(58, 1384741166, 1384741166, '9c46aed4e529f8f482bee17c34c5d060e8a2689c', 'b735514de2d050de8d651f3e7c6953eaa8aa4093', 0, '', 'NotQuintin', 'NotMarcus', 'quintinmarcus@gmail.com', ''),
(59, 1387915790, 1387915790, 'c77df82e077f2a7a6450f9a2040ee4d3690025f8', '58cf7553786eb79c87d2b5a41e1ea9e0e40f33d1', 0, '', 'Telly', 'Savalas', 'tsavalas@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE IF NOT EXISTS `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'FK. Follower.',
  `user_id_followed` int(11) NOT NULL COMMENT 'Followed.',
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`user_user_id`, `created`, `user_id`, `user_id_followed`) VALUES
(1, 1384108552, 52, 49),
(2, 1384108553, 52, 50),
(3, 1384108554, 52, 51),
(4, 1384108844, 51, 49),
(5, 1384108845, 51, 50),
(6, 1384108846, 51, 52),
(7, 1384108915, 50, 49),
(8, 1384108916, 50, 51),
(9, 1384108917, 50, 52),
(10, 1384108935, 49, 50),
(12, 1384108936, 49, 52),
(13, 1384156278, 49, 51),
(14, 1384187588, 53, 49),
(15, 1384741249, 57, 50),
(16, 1384741250, 57, 49),
(17, 1384741252, 57, 52),
(18, 1384741254, 57, 51),
(19, 1384741265, 57, 58);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_users`
--
ALTER TABLE `users_users`
  ADD CONSTRAINT `users_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
