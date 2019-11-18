-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: Localhost    Database: quanlynhatro
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TenDem` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Ten` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Sdt` varchar(12) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Nguyen','Van','Hoang',NULL,'Quan Thu Duc','0344972256','123456789');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminname`
--

DROP TABLE IF EXISTS `adminname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminname` (
  `idAdminName` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`idAdminName`,`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminname`
--

LOCK TABLES `adminname` WRITE;
/*!40000 ALTER TABLE `adminname` DISABLE KEYS */;
INSERT INTO `adminname` VALUES (1,1,'admin','1234567'),(2,2,'admin2','123456789'),(2,3,'admin3','1234567890');
/*!40000 ALTER TABLE `adminname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binhluan` (
  `idBinhLuan` int(11) NOT NULL,
  `IdNguoiDung` int(11) DEFAULT NULL,
  `idNhaTro` varchar(45) DEFAULT NULL,
  `noidung` longtext,
  PRIMARY KEY (`idBinhLuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binhluan`
--

LOCK TABLES `binhluan` WRITE;
/*!40000 ALTER TABLE `binhluan` DISABLE KEYS */;
/*!40000 ALTER TABLE `binhluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bl_nguoidung`
--

DROP TABLE IF EXISTS `bl_nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bl_nguoidung` (
  `idBL_NguoiDung` int(11) NOT NULL,
  `idBinhLuan` int(11) DEFAULT NULL,
  `idNguoiDung` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBL_NguoiDung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bl_nguoidung`
--

LOCK TABLES `bl_nguoidung` WRITE;
/*!40000 ALTER TABLE `bl_nguoidung` DISABLE KEYS */;
/*!40000 ALTER TABLE `bl_nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bl_nhatro`
--

DROP TABLE IF EXISTS `bl_nhatro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bl_nhatro` (
  `idBL_NhaTro` int(11) NOT NULL,
  `idBinhLuan` int(11) DEFAULT NULL,
  `idNhaTro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBL_NhaTro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bl_nhatro`
--

LOCK TABLES `bl_nhatro` WRITE;
/*!40000 ALTER TABLE `bl_nhatro` DISABLE KEYS */;
/*!40000 ALTER TABLE `bl_nhatro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duong`
--

DROP TABLE IF EXISTS `duong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duong` (
  `idDuong` int(11) NOT NULL,
  `TenDuong` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idDuong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duong`
--

LOCK TABLES `duong` WRITE;
/*!40000 ALTER TABLE `duong` DISABLE KEYS */;
INSERT INTO `duong` VALUES (1,'Hai Bà Trưng'),(2,'Trần Hưng Đạo'),(3,'Bà Huyện Thanh Quan'),(4,'Võ Văn Ngân'),(5,'Lê Văn Việt');
/*!40000 ALTER TABLE `duong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `idImage` int(11) NOT NULL,
  `ImageTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ImageHinh` longtext,
  `idNhatro` int(11) NOT NULL,
  PRIMARY KEY (`idImage`,`idNhatro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'abc','https://149363812.v2.pressablecdn.com/wp-content/uploads/2019/02/tim-thue-phong-tro-cong-nhan-gia-re-gan-khu-cong-nghiep-quan-binh-tan-binh-chanh-cu-chi-anh-1-768x512.jpg',1),(2,'abcd','https://taxitaisaigon.vn/upload/files/baiviet/tim-nha-tro-o-dau-sai-gon.jpg',2),(3,'nha','https://taxitaisaigon.vn/upload/files/baiviet/chuyen-nha-tro-co-gac.jpg',3);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung` (
  `idNguoiDung` int(11) NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ten` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` longtext,
  `sodt` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idNguoiDung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		\n\n\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhatro`
--

DROP TABLE IF EXISTS `nhatro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhatro` (
  `idNhaTro` int(11) NOT NULL,
  `TenChuTro` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Sdt` varchar(12) NOT NULL,
  `idQuan` int(11) NOT NULL,
  `idThanhPho` int(11) NOT NULL,
  `idDuong` int(11) NOT NULL,
  `localX` double DEFAULT NULL,
  `localY` double DEFAULT NULL,
  `idImage` int(11) DEFAULT NULL,
  `gia` double DEFAULT NULL,
  `dientich` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idNhaTro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhatro`
--

LOCK TABLES `nhatro` WRITE;
/*!40000 ALTER TABLE `nhatro` DISABLE KEYS */;
INSERT INTO `nhatro` VALUES (1,'Cô Dung','0345627389',1,1,1,NULL,NULL,NULL,3000000,26,NULL),(2,'Chú Dũng','0475628262',1,1,1,NULL,NULL,NULL,2400000,20,NULL),(3,'Chú Trường','0347628162',1,1,1,NULL,NULL,NULL,3500000,32,NULL),(4,'Anh Khang','0912847167',1,1,1,NULL,NULL,NULL,1800000,15,NULL);
/*!40000 ALTER TABLE `nhatro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quan`
--

DROP TABLE IF EXISTS `quan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quan` (
  `idQuan` int(11) NOT NULL,
  `IdDuong` int(11) NOT NULL,
  `TenQuan` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idQuan`,`IdDuong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quan`
--

LOCK TABLES `quan` WRITE;
/*!40000 ALTER TABLE `quan` DISABLE KEYS */;
INSERT INTO `quan` VALUES (1,1,'Quận 1'),(1,2,'Quận 1'),(1,3,'Quận 1'),(9,5,'Quận 9'),(13,4,'Quận Thủ Đức');
/*!40000 ALTER TABLE `quan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanhpho`
--

DROP TABLE IF EXISTS `thanhpho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanhpho` (
  `idThanhPho` int(11) NOT NULL,
  `IdQuan` int(11) NOT NULL,
  `TenTP` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idThanhPho`,`IdQuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanhpho`
--

LOCK TABLES `thanhpho` WRITE;
/*!40000 ALTER TABLE `thanhpho` DISABLE KEYS */;
INSERT INTO `thanhpho` VALUES (1,1,'TP.HCM'),(1,9,'TP.HCM'),(1,13,'TP.HCM');
/*!40000 ALTER TABLE `thanhpho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-18 11:49:51
