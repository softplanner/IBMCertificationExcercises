-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: MedicalRecordsDB
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `medical_dept`
--

DROP TABLE IF EXISTS `medical_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_dept` (
  `DEPT_ID` char(9) NOT NULL,
  `DEPT_NAME` varchar(50) DEFAULT NULL,
  `MANAGER_ID` char(9) DEFAULT NULL,
  `LOCATION_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_dept`
--

LOCK TABLES `medical_dept` WRITE;
/*!40000 ALTER TABLE `medical_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_history`
--

DROP TABLE IF EXISTS `medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_history` (
  `MEDICAL_HISTORY_ID` char(9) NOT NULL,
  `PATIENT_HISTORY_ID` char(9) NOT NULL,
  `DIAGNOSIS_DATE` date DEFAULT NULL,
  `DISGNOSIS_CODE` varchar(10) DEFAULT NULL,
  `MEDICAL_CONDITION` varchar(100) DEFAULT NULL,
  `DEPT_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`MEDICAL_HISTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_locations`
--

DROP TABLE IF EXISTS `medical_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_locations` (
  `LOCATION_ID` char(9) NOT NULL,
  `DEPT_ID` char(9) NOT NULL,
  `LOCATION_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`,`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_locations`
--

LOCK TABLES `medical_locations` WRITE;
/*!40000 ALTER TABLE `medical_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_procedure`
--

DROP TABLE IF EXISTS `medical_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_procedure` (
  `PROCEDURE_ID` char(9) NOT NULL,
  `PROCEDURE_NAME` varchar(50) DEFAULT NULL,
  `PROCEDURE_DATE` date DEFAULT NULL,
  `PATIENT_ID` char(9) DEFAULT NULL,
  `DEPT_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`PROCEDURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_procedure`
--

LOCK TABLES `medical_procedure` WRITE;
/*!40000 ALTER TABLE `medical_procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PATIENT_ID` char(9) NOT NULL,
  `FIRST_NAME` varchar(15) DEFAULT NULL,
  `LAST_NAME` varchar(15) DEFAULT NULL,
  `SSN` char(9) DEFAULT NULL,
  `BIRTH_DATE` date DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `DEPT_ID` char(9) NOT NULL,
  PRIMARY KEY (`PATIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27  6:40:08
