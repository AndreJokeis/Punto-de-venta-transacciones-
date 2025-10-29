-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `barcode` varchar(13) NOT NULL,
  `name` varchar(60) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `pieces` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`barcode`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('7501000100001','Leche Entera LALA 1L','LALA',1,24.5,1,'Lácteos'),('7501000200002','Cereal Chocoflakes 500g','Kelloggs',1,55.9,1,'Cereales'),('7501000300003','Jugo de Naranja 1.5L','Jumex',1,32,1,'Bebidas'),('7501000400004','Detergente Líquido 1L','Ariel',1,48.75,1,'Limpieza'),('7501000500005','Pan Blanco Bimbo Grande','Bimbo',1,35.5,1,'Panadería'),('7501000600006','Refresco Cola 2L','Coca Cola',6,28,0,'Bebidas'),('7501000700007','Queso Oaxaca 400g','Fud',1,78.99,0,'Lácteos'),('7501000800008','Café Tostado 250g','Nescafé',1,89.5,0,'Bebidas'),('7501000900009','Atún en Aceite 140g','Dolores',3,18.2,0,'Enlatados'),('7501001000010','Pasta Dental Menta 100ml','Colgate',1,42,0,'Higiene'),('7501001100011','Shampoo Fructis 750ml','Garnier',1,95.9,0,'Higiene'),('7501001200012','Arroz Blanco 1kg','Verde Valle',1,22,0,'Granos'),('7501001300013','Aceite de Maíz 900ml','Capullo',1,46.5,0,'Aceites'),('7501001400014','Galletas Marías Paquete','Gamesa',1,15.3,0,'Snacks'),('7501001500015','Papel Higiénico 4 Rollos','Pétalo',4,38,0,'Higiene'),('7501001600016','Cerveza Lager 6 Pack','Modelo',6,99,0,'Bebidas'),('7501001700017','Harina de Trigo 1kg','Tres Estrellas',1,18.5,0,'Panadería'),('7501001800018','Crema Corporal 400ml','Nivea',1,85,0,'Higiene'),('7501001900019','Sal de Mesa 1kg','La Fina',1,9.5,0,'Condimentos'),('7501002000020','Jamón de Pavo 250g','Zwan',1,52,0,'Carnes Frías'),('7501002100021','Jabón de Tocador 150g','Zest',1,12.5,0,'Higiene'),('7501002200022','Leche de Almendras 946ml','Silk',1,45,0,'Lácteos'),('7501002300023','Mermelada de Fresa 270g','Clemente Jacques',1,28.9,0,'Enlatados'),('7501002400024','Filtros de Café No. 4','Melitta',100,29.5,0,'Hogar'),('7501002500025','Refresco Limón Light 600ml','Pepsi',1,15,0,'Bebidas');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-28 14:56:27
