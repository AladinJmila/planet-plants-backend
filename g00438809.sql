-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: g00438809
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `quantity_in_stock` int NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` decimal(3,1) DEFAULT '0.0',
  `image_url` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `height` varchar(50) DEFAULT NULL,
  `light_requirements` varchar(255) DEFAULT NULL,
  `care_difficulty` varchar(50) DEFAULT NULL,
  `indoor` tinyint(1) DEFAULT NULL,
  `outdoor` tinyint(1) DEFAULT NULL,
  `air_purifying` tinyint(1) DEFAULT NULL,
  `pet_friendly` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Monstera Deliciosa',15,'The Monstera Deliciosa, also known as the Swiss Cheese Plant, is a popular tropical houseplant with large, glossy leaves that develop iconic splits and holes as they mature.',25.00,3.5,'/images/_29b94ca3-a839-4192-b69c-d516b853f015.jpg','Tropical','Medium (2-3 feet)','Bright, indirect light','Easy',1,0,1,0),(2,'Tradescantia zebrina (Wandering Jew)',20,'Tradescantia zebrina, also known as Wandering Jew or Inch Plant, is a vibrant and fast-growing trailing plant with striking purple and silver striped leaves. It thrives in bright indirect light and requires regular watering to keep its soil evenly moist.',22.00,3.5,'/images/_49c95c5c-2477-4aee-a18c-65051f33d59b.jpg','Trailing Plants','Medium (6-12 inches)','Bright indirect light','Easy',1,0,1,1),(3,'Fiddle Leaf Fig',8,'The Fiddle Leaf Fig is a popular indoor tree with large, glossy fiddle-shaped leaves. It makes a striking statement as a focal point in any room and prefers bright, indirect light.',45.00,4.0,'/images/_bb6ce6d8-c399-4f48-a284-b7ee68ae9272.jpg','Tree','Medium to Tall (3-6 feet)','Bright, indirect light','Moderate',1,0,1,0),(4,'Caladium (Caladium bicolor)',15,'Caladium, particularly Caladium bicolor varieties, are tropical plants prized for their colorful and uniquely patterned arrow-shaped leaves. They thrive in indirect light and require consistently moist soil to maintain their vibrant appearance.',20.00,3.0,'/images/_5087f0a1-2149-479a-b67c-9be23d416f60.jpg','Tropical Foliage','Medium (12-18 inches)','Indirect light','Moderate',1,0,1,0),(5,'String of Pearls',12,'The String of Pearls is a unique and eye-catching succulent with trailing stems adorned with spherical, bead-like leaves. It\'s an ideal choice for hanging baskets or elevated planters.',20.00,5.0,'/images/_660d0190-e87c-4187-8f78-5f8da4d6c222.jpg','Succulent','Trailing (up to 1-2 feet)','Bright, indirect light','Moderate',1,0,1,1),(6,'Epipremnum aureum (Golden Pothos)',20,'Epipremnum aureum, also known as Golden Pothos or Devil\'s Ivy, is a popular and versatile indoor plant with heart-shaped, glossy leaves marbled in green and yellow. It\'s easy to care for and can thrive in various light conditions.',18.00,2.5,'/images/_ddecc805-894e-427e-ad50-860c67d0d43e.jpg','Trailing Plants','Trailing (up to 6 feet)','Low to bright indirect light','Easy',1,0,1,1),(7,'Fittonia spp. (Nerve Plant)',15,'Fittonia spp., also known as Nerve plants, are eye-catching indoor plants with vibrant, veined leaves that come in various colors like green, pink, and red. They thrive in medium to bright indirect light and require consistently moist soil to stay healthy.',18.00,4.5,'/images/_4c4fb6dd-4e5d-4a3e-9853-1762f30be34a.jpg','Small Plants','Low (6-12 inches)','Medium to bright indirect light','Moderate',1,0,1,1),(8,'Calathea Orbifolia',7,'The Calathea Orbifolia is a stunning indoor plant known for its large, round leaves with silver-green stripes. It\'s prized for its decorative foliage and prefers bright, indirect light.',25.00,4.0,'/images/_3a1135a4-30fa-49af-a9eb-f75079249f7b.jpg','Decorative Foliage','Medium (1-2 feet)','Bright, indirect light','Moderate',1,0,1,0),(9,'Pilea Peperomioides',10,'The Pilea Peperomioides, also known as the Chinese Money Plant or Pancake Plant, is a charming and easy-to-care-for indoor plant characterized by its round, coin-shaped leaves on upright stems.',12.00,3.5,'/images/_660b30c5-742b-4046-9779-97ec7be3466a.jpg','Small Plants','Small (6-12 inches)','Bright, indirect light','Easy',1,0,1,1),(10,'Strelitzia reginae (Bird of Paradise)',5,'Strelitzia reginae, also known as Bird of Paradise, is a stunning tropical plant with large, banana-like leaves and striking orange and blue bird-shaped flowers. It thrives in bright indirect light and requires regular watering to keep its soil evenly moist during the growing season.',45.00,2.5,'/images/_ba23f0cd-5a98-48cf-a9f4-567a9e553645.jpg','Tropical Plants','Large (4-6 feet)','Bright indirect light','Moderate',1,0,1,0),(11,'Calathea spp. (Calathea varieties)',12,'Calathea spp., including varieties like Calathea orbifolia and Calathea medallion, are beautiful and unique indoor plants known for their ornate and colorful foliage patterns. These plants prefer bright, indirect light and moderate humidity.',30.00,4.0,'/images/_39b2dea7-f8ce-4b63-83f3-5d53f7c77eaf.jpg','Decorative Foliage','Small to Medium (1-2 feet)','Bright, indirect light','Moderate',1,0,1,0),(12,'Philodendron spp. (Various Types)',18,'Philodendron spp., including varieties like Philodendron Brasil and Philodendron Micans, are versatile and attractive indoor plants known for their lush foliage and easy-care nature. These plants thrive in medium to bright indirect light and are perfect for adding greenery to any space.',20.00,5.0,'/images/_266c55cb-c99a-4654-acbf-4ba5c63f085a.jpg','Trailing Plants','Trailing (up to 4 feet)','Medium to bright indirect light','Easy',1,0,1,0),(13,'Spider Plant (Chlorophytum comosum)',25,'The Spider Plant, scientifically known as Chlorophytum comosum, is a popular and easy-to-care-for indoor plant characterized by its arching, narrow leaves with white variegation. It\'s known for its air-purifying properties and ability to produce \'spiderettes\' or baby plants on long, wiry stems.',15.00,4.0,'/images/_75a93335-aac8-46f2-9cfe-be6efdf5774b.jpg','Trailing Plants','Trailing (up to 2 feet)','Moderate to bright indirect light','Easy',1,0,1,1),(14,'Alocasia amazonica',15,'Alocasia amazonica, also known as African Mask Plant, is a stunning indoor plant featuring large, arrow-shaped leaves with prominent veins and striking dark green foliage contrasted by silver-white veins. It thrives in bright, indirect light and adds a dramatic touch to any indoor space.',40.00,3.5,'/images/_8a6a2f3a-3cb0-4d5a-94d7-53cd14c3dbbe.jpg','Large Plants','Tall (2-3 feet)','Bright, indirect light','Moderate',1,0,1,0),(15,'Maranta leuconeura (Prayer Plant)',20,'Maranta leuconeura, also known as the Prayer Plant, is a captivating indoor plant with unique, patterned leaves that fold upward in the evening resembling hands in prayer. It thrives in low to moderate indirect light and requires consistent moisture.',25.00,3.5,'/images/_38b2bc57-7824-4cde-a0ee-bde7c6ea7dd4.jpg','Decorative Foliage','Medium (1-2 feet)','Low to moderate indirect light','Moderate',1,0,1,1),(16,'Pothos (Epipremnum aureum varieties)',25,'Pothos (Epipremnum aureum) is a versatile and popular indoor plant known for its trailing vines and easy care. Varieties like Marble Queen and Neon feature variegated leaves that add color and interest to any space. Pothos plants thrive in low to moderate indirect light and require minimal maintenance.',18.00,4.0,'/images/_2997f804-a24b-4b6c-8eb9-87a8edfaf148.jpg','Trailing Plants','Trailing (up to 6 feet)','Low to moderate indirect light','Easy',1,0,1,0),(17,'Hoya carnosa (Wax Plant)',15,'Hoya carnosa, also known as the Wax Plant or Hindu Rope Plant, is a beautiful and unique indoor plant prized for its waxy, succulent leaves and clusters of star-shaped flowers. It thrives in bright indirect light and requires minimal care, making it an ideal choice for any indoor setting.',30.00,3.5,'/images/_ba5b5709-3a51-408e-bca8-7f7a23d462e1.jpg','Succulents','Medium (1-2 feet)','Bright indirect light','Easy',1,0,1,0),(18,'Peperomia obtusifolia (Baby Rubber Plant)',15,'Peperomia obtusifolia, also known as the Baby Rubber Plant, is a compact and attractive indoor plant with glossy, rounded leaves that have a rubbery texture. It\'s easy to care for and thrives in moderate indoor light conditions, making it a perfect choice for tabletops or shelves.',20.00,3.5,'/images/_aa79d1a7-3050-49c1-b999-83c3d0f058b9.jpg','Small Plants','Small (6-12 inches)','Moderate indoor light','Easy',1,0,1,1),(19,'Anthurium (Flamingo Flower)',12,'Anthurium, also known as Flamingo Flower or Laceleaf, is a stunning tropical plant prized for its glossy, heart-shaped leaves and vibrant, long-lasting flowers. It thrives in bright indirect light and requires regular watering to keep its soil consistently moist.',35.00,3.5,'/images/_20997485-1f14-49b9-98fd-bbaa17f6c95d.jpg','Flowering Plants','Medium (1-2 feet)','Bright indirect light','Moderate',1,0,1,0),(20,'Dracaena marginata (Dragon Tree)',15,'Dracaena marginata, also known as the Dragon Tree, is a striking indoor plant with thin, upright stems and narrow, sword-shaped leaves that have a reddish edge. It\'s an excellent air-purifying plant and can thrive in various light conditions.',25.00,4.0,'/images/_6a7021c9-1c89-41db-99e3-7b5014fc6e15.jpg','Tall Plants','Tall (3-6 feet)','Moderate to bright indirect light','Moderate',1,0,1,0),(21,'Begonia rex (Rex Begonia)',10,'Begonia rex, also known as Rex Begonia, is a striking and colorful indoor plant prized for its ornamental foliage. It features large, textured leaves with intricate patterns in shades of green, silver, pink, and burgundy. Rex Begonias thrive in bright indirect light and require consistently moist soil.',30.00,4.0,'/images/_b64a80f4-3a08-45ab-8da6-b8244c914bee.jpg','Decorative Foliage','Medium (8-12 inches)','Bright indirect light','Moderate',1,0,1,0),(22,'Aspidistra elatior (Cast Iron Plant)',8,'Aspidistra elatior, also known as the Cast Iron Plant, is a hardy and low-maintenance indoor plant with dark green, leathery leaves. It\'s well-suited for low-light conditions and can tolerate neglect, earning its nickname as the \'Cast Iron\' plant. Perfect for adding greenery to dim corners.',25.00,3.5,'/images/_69f3daff-a412-4eb8-aea4-86c89674a614.jpg','Low-Light Plants','Medium (12-24 inches)','Low to moderate indirect light','Easy',1,0,1,1),(23,'Aloe Vera',15,'Aloe Vera is a popular succulent known for its medicinal properties. It has thick, fleshy leaves that contain a gel with various health benefits.',10.00,5.0,'/images/_1a16d159-4cf5-4c7a-9291-bf8772482b23.jpg','Succulent','Small to Medium (1-2 feet)','Bright, indirect light','Easy',1,1,1,1),(24,'Parlor Palm',12,'The Parlor Palm, also known as Chamaedorea elegans, is a classic indoor palm plant with feathery, arching fronds. It\'s well-suited for low light conditions and adds a tropical touch to any space.',30.00,4.5,'/images/_190d30ce-4f0a-49db-8637-dd1e0dc156f5.jpg','Palm','Medium (2-4 feet)','Low to moderate indirect light','Easy',1,0,1,1),(25,'Tradescantia spathacea (Moses-in-the-cradle)',12,'Tradescantia spathacea, also known as Moses-in-the-cradle or Boat Lily, is an attractive and low-maintenance tropical plant with glossy, dark green leaves and contrasting purple undersides. It produces small white flowers nestled in boat-shaped bracts. This plant thrives in bright indirect light and requires regular watering.',22.00,5.0,'/images/_58f6530b-0482-41f1-a9b3-3e7701f7dc51.jpg','Tropical Foliage','Medium (12-18 inches)','Bright indirect light','Easy',1,0,1,1),(26,'Syngonium podophyllum (Arrowhead Plant)',20,'Syngonium podophyllum, also known as Arrowhead Plant or Arrowhead Vine, is a versatile and easy-to-care-for indoor plant with arrow-shaped leaves that vary in color and pattern. It thrives in indirect light and prefers consistently moist soil. This plant is perfect for hanging baskets or as a trailing plant.',18.00,3.5,'/images/_86ce692c-f269-4fc1-bfb1-ac6b754f8219.jpg','Trailing Plants','Medium (12-18 inches)','Indirect light','Easy',1,0,1,1),(27,'Snake Plant',20,'The Snake Plant, also known as Sansevieria, is a hardy and low-maintenance indoor plant with upright, sword-like leaves. It thrives in various light conditions and is known for its air-purifying properties.',15.00,5.5,'/images/_db6e0d44-7efe-4568-9dce-dd83ef3fa025.jpg','Low Maintenance','Small to Medium (1-3 feet)','Low to bright indirect light','Very Easy',1,0,1,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_similar_products`
