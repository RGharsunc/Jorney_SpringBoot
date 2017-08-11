/*
SQLyog Ultimate v11.5 (32 bit)
MySQL - 5.7.18-log : Database - jorney
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jorney` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jorney`;

/*Table structure for table `asd` */

DROP TABLE IF EXISTS `asd`;

CREATE TABLE `asd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `date1` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `asd` */

insert  into `asd`(`id`,`name`,`surname`,`image3`,`date`,`date1`) values (8,'v','a','1502374761339_sevan.jpg','2017-08-09','2017-08-26');

/*Table structure for table `slider` */

DROP TABLE IF EXISTS `slider`;

CREATE TABLE `slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `header1` varchar(255) NOT NULL,
  `header2` varchar(255) NOT NULL,
  `position` int(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `slider` */

insert  into `slider`(`id`,`image`,`header1`,`header2`,`position`) values (6,'1502386431633_yerevan-armenia-1000px.jpg','Yerevan','Older then the  eternal City',1),(7,'1502386669176_tatev1000.JPG','tatev','9th century Armenian church',4),(9,'1502390109124_1024px-Noratus_Khachkars5_1024.jpg','noratus 16-17th centuries ',' cemetery, largest cluster of khachkars in the world',2);

/*Table structure for table `tour` */

DROP TABLE IF EXISTS `tour`;

CREATE TABLE `tour` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` double unsigned NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `destination` varchar(255) NOT NULL,
  `departing_date` date NOT NULL,
  `arriving_date` date NOT NULL,
  `duration` varchar(3) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `tour` */

insert  into `tour`(`id`,`name`,`price`,`image1`,`image2`,`operator`,`description`,`destination`,`departing_date`,`arriving_date`,`duration`,`level`) values (7,'NORAVANK',78,'1502373350125_nravanq.jpg','1502373350125_Noravank1000.JPG','BlueBird Tour','One day tour in Armenia from Yerevan to the south-east of the country, to old temples and monasteries of the land that accepted Christianity as an official religion one of the first in the world. The trip is not comprised of visiting only architectural monuments. The excursion will also include a visit to hot mineral springs in Jermuk. A pleasant ending to a busy tour program will be a trip to the winery in Areni with degustation of amazing Armenian wines.\r\n\r\nTour itinerary:\r\nMeet your guide and driver at your hotel in Yerevan and head to Khor Virap monastery (�deep pit�). According to the legend, St. Gregory the Illuminator, the Baptist of Armenia, had been kept here in the basement during 13 years for the disseminating of Christianity until tsar Tradt decided to adopt new religion. Monastery location allows you to enjoy the best views of the Mt. Ararat. Continue to Noravank monastery (XII c.) located on the ledge of narrow winding gorge of Arpa River. Drive to Jermuk, famous for its thermal-mineral springs and surrounded by rich Alpine verdure and woods where you can try local mineral water. Last stop is at Areni, city known for producing famous Armenian wine from pomegranate and apricot. Have a wine degustation in a local winery. Return to Yerevan. Drop off at your hotel.','Yerevan','2017-08-10','2017-08-10','1',0),(8,'SEVAN',125,'1502375097137_sevan.jpg','1502375097137_sevan (1000).jpg','BlueBird Tour','Tour to Lake Sevan, the biggest lake in Armenia, the shores of which have been inhabited for thousands of years; with rocky churches and temples mounting the lake for centuries, will give you unforgettable memories. It seems there is no better place in Armenia for thinking of eternity. In this one-day trip from Yerevan, you will see main sights of the lake Sevan, precisely its west shore.\r\n\r\nTour itinerary:\r\nMeet your driver and guide at your hotel in Yerevan and drive towards Lake Sevan.\r\nAncient relict Lake Sevan � �The Jewel of Armenia� is one of the largest high-mountainous fresh water lakes in the world. The coastline of Lake Sevan is very picturesque with its thick woods, white bare steep rocks, mountain steppes and Alpine meadows. Stop at Hayravank Monastery, located on the shore of the lake. Continue to Noraduz, a village famous for its big khachkar cemetery. There are about 900 khachkars of various styles and epochs there. Next step is Sevanavank. And visit the remnants of the monastery that include two temples � Surb Arakelots and Surb Astvatsatsin standing among numerous khachkars. The buildings were constructed from black tuff which probably gave the monastery its name �Sevanavank � �the Black Monastery�. Today the two black temples of Sevan stand deserted like two guards of this ancient lake. The view from there is simply magnificent: the mountains surround lake from all sides and snow tops are seen almost on the entire perimeter and disappear behind horizon.\r\nReturn to Yerevan.','Yerevan','2017-08-10','2017-08-31','1',1),(9,'TATEV',125,'1502376366116_tatev.jpg','1502376366116_tatev1000.JPG','BlueBird Tour','In the morning, drive to Tatev Monastery (9-13th centuries). Approaching the jewel of medieval Armenian architecture on the longest aerial tramway in the world you will see the monastery, the powerful impregnable stronghold towering on a rock. Such a remote position of it was strategically favorable as the monastery was simultaneously religious and political centre of the region. Standing on the edge of the rock, the monastery takes your breath away. Drive back to Yerevan. On the way, visit Noravank Monastery (12th century) located on the ledge of narrow winding gorge of Arpa River. Drop off at your hotel in Yerevan.','Yerevan','2017-08-01','2017-10-27','1',0),(10,'YEREVAN',56,'1502376614422_yerevan550.jpg','1502376614422_yerevan-armenia-1000px.jpg','Bluebird Tour','Yerevan is a unique city. At first glance, the capital of Armenia seems modern, continuously re-building megapolis but if you take a stroll along its boulevards and streets, it will be clear that this place has been resided for thousands years and every house is a stone manuscript of the history of Yerevan. One-day Yerevan city tour will let you learn more about this beautiful city and no doubts that it will leave unforgettable memories.\r\n\r\nTour itinerary:\r\nOne of the oldest cities of the world, Yerevan is famous as a pink city and calls visitors with its humble and at the same time splendid landscapes. Start city tour visiting Cascade Monument which was the main symbol of the cities 2780th anniversary with the equivalent number of stairs. Mega scale staircase is 500 meters high and 50 meters wide. A panoramic view from the monument opens up breathtaking city view with Opera House, Mount Ararat, Swan Lake, Republic Square, and Abovyan Avenue, which you will also walk by during the tour. If it is a weekend, visit Vernissage, the biggest souvenir market in Yerevan.\r\n\r\nContinue to the Armenian Genocide memorial complex on the hill of Tsitsernakaberd. An excellent round-up of the tour will be a visit to the Megeryan carpet factory where you can observe a process of creating famous Armenian rugs. You will see carpets from different regions of Armenia and find out about hidden meanings of elements used in their design.','Yerevan','2017-01-01','2020-01-01','1',2),(15,'Tawush',150,'1502404399328_Haghpat_1000.jpg','1502404399328_akhpat.jpg','BlueBird Tour','There are lots of legends, concerning with the name �Haghpat�. One of them tells, that once upon a time Duke of Sanahin invite the well-known master to build a monastery. He went to the Duke with his son. During work father and son had a dispute. Having had a long dispute son left the work and went away. On the road he met another duke, who offered him to build a monastery. When the walls of monastery were seen from Sanahin, workers told the master about it. He went to watch his son�s construction on a non-working day; he examined everything scrupulously. People were looking forward for his estimation, and, finally, he pressed the wall and said: �Akh pat� (�What a strong wall�). And then father and son embraced and forgot about the dispute. From then on the monastery has been called �Haghpat�.','Yerevan','2017-08-01','2018-01-01','1',3),(16,'Aragac ',95,'1502442941013_aragats.jpg','1502442941013_Aragats-lake.jpg','BlueBird Tour','Aragats is the highest mount in Armenia and the forth in the territory of Armenian Highlands. It is also the highest point of Transcaucasia. Aragats is extinct volcano, which can be seen from city of Yerevan and Shirak, Kotayk and Aragatsotn provinces. It consists of 4 peaks, the highest of which is Northern (4090m), and the lowest � Southern (3879m) � that is of our concern. Climbing the Northern peak requires more serious preparedness, while the Southern is more preferable for non-professional climbers. The most suitable period for climbing Aragats is from June till August, when mountain trails are dry and safe. In winter, when slopes are covered with snow, only professional climbers on skis are recommended to climb Aragats.\r\nAragats name is associated with Aramanyak � one of the sons of Armenian nation\'s forefather Hayk. According to another version, Aragats is named after ancient Armenian god Ara. Aragats probably means Ara\'s throne. During the tour we also will visit Armenian Alphabet Alley and medieval Amberd Fortress. After we will ride on a car to Kari lake (3200m), and begin our climbing to the Southern peak of Aragats, when we can enjoy the spectacular views from the heights of clouds.','Yerevan','2017-05-01','2017-10-31','',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`email`) values (1,'user@user.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
