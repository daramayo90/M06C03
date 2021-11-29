DROP DATABASE IF EXISTS `M06C03`;
CREATE DATABASE  IF NOT EXISTS `M06C03`;
USE `M06C03`;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` tinylint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users`(name,email) VALUES ("Damián Aramayo","da.aramayo1990@gmail.com"),("Natalia","natyk@gmail.com"),("Martín","martin123456@gmail.com"),("Nicolas","nicolas123456@gmail.com"),("Lucila","lu123456@gmail.com");


--
-- Table structure for table `categories`
--


CREATE TABLE `categories` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (name) VALUES ("Categoria 1"),("Categoria 2"),("Categoria 3"),("Categoria 4"),("Categoria 5"),("Categoria 6"),("Categoria 7"),("Categoria 8"),("Categoria 9"),("Categoria 10");

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `created_at`  date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `id_users` tinyint NOT NULL,
  `id_categories` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_idusers` FOREIGN KEY (`id_users`) REFERENCES `m06c03`.`users` (`id`),
  CONSTRAINT `FK_idcategorias` FOREIGN KEY (`id_categories`) REFERENCES `m06c03`.`categories` (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
  
  
--
-- Dumping data for table `notes`
--

INSERT INTO `notes`(created_at,updated_at,description,permanent,id_users,id_categories) VALUES ("2017-05-01","2019-05-10","Testeamos lo que va",0,1,3),("2019-08-02",NULL,"Otro texto por acá",0,8,1),("2012-10-19","2015-11-16","Texto 3",0,2,4),("2016-06-04",NULL,"A ver qué sale de esto",1,2,4),("2011-09-15",NULL,"Probemos un poco más",1,2,5),("2013-01-12",NULL,"lalalalala",1,2,7),("2020-11-28","2021-08-22","Text_101",0,2,10),("2020-12-11",NULL,"Uno más",1,2,2),("2021-03-05",NULL,"El anteúltimo",1,2,7),("2021-07-11",NULL,"Con esto termina",1,2,8);