--

DROP TABLE IF EXISTS `products_similar_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_similar_products` (
  `product_id` int NOT NULL,
  `similar_product_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`similar_product_id`),
  KEY `similar_product_id` (`similar_product_id`),
  CONSTRAINT `products_similar_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `products_similar_products_ibfk_2` FOREIGN KEY (`similar_product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_similar_products`
--

LOCK TABLES `products_similar_products` WRITE;
/*!40000 ALTER TABLE `products_similar_products` DISABLE KEYS */;
INSERT INTO `products_similar_products` VALUES (3,1),(6,2),(8,2),(19,2),(22,3),(2,4),(12,4),(23,4),(3,6),(26,6),(27,6),(1,7),(6,7),(7,7),(20,7),(25,7),(5,8),(20,9),(11,10),(25,10),(5,11),(17,11),(4,12),(19,12),(23,12),(9,13),(10,14),(12,14),(15,14),(22,15),(2,16),(11,16),(14,16),(24,16),(17,17),(21,17),(13,18),(18,18),(21,18),(4,19),(15,19),(16,19),(27,20),(1,21),(18,21),(10,22),(8,24),(7,25),(13,25),(14,25),(9,27),(16,27),(24,27),(26,27);
/*!40000 ALTER TABLE `products_similar_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `rating` smallint NOT NULL,
  `comment` text,
  `product_id` int NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'PlantLover23',4,'Beautiful plant, easy to care for. Thriving in my living room!',1),(2,'Greenthumb99',3,'Absolutely love my Monstera! It\'s a showstopper in my home.',1),(3,'PlantLover789',5,'My Wandering Jew is thriving and trailing beautifully!',2),(4,'GardenEnthusiast456',2,'Lovely addition to my indoor plant collection. Very easy to care for.',2),(5,'PlantLover2022',5,'My Fiddle Leaf Fig is gorgeous! It brings life to my living room.',3),(6,'GardenEnthusiast',3,'Love the look of this plant, but it requires consistent care.',3),(7,'TropicalPlantLover',4,'My Caladiums are stunning! Love the vibrant colors.',4),(8,'GardenEnthusiast456',2,'Beautiful addition to my indoor jungle. Requires a bit of attention but worth it.',4),(9,'PlantEnthusiast88',5,'Absolutely adore my String of Pearls! It\'s thriving and looks stunning in my apartment.',5),(10,'GreenThumb22',5,'Love the unique appearance of this plant. Requires occasional attention but worth it!',5),(11,'PlantLover101',3,'My Golden Pothos is thriving with minimal care! It\'s perfect for beginners.',6),(12,'GardenGuru55',2,'Lovely addition to my indoor garden. The variegated leaves are beautiful.',6),(13,'PlantLover789',5,'My Fittonia Nerve Plant is thriving! Love the vibrant colors.',7),(14,'GardenEnthusiast456',4,'Beautiful addition to my indoor garden. Requires a bit of attention but worth it.',7),(15,'PlantLover456',4,'My Calathea Orbifolia is a showstopper! I love the unique leaf patterns.',8),(16,'GardeningGuru',4,'Beautiful plant but requires consistent care. Worth the effort for its beauty.',8),(17,'PlantEnthusiast55',4,'Love my Pilea! It\'s adorable and requires minimal care.',9),(18,'GardenLover123',3,'Great addition to my plant collection. Thrives on my windowsill.',9),(19,'TropicalPlantFanatic',3,'My Bird of Paradise is a showstopper! Absolutely love the vibrant flowers.',10),(20,'GardenEnthusiast456',2,'Beautiful addition to my indoor garden. Requires a bit of attention but worth it for the stunning blooms.',10),(21,'PlantLover22',5,'Absolutely adore my Calathea orbifolia! The leaf patterns are mesmerizing.',11),(22,'GardenEnthusiast99',3,'Love the Calathea medallion in my home. Requires a bit of care but worth it for its beauty.',11),(23,'PlantLover33',5,'I adore my Philodendron Micans! It\'s thriving on my bookshelf.',12),(24,'GardenEnthusiast456',5,'Philodendron Brasil is a great addition to my indoor garden. Low maintenance and looks stunning.',12),(25,'PlantEnthusiast123',5,'Love my Spider Plant! It\'s thriving on my windowsill and producing baby plants.',13),(26,'GardenLover456',3,'Great addition to my indoor garden. Very low maintenance and looks beautiful.',13),(27,'PlantEnthusiast789',5,'Absolutely love my Alocasia amazonica! It\'s a showstopper in my living room.',14),(28,'GardenGuru123',2,'Beautiful plant but requires regular care. Worth it for its unique foliage.',14),(29,'PlantLover456',5,'Absolutely love my Prayer Plant! The leaf movement is mesmerizing.',15),(30,'GardenEnthusiast789',2,'Beautiful plant but requires a bit of attention. Worth it for its unique charm.',15),(31,'PlantLover123',5,'Absolutely love my Marble Queen Pothos! It\'s thriving on my shelf.',16),(32,'GardenEnthusiast456',3,'Neon Pothos is a bright addition to my indoor jungle. Requires very little attention.',16),(33,'PlantEnthusiast123',3,'My Wax Plant is thriving! Love the unique flowers it produces.',17),(34,'GardenLover456',4,'Beautiful addition to my succulent collection. Very low maintenance.',17),(35,'PlantLover789',5,'Love my Baby Rubber Plant! It\'s thriving on my desk.',18),(36,'GardenEnthusiast456',2,'Beautiful addition to my indoor garden. Very low maintenance.',18),(37,'PlantLover789',5,'My Anthurium is a showstopper! Love the glossy leaves and stunning flowers.',19),(38,'GardenEnthusiast456',2,'Beautiful addition to my indoor plant collection. Requires a bit of attention but worth it.',19),(39,'PlantEnthusiast77',5,'Absolutely love my Dragon Tree! It\'s a beautiful statement plant.',20),(40,'GardeningFanatic123',3,'Gorgeous plant but requires some attention. Worth it for its unique appearance.',20),(41,'PlantEnthusiast123',5,'My Rex Begonia is absolutely stunning! Love the vibrant colors.',21),(42,'GardenLover456',3,'Beautiful addition to my indoor garden. Requires a bit of attention but worth it.',21),(43,'PlantLover789',3,'My Cast Iron Plant is thriving in a dark corner!',22),(44,'GardenEnthusiast456',4,'Great addition to my low-light plant collection. Requires very little care.',22),(45,'NatureLover99',5,'Love my Aloe Vera! I use the gel for sunburn relief and it\'s thriving indoors.',23),(46,'PlantEnthusiast123',5,'Great addition to my plant collection. Low maintenance and useful for skincare.',23),(47,'PlantLover456',5,'Absolutely love my Parlor Palm! It\'s thriving in my living room.',24),(48,'GardeningEnthusiast',4,'Great addition to my indoor garden. Low maintenance and looks beautiful.',24),(49,'TropicalPlantEnthusiast',5,'Love my Moses-in-the-cradle! It\'s thriving in my living room.',25),(50,'GardenGuru123',5,'Beautiful addition to my indoor garden. Requires minimal care.',25),(51,'IndoorPlantLover',3,'My Arrowhead Plant is thriving and looks beautiful!',26),(52,'GardenEnthusiast456',4,'Lovely addition to my indoor jungle. Requires minimal care.',26),(53,'PlantLover123',5,'My Snake Plant is thriving even with minimal care. Highly recommend!',27),(54,'GardenEnthusiast22',6,'Love the sleek look of this plant. Perfect for my office space.',27);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user','pass');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 19:32:18
