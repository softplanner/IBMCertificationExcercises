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
-- Table structure for table `medical_departments`
--

DROP TABLE IF EXISTS `medical_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_departments` (
  `DEPT_ID` char(9) NOT NULL,
  `DEPT_NAME` varchar(50) DEFAULT NULL,
  `MANAGER_ID` char(9) DEFAULT NULL,
  `LOCATION_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_departments`
--

LOCK TABLES `medical_departments` WRITE;
/*!40000 ALTER TABLE `medical_departments` DISABLE KEYS */;
INSERT INTO `medical_departments` VALUES ('D001','Cardiology',NULL,'L001'),('D002','Internal Medicine',NULL,'L002'),('D003','Cardiothoracic Surgery',NULL,'L001'),('D004','Electrophysiology',NULL,'L002');
/*!40000 ALTER TABLE `medical_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_history`
--

DROP TABLE IF EXISTS `medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_history` (
  `MEDICAL_HISTORY_ID` char(9) NOT NULL,
  `PATIENT_ID` char(9) NOT NULL,
  `DIAGNOSIS_DATE` date DEFAULT NULL,
  `DIAGNOSIS_CODE` varchar(10) DEFAULT NULL,
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
INSERT INTO `medical_history` VALUES ('MH001','P001','2022-12-10','I20.0','Coronary Artery Disease','D001'),('MH002','P001','2023-07-30','I25.10','Hypertensive Heart Disease','D002'),('MH003','P002','2023-08-01','I25.10','Hypertensive Heart Disease','D002'),('MH004','P003','2023-08-01','I20.9','Unstable Angina','D003'),('MH005','P004','2023-08-01','I25.5','Ischemic Cardiomyopathy','D004'),('MH006','P005','2023-08-02','I50.9','HeartFailure, Unspecified','D003');
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
INSERT INTO `medical_locations` VALUES ('L001','D001','City Hospital'),('L002','D002','Medical Center');
/*!40000 ALTER TABLE `medical_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_procedures`
--

DROP TABLE IF EXISTS `medical_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_procedures` (
  `PROCEDURE_ID` char(9) NOT NULL,
  `PROCEDURE_NAME` varchar(50) DEFAULT NULL,
  `PROCEDURE_DATE` date DEFAULT NULL,
  `PATIENT_ID` char(9) DEFAULT NULL,
  `DEPT_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`PROCEDURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_procedures`
--

LOCK TABLES `medical_procedures` WRITE;
/*!40000 ALTER TABLE `medical_procedures` DISABLE KEYS */;
INSERT INTO `medical_procedures` VALUES ('PR001','Angioplasty','2023-07-30','P001','D002'),('PR002','Cardiac Catheterization','2023-08-01','P002','D002'),('PR003','Electrocardiogram','2023-08-02','P003','D003'),('PR004','Echocardiogram','2023-08-03','P004','D004'),('PR005','Stress Test','2023-08-03','P005','D003'),('PR006','Coronary Angiogram','2023-08-04','P003','D003'),('PR007','Pacemaker Implantation','2023-08-04','P005','D003');
/*!40000 ALTER TABLE `medical_procedures` ENABLE KEYS */;
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
INSERT INTO `patient` VALUES ('P001','John','Doe','123456789','1990-05-15','M','123 Main St','D001'),('P002','Jane','Smith','987654321','1985-10-20','F','456 Oak Ave','D002'),('P003','Michael','Johnson','111222333','1975-03-12','M','789 Elm St','D003'),('P004','Emily','Brown','444555666','1980-09-25','F','321 Pine Rd','D004'),('P005','William','Miller','777888999','1992-11-18','M','567 Maple Ave','D003');
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

-- Dump completed on 2025-03-27  7:34:51
