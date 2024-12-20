-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 190.90.160.172    Database: credicel_db_Control_Habitos
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.20-MariaDB-cll-lve

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
-- Table structure for table `Actividad`
--

DROP TABLE IF EXISTS `Actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Actividad` (
  `id_Actividad` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Actividad` varchar(45) NOT NULL DEFAULT 'Sin Definir',
  `Categoria` varchar(45) NOT NULL DEFAULT 'Sin Definir',
  `Dficultad` varchar(45) NOT NULL DEFAULT 'Neutral',
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actividad`
--

LOCK TABLES `Actividad` WRITE;
/*!40000 ALTER TABLE `Actividad` DISABLE KEYS */;
INSERT INTO `Actividad` VALUES (1,'Leer un libro','Educación','Media','Leer al menos 30 minutos'),(2,'Correr','Salud','Alta','Correr 5 kilómetros'),(3,'Meditar','Relajación','Baja','Meditar por 15 minutos'),(4,'Escribir en diario','Auto-reflexión','Media','Escribir sobre el día'),(5,'Aprender un idioma','Educación','Alta','Practicar vocabulario'),(6,'Dibujar','Creatividad','Baja','Hacer un boceto rápido'),(7,'Cocinar algo nuevo','Hogar','Media','Intentar una nueva receta'),(8,'Organizar la habitación','Orden','Media','Ordenar el espacio personal'),(9,'Ejercicios de fuerza','Salud','Alta','Hacer una rutina de 30 minutos'),(10,'Practicar un instrumento','Habilidad','Alta','Practicar al menos 20 minutos');
/*!40000 ALTER TABLE `Actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cumplimiento`
--

DROP TABLE IF EXISTS `Cumplimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cumplimiento` (
  `id_Cumplimiento` int(11) NOT NULL AUTO_INCREMENT,
  `Estado` varchar(45) NOT NULL DEFAULT 'Inactivo',
  `Nivel_Satisfacción` varchar(45) NOT NULL,
  `id_Habitos` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_Cumplimiento`),
  KEY `fk_habitos` (`id_Habitos`),
  CONSTRAINT `fk_habitos` FOREIGN KEY (`id_Habitos`) REFERENCES `Habitos` (`id_Habitos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cumplimiento`
--

LOCK TABLES `Cumplimiento` WRITE;
/*!40000 ALTER TABLE `Cumplimiento` DISABLE KEYS */;
INSERT INTO `Cumplimiento` VALUES (1,'Completado','Alto',NULL),(2,'Pendiente','Medio',NULL),(3,'En Proceso','Bajo',NULL),(4,'Completado','Muy Alto',NULL),(5,'Pendiente','Bajo',NULL),(6,'En Proceso','Medio',NULL),(7,'Completado','Medio',NULL),(8,'Pendiente','Alto',NULL),(9,'En Proceso','Muy Bajo',NULL),(10,'Completado','Muy Alto',NULL);
/*!40000 ALTER TABLE `Cumplimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Habitos`
--

DROP TABLE IF EXISTS `Habitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Habitos` (
  `id_Habitos` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_Usuarios` int(10) unsigned DEFAULT NULL,
  `id_Actividad` int(10) unsigned DEFAULT NULL,
  `id_Horarios` int(10) unsigned DEFAULT NULL,
  `Frecuencia` varchar(50) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id_Habitos`),
  KEY `id_Usuarios` (`id_Usuarios`),
  KEY `id_Actividad` (`id_Actividad`),
  KEY `fk_horarios` (`id_Horarios`),
  CONSTRAINT `Habitos_ibfk_1` FOREIGN KEY (`id_Usuarios`) REFERENCES `Usuarios` (`id_Usuarios`),
  CONSTRAINT `Habitos_ibfk_2` FOREIGN KEY (`id_Actividad`) REFERENCES `Actividad` (`id_Actividad`),
  CONSTRAINT `fk_horario` FOREIGN KEY (`id_Horarios`) REFERENCES `Horarios` (`id_Horarios`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Habitos`
--

LOCK TABLES `Habitos` WRITE;
/*!40000 ALTER TABLE `Habitos` DISABLE KEYS */;
INSERT INTO `Habitos` VALUES (1,1,2,3,'Diaria','Correr todas las mañanas'),(3,2,1,4,'Semanal','Clase de yoga'),(4,3,3,1,'Mensual','Revisión médica'),(5,4,2,5,'Diaria','Caminata al atardecer'),(6,5,4,2,'Semanal','Taller de pintura'),(7,6,1,6,'Mensual','Visita al museo'),(8,7,5,3,'Diaria','Lectura matutina'),(9,8,3,7,'Semanal','Clase de natación'),(10,9,2,8,'Mensual','Reunión de planificación'),(11,10,4,9,'Diaria','Ejercicios de meditación');
/*!40000 ALTER TABLE `Habitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horarios`
--

DROP TABLE IF EXISTS `Horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Horarios` (
  `id_Horarios` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Dia_Semana` varchar(30) NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Finalizacion` time NOT NULL,
  PRIMARY KEY (`id_Horarios`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horarios`
--

LOCK TABLES `Horarios` WRITE;
/*!40000 ALTER TABLE `Horarios` DISABLE KEYS */;
INSERT INTO `Horarios` VALUES (1,'Lunes','08:00:00','10:00:00'),(2,'Lunes','14:00:00','16:00:00'),(3,'Martes','09:00:00','11:30:00'),(4,'Martes','15:00:00','17:00:00'),(5,'Miércoles','07:30:00','09:30:00'),(6,'Miércoles','13:00:00','15:00:00'),(7,'Jueves','08:00:00','10:00:00'),(8,'Jueves','14:30:00','16:30:00'),(9,'Viernes','09:00:00','11:00:00'),(10,'Viernes','15:00:00','17:00:00');
/*!40000 ALTER TABLE `Horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `id_Usuarios` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(45) NOT NULL,
  `Edad` int(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Fecha_Registro` date NOT NULL,
  `Genero` varchar(45) NOT NULL DEFAULT 'Indefinido',
  `Notas` varchar(45) NOT NULL DEFAULT 'Sin Comentarios',
  PRIMARY KEY (`id_Usuarios`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'JuanPerez',25,'juan.perez@email.com','2023-12-01','M','Usuario activo, prefiere notificaciones por e'),(2,'MariaLopez',30,'maria.lopez@email.com','2024-01-15','F','Interesada en cursos de idiomas.'),(3,'CarlosGarcia',27,'carlos.garcia@email.com','2024-03-10','M','Feedback positivo en encuestas.'),(4,'AnaSanchez',22,'ana.sanchez@email.com','2023-11-20','F','Nuevo usuario, registrado por referidos.'),(5,'LuisaMartinez',34,'luisa.martinez@email.com','2024-04-05','F','Prefiere recibir información por WhatsApp.'),(6,'DavidHernandez',29,'david.hernandez@email.com','2024-02-18','M','Compró suscripción premium.'),(7,'SofiaReyes',26,'sofia.reyes@email.com','2024-01-25','F','Participa activamente en foros.'),(8,'AndresTorres',32,'andres.torres@email.com','2024-03-12','M','Usuario interesado en soporte técnico.'),(9,'ClaudiaOrtiz',28,'claudia.ortiz@email.com','2024-02-28','F','Inscrita en programa de fidelidad.'),(10,'LuisRamirez',31,'luis.ramirez@email.com','2023-12-20','M','Solicitó cancelar cuenta recientemente.');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_listado_completo`
--

DROP TABLE IF EXISTS `v_listado_completo`;
/*!50001 DROP VIEW IF EXISTS `v_listado_completo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_listado_completo` AS SELECT 
 1 AS `id_Habitos`,
 1 AS `Nombre_Usuario`,
 1 AS `Nombre_Actividad`,
 1 AS `Hora_Inicio`,
 1 AS `Hora_Finalizacion`,
 1 AS `Frecuencia`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_listado_completo`
--

/*!50001 DROP VIEW IF EXISTS `v_listado_completo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_estudiantes_221024`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_listado_completo` AS select `Habitos`.`id_Habitos` AS `id_Habitos`,`Usuarios`.`Nombre_Usuario` AS `Nombre_Usuario`,`Actividad`.`Nombre_Actividad` AS `Nombre_Actividad`,`Horarios`.`Hora_Inicio` AS `Hora_Inicio`,`Horarios`.`Hora_Finalizacion` AS `Hora_Finalizacion`,ucase(`Habitos`.`Frecuencia`) AS `Frecuencia`,`Habitos`.`Descripcion` AS `Descripcion` from (((`Habitos` join `Usuarios` on(`Habitos`.`id_Usuarios` = `Usuarios`.`id_Usuarios`)) join `Actividad` on(`Habitos`.`id_Actividad` = `Actividad`.`id_Actividad`)) join `Horarios` on(`Habitos`.`id_Horarios` = `Horarios`.`id_Horarios`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-19 19:22:50
