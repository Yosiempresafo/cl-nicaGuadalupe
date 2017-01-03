-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `RFC` varchar(20) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `ApPaterno` varchar(20) DEFAULT NULL,
  `ApMaterno` varchar(20) DEFAULT NULL,
  `Clinica` varchar(40) NOT NULL,
  PRIMARY KEY (`Clinica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeria`
--

DROP TABLE IF EXISTS `enfermeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermeria` (
  `RFC` varchar(20) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `ApPaterno` varchar(20) DEFAULT NULL,
  `ApMaterno` varchar(20) DEFAULT NULL,
  `Correo` varchar(60) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeria`
--

LOCK TABLES `enfermeria` WRITE;
/*!40000 ALTER TABLE `enfermeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfermeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `Expediente` varchar(20) DEFAULT NULL,
  `FechaCita` date NOT NULL,
  `Tipo_Cita` varchar(20) NOT NULL,
  `RFC_M` varchar(20) NOT NULL,
  `RFC_E` varchar(20) NOT NULL,
  `medicamento_1` varchar(40) DEFAULT NULL,
  `medicamento_2` varchar(40) DEFAULT NULL,
  `medicamento_3` varchar(40) DEFAULT NULL,
  `medicamento_4` varchar(40) DEFAULT NULL,
  `medicamento_5` varchar(40) DEFAULT NULL,
  KEY `MEDICAMENTO1` (`medicamento_1`),
  KEY `MEDICAMENTO2` (`medicamento_2`),
  KEY `MEDICAMENTO3` (`medicamento_3`),
  KEY `MEDICAMENTO4` (`medicamento_4`),
  KEY `MEDICAMENTO5` (`medicamento_5`),
  KEY `EXPEDIENTE1` (`Expediente`),
  KEY `RFCM` (`RFC_M`),
  KEY `RFCE` (`RFC_E`),
  CONSTRAINT `EXPEDIENTE1` FOREIGN KEY (`Expediente`) REFERENCES `paciente` (`Expediente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MEDICAMENTO1` FOREIGN KEY (`medicamento_1`) REFERENCES `medicamentos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MEDICAMENTO2` FOREIGN KEY (`medicamento_2`) REFERENCES `medicamentos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MEDICAMENTO3` FOREIGN KEY (`medicamento_3`) REFERENCES `medicamentos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MEDICAMENTO4` FOREIGN KEY (`medicamento_4`) REFERENCES `medicamentos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MEDICAMENTO5` FOREIGN KEY (`medicamento_5`) REFERENCES `medicamentos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RFCE` FOREIGN KEY (`RFC_E`) REFERENCES `enfermeria` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RFCM` FOREIGN KEY (`RFC_M`) REFERENCES `medico` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `Instrumento` varchar(10) DEFAULT NULL,
  `Medicamento` varchar(40) DEFAULT NULL,
  KEY `INSTRU` (`Instrumento`),
  KEY `MEDI` (`Medicamento`),
  CONSTRAINT `INSTRU` FOREIGN KEY (`Instrumento`) REFERENCES `material_cirugia` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MEDI` FOREIGN KEY (`Medicamento`) REFERENCES `medicamentos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_cirugia`
--

DROP TABLE IF EXISTS `material_cirugia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_cirugia` (
  `Nombre` varchar(45) NOT NULL,
  `Cantidad` int(3) NOT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_cirugia`
--

LOCK TABLES `material_cirugia` WRITE;
/*!40000 ALTER TABLE `material_cirugia` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_cirugia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamentos` (
  `nombre` varchar(40) NOT NULL,
  `Cantidad` int(4) NOT NULL,
  `Precio` float(6,3) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `RFC` varchar(20) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `ApPaterno` varchar(20) DEFAULT NULL,
  `ApMaterno` varchar(20) DEFAULT NULL,
  `Correo` varchar(60) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Clinica` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`RFC`),
  KEY `ClINI1` (`Clinica`),
  CONSTRAINT `ClINI1` FOREIGN KEY (`Clinica`) REFERENCES `director` (`Clinica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `Expediente` varchar(20) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `ApPaterno` varchar(20) DEFAULT NULL,
  `ApMaterno` varchar(20) DEFAULT NULL,
  `Correo` varchar(60) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Expediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-30 15:01:56
