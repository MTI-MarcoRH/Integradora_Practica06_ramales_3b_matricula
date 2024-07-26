CREATE DATABASE  IF NOT EXISTS `bd_cafeteria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_cafeteria`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_cafeteria
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `becas`
--

DROP TABLE IF EXISTS `becas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `becas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'DESCRIPCIÓN : Atributo autoincremental que identificará de manera única los datos asociados a una BECAS:\\r\\n\\r\\nNATURALEZA: Cuantitativo\\r\\nTIPO DE DATO:  INTEGER\\r\\nDOMINIO:  Números Enteros Positivos\\r\\nCOMPOSICIÓN:   ID = 1{0-9}',
  `Tipo_Beca_ID` int unsigned NOT NULL,
  `Estatus` varchar(255) NOT NULL COMMENT 'DESCRIPCIÓN :  Situación actual de los registros de becas, este campo es para el control de eliminación y restauración de los registros.\r\n\r\nNATURALEZA: Cuantitativo\r\n\r\nTIPO DE DATO:  BIT (Booleano)\r\n\r\nDOMINIO:  "0" o "1" ,  0 será para Falso  y 1 para Verdadero\r\n\r\nCOMPOSICIÓN:   Estatus= ["0"|"1"]',
  `Fecha_Registro` varchar(255) NOT NULL,
  `Fecha_Ultima_actualizacion` varchar(255) DEFAULT NULL,
  `Estudiante_ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `becas`
--

LOCK TABLES `becas` WRITE;
/*!40000 ALTER TABLE `becas` DISABLE KEYS */;
/*!40000 ALTER TABLE `becas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `ID` int NOT NULL,
  `Clave` varchar(10) NOT NULL,
  `NombreCarrera` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `ID` varchar(255) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Estatus` tinyint NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Fecha_Ultima_Modificacion` datetime NOT NULL,
  `Total_Productos` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `ID` int NOT NULL,
  `Persona_ID` longtext NOT NULL,
  `Estatus` varchar(255) DEFAULT NULL,
  `Fecha_Registro` varchar(255) DEFAULT NULL,
  `Fecha_ultima_actualizacion` varchar(255) DEFAULT NULL,
  `Descripcion` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `ID` int NOT NULL,
  `Carrera_ID` int DEFAULT NULL,
  `Grado` int DEFAULT NULL,
  `Grupo` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `ID` int NOT NULL COMMENT 'identificará de manera única los datos asociados a una PERSONA\r\n\r\nNATURALEZA: Cuantitativo\r\nTIPO DE DATO:  INTEGER\r\nDOMINIO:  Números Enteros Positivos\r\nCOMPOSICIÓN:   ID = 1{0-9}',
  `Nombre` varchar(80) NOT NULL COMMENT 'DESCRIPCIÓN : Referencia Legal y ciudadana de una PERSONA.\r\n\r\nNATURALEZA: Cualitativo\r\n\r\nTIPO DE DATO:  VARCHAR\r\n\r\nDOMINIO:  Alfabeto\r\n\r\nCOMPOSICIÓN:   Nombre = 1{A-Z |a-z|(" ")}80',
  `Apellido_Paterno` varchar(80) NOT NULL COMMENT 'DESCRIPCIÓN : Referencia Legal y ciudadana que deriva de su procedencia familiar de una PERSONA\r\n\r\nNATURALEZA: Cualitativo\r\n\r\nTIPO DE DATO:  VARCHARING\r\n\r\nDOMINIO:  Alfabeto\r\n\r\nCOMPOSICIÓN:   Primer apellido= 1{A-Z |a-z|(" ")}8',
  `Apellido_Materno` varchar(80) NOT NULL COMMENT 'DESCRIPCIÓN : Referencia Legal y ciudadana que deriva de su procedencia familiar de una PERSONA\r\n\r\nNATURALEZA: Cualitativo\r\n\r\nTIPO DE DATO:  VARCHARING\r\n\r\nDOMINIO:  Alfabeto\r\n\r\nCOMPOSICIÓN:   Primer apellido= 1{A-Z |a-z|(" ")}8',
  `Fecha_de_nacimiento` date NOT NULL COMMENT 'DESCRIPCIÓN : Fecha específica de nacimiento de la PERSONA.\r\n\r\nNATURALEZA: Cuantitativo\r\n\r\nTIPO DE DATO:  DATE\r\n\r\nDOMINIO:  Fecha superior al 1900-01-01, e inferior al cumplimiento del mínimo de edad requerido. \r\nCOMPOSICIÓN:   Fecha de nacimiento =  AÑO + "-" + MES + "-" +DIA\r\nAÑO =  4{1900-9999}4\r\nMES  = [01|...|12]\r\nDIA =[01|...|31]',
  `Tipo` longtext NOT NULL,
  `Estatus` tinyint NOT NULL COMMENT 'DESCRIPCIÓN :  Situación actual de los registros de la PERSONA, este campo es para el control de eliminación y restauración de los registros.\r\n\r\nNATURALEZA: Cuantitativo\r\n\r\nTIPO DE DATO:  BIT (Booleano)\r\n\r\nDOMINIO:  "0" o "1" ,  0 será para Falso  y 1 para Verdadero\r\n\r\nCOMPOSICIÓN:   Estatus= ["0"|"1"]',
  `Fecha_registro` datetime NOT NULL COMMENT 'DESCRIPCIÓN : Fecha específica del registro de una PERSONA para el uso de la plataforma.\r\n\r\nNATURALEZA: Cuantitativo\r\nTIPO DE DATO:  TIMESTAMP (Fecha y Hora)\r\nDOMINIO:  Fecha superior al LA FECHA REGISTRO e INFERIOR  a la FECHA ACTUAL\r\nCOMPOSICIÓN:   \r\nFECHA REGISTRO  =  AÑO +"-"+MES+"-"+DIA +" "+HORAS+":"+MINUTOS+":"+SEGUNDOS \r\n\r\nAÑO =  4{1900-9999}4\r\nMES  = [01|...|12]\r\nDIA =[01|...|31]\r\nHORA = [00|...|23]\r\nMINUTOS = [00|...|59]\r\nSEGUNDOS= [00|...|59]',
  `Fecha_ultima_actualizacion` datetime DEFAULT NULL COMMENT 'DESCRIPCIÓN : Fecha específica de la última actualización de los datos de una PERSONA, para fines de auditoría.\r\n\r\nNATURALEZA: Cuantitativo\r\n\r\nTIPO DE DATO:  TIMESTAMP (Fecha y Hora)\r\n\r\nDOMINIO:  Fecha superior a la FECHA REGISTRO, e inferior a la FECHA ACTUAL\r\n  \r\nCOMPOSICIÓN:  FECHA ACTUALIZACION =   AÑO +"-"+MES+"-"+DIA +" "+HORAS+":"+MINUTOS+":"+SEGUNDOS \r\n\r\nAÑO =  4{1900-9999}4\r\nMES  = [01|...|12]\r\nDIA =[01|...|31]\r\nHORA = [00|...|23]\r\nMINUTOS = [00|...|59]\r\nSEGUNDOS= [00|...|59]',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_becas`
--

DROP TABLE IF EXISTS `tipo_becas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_becas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `FechaReg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FechaUAct` datetime DEFAULT NULL,
  `Descripción` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_becas`
--

LOCK TABLES `tipo_becas` WRITE;
/*!40000 ALTER TABLE `tipo_becas` DISABLE KEYS */;
INSERT INTO `tipo_becas` VALUES (1,'Estudiantes',_binary '','2023-04-05 17:34:57',NULL,'Beca destinada a alumnos inscritos del periodo activo de la univerisad'),(2,'Aspirantes',_binary '','2023-04-05 17:36:32',NULL,'Beca dirigida a estudiantes de nivel medio superior que visitan la universidad, que regularmente consiste en un lonche conformado por un sandwich , una fruta y una bebida.');
/*!40000 ALTER TABLE `tipo_becas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_cafeteria'
--

--
-- Dumping routines for database 'bd_cafeteria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-26  9:51:41
