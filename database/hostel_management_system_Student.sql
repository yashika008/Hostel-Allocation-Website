--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(10) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`Student_id`),
  KEY `Hostel_id` (`Hostel_id`),
  KEY `Room_id` (`Room_id`),
  CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`),
  CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `Room` (`Room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;

INSERT INTO `Student` VALUES ('B160497CS','Prajwal','Ghoradkar','09757318791','CSE','3','$2y$10$hGFfPexHXi.Ec.WVp3qK4.RG8yajZeO31LQ/aOeF6iRU9fk3IFrkq',NULL,NULL);

UNLOCK TABLES;

