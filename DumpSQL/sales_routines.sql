-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sales
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Temporary view structure for view `sales_amount_cleaning`
--

DROP TABLE IF EXISTS `sales_amount_cleaning`;
/*!50001 DROP VIEW IF EXISTS `sales_amount_cleaning`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_amount_cleaning` AS SELECT 
 1 AS `product_code`,
 1 AS `customer_code`,
 1 AS `market_code`,
 1 AS `order_date`,
 1 AS `sales_qty`,
 1 AS `sales_amount`,
 1 AS `currency`,
 1 AS `normalized_sales_amount`,
 1 AS `updated_currency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `market_cleaned`
--

DROP TABLE IF EXISTS `market_cleaned`;
/*!50001 DROP VIEW IF EXISTS `market_cleaned`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `market_cleaned` AS SELECT 
 1 AS `product_code`,
 1 AS `customer_code`,
 1 AS `market_code`,
 1 AS `order_date`,
 1 AS `sales_qty`,
 1 AS `sales_amount`,
 1 AS `currency`,
 1 AS `normalized_sales_amount`,
 1 AS `updated_currency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `sales_amount_cleaning`
--

/*!50001 DROP VIEW IF EXISTS `sales_amount_cleaning`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_amount_cleaning` AS select `transactions`.`product_code` AS `product_code`,`transactions`.`customer_code` AS `customer_code`,`transactions`.`market_code` AS `market_code`,`transactions`.`order_date` AS `order_date`,`transactions`.`sales_qty` AS `sales_qty`,`transactions`.`sales_amount` AS `sales_amount`,`transactions`.`currency` AS `currency`,(case `transactions`.`currency` when 'INR' then `transactions`.`sales_amount` when 'USD' then (`transactions`.`sales_amount` * 82) when 'USD\r' then (`transactions`.`sales_amount` * 82) else `transactions`.`sales_amount` end) AS `normalized_sales_amount`,(case `transactions`.`currency` when 'INR\r' then 'INR' when 'USD' then 'INR' when 'USD\r' then 'INR' else `transactions`.`currency` end) AS `updated_currency` from `transactions` where ((`transactions`.`sales_amount` <> -(1)) and (`transactions`.`sales_amount` <> 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `market_cleaned`
--

/*!50001 DROP VIEW IF EXISTS `market_cleaned`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `market_cleaned` AS select `transactions`.`product_code` AS `product_code`,`transactions`.`customer_code` AS `customer_code`,`transactions`.`market_code` AS `market_code`,`transactions`.`order_date` AS `order_date`,`transactions`.`sales_qty` AS `sales_qty`,`transactions`.`sales_amount` AS `sales_amount`,`transactions`.`currency` AS `currency`,(case `transactions`.`currency` when 'INR' then `transactions`.`sales_amount` when 'USD' then (`transactions`.`sales_amount` * 82) when 'USD\r' then (`transactions`.`sales_amount` * 82) else `transactions`.`sales_amount` end) AS `normalized_sales_amount`,(case `transactions`.`currency` when 'INR\r' then 'INR' when 'USD' then 'INR' when 'USD\r' then 'INR' else `transactions`.`currency` end) AS `updated_currency` from `transactions` where ((`transactions`.`sales_amount` <> -(1)) and (`transactions`.`sales_amount` <> 0)) */;
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

-- Dump completed on 2023-05-18  8:19:29
