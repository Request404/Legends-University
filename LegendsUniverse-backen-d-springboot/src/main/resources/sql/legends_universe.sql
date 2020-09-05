/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : legends_universe

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-06-29 13:02:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for champion_data
-- ----------------------------
DROP TABLE IF EXISTS `champion_data`;
CREATE TABLE `champion_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgPosition` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of champion_data
-- ----------------------------
INSERT INTO `champion_data` VALUES ('1', 'Aatrox', 'Runeterra', '/img/champions/Aatrox_.jpg', '70.3646% 32.037%');
INSERT INTO `champion_data` VALUES ('2', 'Ahri', 'Ionia', '/img/champions/Ahri_.jpg', '67.4897% 14.6444%');
INSERT INTO `champion_data` VALUES ('3', 'Akali', 'Ionia', '/img/champions/Akali_.jpg', '48.9063% 15%');
INSERT INTO `champion_data` VALUES ('4', 'Alistar', 'Runeterra', '/img/champions/Alistar_.jpg', '65.1029% 19.3863%');
INSERT INTO `champion_data` VALUES ('5', 'Amumu', 'Shurima', '/img/champions/Amumu_.jpg', '77.8601% 10.4603%');
INSERT INTO `champion_data` VALUES ('6', 'Anivia', 'Freljord', '/img/champions/Anivia_.jpg', '58.8477% 22.5941%');
INSERT INTO `champion_data` VALUES ('7', 'Annie', 'Runetrra', '/img/champions/Annie_.jpg', '95.5556% 20.2232%');
INSERT INTO `champion_data` VALUES ('8', 'Aphelios', 'Targon', '/img/champions/Aphelios_.jpg', '52.4211% 4.72371%');
INSERT INTO `champion_data` VALUES ('9', 'Ashe', 'Freljord', '/img/champions/Ashe_.jpg', '69.4271% 5.44148%');
INSERT INTO `champion_data` VALUES ('10', 'Aurelion Sol', 'Runeterra', '/img/champions/Aurelion_sol_.jpg', '56.5432% 0.27894%');
INSERT INTO `champion_data` VALUES ('11', 'Azir', 'Shurima', '/img/champions/Azir_.jpg', '84.4444% 13.3891%');
INSERT INTO `champion_data` VALUES ('12', 'Bard', 'Runeterra', '/img/champions/Bard_.jpg', '63.3745% 12.2734%');
INSERT INTO `champion_data` VALUES ('13', 'Blitzcrank', 'Zaun', '/img/champions/Blitzcrank_.jpg', '78.4362% 15.7601%');
INSERT INTO `champion_data` VALUES ('14', 'Brand', 'Runeterra', '/img/champions/Brand_.jpg', '88.3951% 6.9735%');
INSERT INTO `champion_data` VALUES ('15', 'Braum', 'Freljord', '/img/champions/Braum_.jpg', '88.642% 3.62622%');
INSERT INTO `champion_data` VALUES ('16', 'Caitlyn', 'Piltover', '/img/champions/Caitlyn_.jpg', '84.2798% 0.97629%');
INSERT INTO `champion_data` VALUES ('17', 'Camille', 'Piltover', '/img/champions/Camille_.jpg', '94.6289% 0.974026%');
INSERT INTO `champion_data` VALUES ('18', 'Cassiopeia', 'Noxus', '/img/champions/Cassiopeia_.jpg', '69.7119% 7.67085%');
INSERT INTO `champion_data` VALUES ('19', 'Cho’Gath', 'The Void', '/img/champions/Cho_Gath_.jpg', '58.7654% 27.6151%');
INSERT INTO `champion_data` VALUES ('20', 'Corki', 'Bandle City', '/img/champions/Corki_.jpg', '79.5062% 12.6918%');
INSERT INTO `champion_data` VALUES ('21', 'Darius', 'Noxus', '/img/champions/Darius_.jpg', '61.3169% 0%');
INSERT INTO `champion_data` VALUES ('22', 'Diana', 'Targon', '/img/champions/Diana_.jpg', '77.7778% 32.636%');
INSERT INTO `champion_data` VALUES ('23', 'Dr. Mundo', 'Zaun', '/img/champions/Dr._Mundo_.jpg', '79.4239% 18.2706%');
INSERT INTO `champion_data` VALUES ('24', 'Draven', 'Noxus', '/img/champions/Draven_.jpg', '84.3621% 13.947%');
INSERT INTO `champion_data` VALUES ('25', 'Ekko', 'Zaun', '/img/champions/Ekko_.jpg', '87.3251% 4.1841%');
INSERT INTO `champion_data` VALUES ('26', 'Elise', 'Shadow Isles', '/img/champions/Elise_.jpg', '82.8807% 13.6681%');
INSERT INTO `champion_data` VALUES ('27', 'Evelynn', 'Runeterra', '/img/champions/Evelynn_.jpg', '51.1979% 11.6505%');
INSERT INTO `champion_data` VALUES ('28', 'Ezreal', 'Plitover', '/img/champions/Ezreal_.jpg', '67.0782% 19.6653%');
INSERT INTO `champion_data` VALUES ('29', 'Fiddlesticks', 'Runeterra', '/img/champions/Fiddlesticks_.jpg', '36.6146% 48.0071%');
INSERT INTO `champion_data` VALUES ('30', 'Fiora', 'Demacia', '/img/champions/Fiora_.jpg', '71.1111% 0%');
INSERT INTO `champion_data` VALUES ('31', 'Fizz', 'Runeterra', '/img/champions/Fizz_.jpg', '97.1193% 14.5049%');
INSERT INTO `champion_data` VALUES ('32', 'Galio', 'Demacia', '/img/champions/Galio_.jpg', '48.3951% 8.92608%');
INSERT INTO `champion_data` VALUES ('33', 'GangPlank', 'Bilgewater', '/img/champions/Gangplank_.jpg', '68.9712% 0.83682%');
INSERT INTO `champion_data` VALUES ('34', 'Garen', 'Demacia', '/img/champions/Garen_.jpg', '93.5802% 19.6653%');
INSERT INTO `champion_data` VALUES ('35', 'Gnar', 'Freljord', '/img/champions/Gnar_.jpg', '85.2675% 67.643%');
INSERT INTO `champion_data` VALUES ('36', 'Gragas', 'Freljord', '/img/champions/Gragas_.jpg', '64.7737% 1.67364%');
INSERT INTO `champion_data` VALUES ('37', 'Graves', 'Bilgewater', '/img/champions/Graves_.jpg', '84.0329% 0%');
INSERT INTO `champion_data` VALUES ('38', 'Hecarim', 'Shadow Isles', '/img/champions/Hecarim_.jpg', '83.786% 1.53417%');
INSERT INTO `champion_data` VALUES ('39', 'Heimerdinger', 'Piltover', '/img/champions/Heimerdinger_.jpg', '80.0823% 34.5886%');
INSERT INTO `champion_data` VALUES ('40', 'Illaoi', 'Bilgewater', '/img/champions/Illaoi_.jpg', '64.2798% 0%');
INSERT INTO `champion_data` VALUES ('41', 'Irelia', 'Ionia', '/img/champions/Irelia_.jpg', '50.2083% 11.578%');
INSERT INTO `champion_data` VALUES ('42', 'Ivern', 'Ionia', '/img/champions/Ivern_.jpg', '46.8313% 0%');
INSERT INTO `champion_data` VALUES ('43', 'Janna', 'Zaun', '/img/champions/Janna_.jpg', '91.6049% 20.6416%');
INSERT INTO `champion_data` VALUES ('44', 'Jarvan IV', 'Demacia', '/img/champions/Jarvan_Iv_.jpg', '83.2099% 4.88145%');
INSERT INTO `champion_data` VALUES ('45', 'Jax', 'Runeterra', '/img/champions/Jax_.jpg', '78.107% 4.88145%');
INSERT INTO `champion_data` VALUES ('46', 'Jayce', 'Piltover', '/img/champions/Jayce_.jpg', '82.8807% 25.3835%');
INSERT INTO `champion_data` VALUES ('47', 'Jhin', 'Ionia', '/img/champions/Jhin_.jpg', '64.1975% 0.27894%');
INSERT INTO `champion_data` VALUES ('48', 'Jinx', 'Zaun', '/img/champions/Jinx_.jpg', '74.1564% 11.4365%');
INSERT INTO `champion_data` VALUES ('49', 'Kai‘Sa', 'The Void', '/img/champions/Kai_Sa_.jpg', '48.3333% 12.4448%');
INSERT INTO `champion_data` VALUES ('50', 'Kalista', 'Shadow Isles', '/img/champions/Kalista_.jpg', '76.214% 6.83403%');
INSERT INTO `champion_data` VALUES ('51', 'Karma', 'Inoia', '/img/champions/Karma_.jpg', '84.0329% 1.53417%');
INSERT INTO `champion_data` VALUES ('52', 'Karthus', 'Shadow Isles', '/img/champions/Karthus_.jpg', '74.1564% 0%');
INSERT INTO `champion_data` VALUES ('53', 'Kassadin', 'The Void', '/img/champions/Kassadin_.jpg', '80.0823% 15.0628%');
INSERT INTO `champion_data` VALUES ('54', 'Katarina', 'Noxus', '/img/champions/Katarina_.jpg', '67.6543% 49.6513%');
INSERT INTO `champion_data` VALUES ('55', 'Kayle', 'Demacia', '/img/champions/Kayle_.jpg', '88.75% 49.2602%');
INSERT INTO `champion_data` VALUES ('56', 'Kayn', 'Ionia', '/img/champions/Kayn_.jpg', '50.7813% 51.0582%');
INSERT INTO `champion_data` VALUES ('57', 'Kennen', 'Ionia', '/img/champions/Kennen_.jpg', '83.786% 5.16039%');
INSERT INTO `champion_data` VALUES ('58', 'Kha’Zix', 'The Void', '/img/champions/Kha_Zix_.jpg', '80.9053% 32.2176%');
INSERT INTO `champion_data` VALUES ('59', 'Kindred', 'Runeterra', '/img/champions/Kindred_.jpg', '80.9053% 30.6834%');
INSERT INTO `champion_data` VALUES ('60', 'Kled', 'Noxus', '/img/champions/Kled_.jpg', '90.6996% 0.55788%');
INSERT INTO `champion_data` VALUES ('61', 'Kog‘Maw', 'The Void', '/img/champions/Kog_Maw_.jpg', '73.0041% 67.9219%');
INSERT INTO `champion_data` VALUES ('62', 'Leblanc', 'Noxus', '/img/champions/Leblanc_.jpg', '76.8724% 0.41841%');
INSERT INTO `champion_data` VALUES ('63', 'Lee Sin', 'Ionia', '/img/champions/Lee_Sin_.jpg', '73.1687% 0%');
INSERT INTO `champion_data` VALUES ('64', 'Leona', 'Targon', '/img/champions/Leona_.jpg', '87.3251% 5.71827%');
INSERT INTO `champion_data` VALUES ('65', 'Lissandra', 'Freljord', '/img/champions/Lissandra_.jpg', '76.5432% 0%');
INSERT INTO `champion_data` VALUES ('66', 'Lucian', 'Runeterra', '/img/champions/Lucian_.jpg', '73.7449% 37.2385%');
INSERT INTO `champion_data` VALUES ('67', 'LuLu', 'Bandle City', '/img/champions/Lulu_.jpg', '78.6831% 24.1283%');
INSERT INTO `champion_data` VALUES ('68', 'Lux', 'Demacia', '/img/champions/Lux_.jpg', '64.5267% 7.11297%');
INSERT INTO `champion_data` VALUES ('69', 'Malphite', 'Ixtal', '/img/champions/Malphite_.jpg', '76.7901% 56.2064%');
INSERT INTO `champion_data` VALUES ('70', 'Malzahar', 'The Void', '/img/champions/Malzahar_.jpg', '70.0412% 0%');
INSERT INTO `champion_data` VALUES ('71', 'MaoKai', 'Shadow Isles', '/img/champions/Maokai_.jpg', '73.8272% 21.7573%');
INSERT INTO `champion_data` VALUES ('72', 'Master Yi', 'Ionia', '/img/champions/Master_Yi_.jpg', '94.2387% 13.8075%');
INSERT INTO `champion_data` VALUES ('73', 'Miss Fortune', 'Bilgewater', '/img/champions/Miss_Fortune_.jpg', '80.9053% 32.2176%');
INSERT INTO `champion_data` VALUES ('74', 'Mordekaiser', 'Noxus', '/img/champions/Mordekaiser_.jpg', '45.7831% 7.98561%');
INSERT INTO `champion_data` VALUES ('75', 'Morgana', 'Demacia', '/img/champions/Morgana_.jpg', '88.7962% 49.2602%');
INSERT INTO `champion_data` VALUES ('76', 'Nami', 'Runeterra', '/img/champions/Nami_.jpg', '91.2757% 15.3417%');
INSERT INTO `champion_data` VALUES ('77', 'Nasus', 'Shurima', '/img/champions/Nasus_.jpg', '73.1687% 5.5788%');
INSERT INTO `champion_data` VALUES ('78', 'Nautilus', 'Bilgewater', '/img/champions/Nautilus_.jpg', '88.4774% 0.55788%');
INSERT INTO `champion_data` VALUES ('79', 'Neeko', 'Ixtal', '/img/champions/Neeko_.jpg', '43.8542% 2.11827%');
INSERT INTO `champion_data` VALUES ('80', 'Nidalee', 'Ixtal', '/img/champions/Nidalee_.jpg', '83.8683% 1.53417%');
INSERT INTO `champion_data` VALUES ('81', 'Nocturne', 'Runeterra', '/img/champions/Nocturne_.jpg', '71.6049% 29.0098%');
INSERT INTO `champion_data` VALUES ('82', 'NuNu & Willump', 'Freljord', '/img/champions/NuNu_&_Willump_.jpg', '68.9583% 63.3913%');
INSERT INTO `champion_data` VALUES ('83', 'Olaf', 'Freljord', '/img/champions/Olaf_.jpg', '67.0782% 9.34449%');
INSERT INTO `champion_data` VALUES ('84', 'Orianna', 'Piltover', '/img/champions/Orianna_.jpg', '88.8889% 0%');
INSERT INTO `champion_data` VALUES ('85', 'Ornn', 'Freljord', '/img/champions/Ornn_.jpg', '49.4271% 30.3704%');
INSERT INTO `champion_data` VALUES ('86', 'Pantheon', 'Targon', '/img/champions/Pantheon_.jpg', '49.4271% 30.3704%');
INSERT INTO `champion_data` VALUES ('87', 'Poppy', 'Demacia', '/img/champions/Poppy_.jpg', '71.8519% 0.41841%');
INSERT INTO `champion_data` VALUES ('88', 'Pyke', 'Bilgewater', '/img/champions/Pyke_.jpg', '49.4271% 22.2222%');
INSERT INTO `champion_data` VALUES ('89', 'Qiyana', 'Ixtal', '/img/champions/Qiyana_.jpg', '50.6% 23.4668%');
INSERT INTO `champion_data` VALUES ('90', 'Quinn', 'Demacia', '/img/champions/Quinn_.jpg', '65.8436% 0.83682%');
INSERT INTO `champion_data` VALUES ('91', 'Rakan', 'Ionia', '/img/champions/Rakan_.jpg', '37.5% 10%');
INSERT INTO `champion_data` VALUES ('92', 'Rammus', 'Shurima', '/img/champions/Rammus_.jpg', '64.1152% 29.1492%');
INSERT INTO `champion_data` VALUES ('93', 'Rek’Sai', 'The Void', '/img/champions/Rek_Sai_.jpg', '59.9177% 26.9177%');
INSERT INTO `champion_data` VALUES ('94', 'Renekton', 'Shurima', '/img/champions/Renekton_.jpg', '65.9259% 0.83682%');
INSERT INTO `champion_data` VALUES ('95', 'Rengar', 'Ixtal', '/img/champions/Rengar_.jpg', '74.0741% 19.6653%');
INSERT INTO `champion_data` VALUES ('96', 'Riven', 'Noxus', '/img/champions/Riven_.jpg', '86.1728% 0.27894%');
INSERT INTO `champion_data` VALUES ('97', 'Rumble', 'Bandle City', '/img/champions/Rumble_.jpg', '79.6708% 0.83682%');
INSERT INTO `champion_data` VALUES ('98', 'Ryze', 'Runeterra', '/img/champions/Ryze_.jpg', '84.3621% 35.1464%');
INSERT INTO `champion_data` VALUES ('99', 'Sejuani', 'Freljord', '/img/champions/Sejuani_.jpg', '60.823% 0.41841%');
INSERT INTO `champion_data` VALUES ('100', 'Senna', 'Runeterra', '/img/champions/Senna_.jpg', '58.2105% 11.3292%');
INSERT INTO `champion_data` VALUES ('101', 'Sett', 'Ionia', '/img/champions/Sett_.jpg', '48.7895% 8.97436%');
INSERT INTO `champion_data` VALUES ('102', 'Shaco', 'Runeterra', '/img/champions/Shaco_.jpg', '82.0576% 1.11576%');
INSERT INTO `champion_data` VALUES ('103', 'Shen', 'Ionia', '/img/champions/Shen_.jpg', '85.1029% 0%');
INSERT INTO `champion_data` VALUES ('104', 'Shyvana', 'Demacia', '/img/champions/Shyvana_.jpg', '78.2716% 0%');
INSERT INTO `champion_data` VALUES ('105', 'Singed', 'Zaun', '/img/champions/Singed_.jpg', '77.7778% 0.55788%');
INSERT INTO `champion_data` VALUES ('106', 'Sion', 'Noxus', '/img/champions/Skarner_.jpg', '77.6955% 0.55788%');
INSERT INTO `champion_data` VALUES ('107', 'Sivir', 'Shurima', '/img/champions/Sivir_.jpg', '63.7037% 20.2232%');
INSERT INTO `champion_data` VALUES ('108', 'Skarner', 'Shurima', '/img/champions/Sion_.jpg', '82.6337% 38.4937%');
INSERT INTO `champion_data` VALUES ('109', 'Sona', 'Demacia', '/img/champions/Sona_.jpg', '76.6255% 0.13947%');
INSERT INTO `champion_data` VALUES ('110', 'Soraka', 'Targon', '/img/champions/Soraka_.jpg', '56.6255% 0%');
INSERT INTO `champion_data` VALUES ('111', 'Swain', 'Noxus', '/img/champions/Swain_.jpg', '75.9375% 0%');
INSERT INTO `champion_data` VALUES ('112', 'Sylas', 'Demacia', '/img/champions/Sylas_.jpg', '50.5208% 10.1681%');
INSERT INTO `champion_data` VALUES ('113', 'Syndra', 'Ionia', '/img/champions/Syndra_.jpg', '84.1152% 9.62343%');
INSERT INTO `champion_data` VALUES ('114', 'Tahm Kench', 'Runeterra', '/img/champions/Tahm_Kench_.jpg', '84.3621% 47.1409%');
INSERT INTO `champion_data` VALUES ('115', 'Taliyah', 'Shurima', '/img/champions/Taliyah_.jpg', '87.4897% 0%');
INSERT INTO `champion_data` VALUES ('116', 'Talon', 'Noxus', '/img/champions/Talon_.jpg', '73.4979% 16.8759%');
INSERT INTO `champion_data` VALUES ('117', 'Taric', 'Targon', '/img/champions/Taric_.jpg', '87.3251% 5.71827%');
INSERT INTO `champion_data` VALUES ('118', 'Teemo', 'Bandle City', '/img/champions/Teemo_.jpg', '78.2716% 12.9707%');
INSERT INTO `champion_data` VALUES ('119', 'Thresh', 'Shadow Isles', '/img/champions/Thresh_.jpg', '69.7119% 0.41841%');
INSERT INTO `champion_data` VALUES ('120', 'Tristana', 'Bandle City', '/img/champions/Tristana_.jpg', '75.8848% 3.62622%');
INSERT INTO `champion_data` VALUES ('121', 'Trundle', 'Freljord', '/img/champions/Trundle_.jpg', '64.856% 6.69456%');
INSERT INTO `champion_data` VALUES ('122', 'Tryndamere', 'Freljord', '/img/champions/Tryndamere_.jpg', '77.1193% 0.41841%');
INSERT INTO `champion_data` VALUES ('123', 'Twisted Fate', 'Bilgewater', '/img/champions/Twisted_Fata_.jpg', '82.7984% 5.16039%');
INSERT INTO `champion_data` VALUES ('124', 'Twitch', 'Zaun', '/img/champions/Twitch_.jpg', '62.5514% 27.4756%');
INSERT INTO `champion_data` VALUES ('125', 'Udyr', 'Freljord', '/img/champions/Udyr_.jpg', '58.7654% 47.9777%');
INSERT INTO `champion_data` VALUES ('126', 'Urgot', 'Freljord', '/img/champions/Urgot_.jpg', '56.4609% 5.5788%');
INSERT INTO `champion_data` VALUES ('127', 'Varus', 'Ionia', '/img/champions/Varus_.jpg', '53.8542% 0%');
INSERT INTO `champion_data` VALUES ('128', 'Vayne', 'Demacia', '/img/champions/Vayne_.jpg', '92.3457% 10.5997%');
INSERT INTO `champion_data` VALUES ('129', 'Veigar', 'Bandle City', '/img/champions/Veigar_.jpg', '71.1934% 9.90237%');
INSERT INTO `champion_data` VALUES ('130', 'Vel‘Koz', 'The Void', '/img/champions/Vel_Koz_.jpg', '62.4691% 31.6597%');
INSERT INTO `champion_data` VALUES ('131', 'Vi', 'Piltover', '/img/champions/Vi_.jpg', '76.214% 18.8285%');
INSERT INTO `champion_data` VALUES ('132', 'Viktor', 'Zaun', '/img/champions/Viktor_.jpg', '74.7325% 3.20781%');
INSERT INTO `champion_data` VALUES ('133', 'Vladimir', 'Noxus', '/img/champions/Vladimir_.jpg', '84.1975% 2.92887%');
INSERT INTO `champion_data` VALUES ('134', 'Volibear', 'Freljord', '/img/champions/Volibear_.jpg', '83.1276% 0.55788%');
INSERT INTO `champion_data` VALUES ('135', 'Warwick', 'Zaun', '/img/champions/WarWick_.jpg', '69.1406% 60.7918%');
INSERT INTO `champion_data` VALUES ('136', 'WuKong', 'Ionia', '/img/champions/WuKong_.jpg', '70.1235% 18.41%');
INSERT INTO `champion_data` VALUES ('137', 'Xayah', 'Ionia', '/img/champions/XaYah_.jpg', '66.5115% 23.7037%');
INSERT INTO `champion_data` VALUES ('138', 'Xerath', 'Shurima', '/img/champions/Xerath_.jpg', '57.6955% 3.20781%');
INSERT INTO `champion_data` VALUES ('139', 'Xin Zhao', 'Demacia', '/img/champions/Xin_Zhao_.jpg', '53.3333% 27.2727%');
INSERT INTO `champion_data` VALUES ('140', 'YaSuo', 'Ionia', '/img/champions/Yasuo_.jpg', '87.9835% 31.3808%');
INSERT INTO `champion_data` VALUES ('141', 'Yorick', 'Shadow Isles', '/img/champions/YoRick_.jpg', '79.6708% 1.53417%');
INSERT INTO `champion_data` VALUES ('142', 'Yuumi', 'Bandle City', '/img/champions/Yuumi_.jpg', '44.9479% 6.22924%');
INSERT INTO `champion_data` VALUES ('143', 'Zac', 'Zaun', '/img/champions/Zac_.jpg', '76.0494% 60.251%');
INSERT INTO `champion_data` VALUES ('144', 'Zed', 'Ionia', '/img/champions/Zed_.jpg', '76.1317% 3.06834%');
INSERT INTO `champion_data` VALUES ('145', 'Ziggs', 'Zaun', '/img/champions/Ziggs_.jpg', '83.786% 27.7545%');
INSERT INTO `champion_data` VALUES ('146', 'Zilean', 'Runeterra', '/img/champions/Zilean_.jpg', '61.3992% 0.97629%');
INSERT INTO `champion_data` VALUES ('147', 'Zoe', 'Targon', '/img/champions/Zoe_.jpg', '54.9479% 23.1718%');
INSERT INTO `champion_data` VALUES ('148', 'Zyra', 'Ixtal', '/img/champions/Zyra_.jpg', '88.0658% 5.29986%');

-- ----------------------------
-- Table structure for comics_data
-- ----------------------------
DROP TABLE IF EXISTS `comics_data`;
CREATE TABLE `comics_data` (
  `comicsId` int NOT NULL AUTO_INCREMENT,
  `comicsImg` varchar(255) NOT NULL,
  `comicsName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `comicsDetails` varchar(255) NOT NULL,
  `comicsDescription` varchar(255) NOT NULL,
  `comicsPrice` decimal(10,2) NOT NULL,
  `contentDes` longtext NOT NULL,
  `detailUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`comicsId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comics_data
-- ----------------------------
INSERT INTO `comics_data` VALUES ('1', '/img/comics/comics-data/boold_of_noxus.jpg', 'Darius', 'Darius', 'Noxus Blood', '0.01', 'There is no greater symbol of Noxian might than Darius, the nation’s most feared and battle-hardened leader. Rising from humble origins to become the Hand of Noxus, he cleaves through the empire’s enemies—many of them Noxians themselves. Knowing that he never doubts his cause is just, and never hesitates once his axe is raised, those who stand against the commander of the Trifarian Legion can expect no mercy.', '/img/comics/comics-data/boold_of_noxus_detail.jpg');
INSERT INTO `comics_data` VALUES ('2', '/img/comics/comics-data/paint_the_town.jpg', 'Jinx', 'Jinx & Ziggs', 'Paint town', '0.01', 'Amanic and impulsive criminal from Zaun, Jinx lives to wreak havoc without care for the consequences. With an arsenal of deadly weapons, she unleashes the loudest blasts and brightest explosions to leave a trail of mayhem and panic in her wake. Jinx despises boredom, and gleefully brings her own chaotic brand of pandemonium wherever she goes.', '/img/comics/comics-data/paint_the_town_detail.jpg');
INSERT INTO `comics_data` VALUES ('3', '/img/comics/comics-data/ashe_issue_4.jpg', 'ashe', 'Ashe & Sejunami', 'Issue #4', '0.01', 'Raised in the savage wilds of the north, Ashe is an Iceborn, a warrior gifted with a magical connection to her frozen homeland--and burdened by her mother’s fanatical expectations. When they set out on a dangerous quest for the truth behind an ancient myth, bonds are broken, secrets come to light, and Runeterra is forever changed. Will young Ashe become the leader her people need? Or is destiny merely an empty dream?', '/img/comics/comics-data/ashe_detail.jpg');
INSERT INTO `comics_data` VALUES ('4', '/img/comics/comics-data/ashe_issue_3.jpg', 'ashe', 'Ashe & Sejunami', 'Issue #3', '0.01', 'Raised in the savage wilds of the north, Ashe is an Iceborn, a warrior gifted with a magical connection to her frozen homeland--and burdened by her mother’s fanatical expectations. When they set out on a dangerous quest for the truth behind an ancient myth, bonds are broken, secrets come to light, and Runeterra is forever changed. Will young Ashe become the leader her people need? Or is destiny merely an empty dream?', '/img/comics/comics-data/ashe_detail.jpg');
INSERT INTO `comics_data` VALUES ('5', '/img/comics/comics-data/ashe_issue_2.jpg', 'ashe', 'Ashe & Sejunami', 'Issue #2', '0.01', 'Raised in the savage wilds of the north, Ashe is an Iceborn, a warrior gifted with a magical connection to her frozen homeland--and burdened by her mother’s fanatical expectations. When they set out on a dangerous quest for the truth behind an ancient myth, bonds are broken, secrets come to light, and Runeterra is forever changed. Will young Ashe become the leader her people need? Or is destiny merely an empty dream?', '/img/comics/comics-data/ashe_detail.jpg');
INSERT INTO `comics_data` VALUES ('6', '/img/comics/comics-data/ashe_issue_1.jpg', 'ashe', 'Ashe & Sejunami', 'Issue #1', '0.01', 'Raised in the savage wilds of the north, Ashe is an Iceborn, a warrior gifted with a magical connection to her frozen homeland--and burdened by her mother’s fanatical expectations. When they set out on a dangerous quest for the truth behind an ancient myth, bonds are broken, secrets come to light, and Runeterra is forever changed. Will young Ashe become the leader her people need? Or is destiny merely an empty dream?', '/img/comics/comics-data/ashe_detail.jpg');
INSERT INTO `comics_data` VALUES ('7', '/img/comics/comics-data/lux_issue_5.jpg', 'Lux', 'Lux & Garen & Sylas & Jarvan IV & Xin Zhao', 'Issue #5', '0.01', 'Demacia is a peaceful utopia where order reigns. Maintaining that order at any cost are the Mageseekers, who hunt down anyone utilizing forbidden magic. Hailing from a respected noble family, Luxanna “Lux” Crownguard is destined for a life of privilege—but is hiding a terrible secret. As her own magical light powers emerge, Lux must decide whether she stands with brother Garen and the ruling class of Demacia…or the downtrodden Mages at the fringes of society.', '/img/lux_detail.jpg');
INSERT INTO `comics_data` VALUES ('8', '/img/comics/comics-data/lux_issue_4.jpg', 'Lux', 'Lux & Garen & Sylas & Jarvan IV & Xin Zhao', 'Issue #4', '0.01', 'Demacia is a peaceful utopia where order reigns. Maintaining that order at any cost are the Mageseekers, who hunt down anyone utilizing forbidden magic. Hailing from a respected noble family, Luxanna “Lux” Crownguard is destined for a life of privilege—but is hiding a terrible secret. As her own magical light powers emerge, Lux must decide whether she stands with brother Garen and the ruling class of Demacia…or the downtrodden Mages at the fringes of society.', '/img/comics/comics-data/lux_detail.jpg');
INSERT INTO `comics_data` VALUES ('9', '/img/comics/comics-data/lux_issue_3.jpg', 'Lux', 'Lux & Garen & Sylas & Jarvan IV & Xin Zhao', 'Issue #3', '0.01', 'Demacia is a peaceful utopia where order reigns. Maintaining that order at any cost are the Mageseekers, who hunt down anyone utilizing forbidden magic. Hailing from a respected noble family, Luxanna “Lux” Crownguard is destined for a life of privilege—but is hiding a terrible secret. As her own magical light powers emerge, Lux must decide whether she stands with brother Garen and the ruling class of Demacia…or the downtrodden Mages at the fringes of society.', '/img/comics/comics-data/lux_detail.jpg');
INSERT INTO `comics_data` VALUES ('10', '/img/comics/comics-data/lux_issue_2.jpg', 'Lux', 'Lux & Garen & Sylas & Jarvan IV & Xin Zhao', 'Issue #2', '0.01', 'Demacia is a peaceful utopia where order reigns. Maintaining that order at any cost are the Mageseekers, who hunt down anyone utilizing forbidden magic. Hailing from a respected noble family, Luxanna “Lux” Crownguard is destined for a life of privilege—but is hiding a terrible secret. As her own magical light powers emerge, Lux must decide whether she stands with brother Garen and the ruling class of Demacia…or the downtrodden Mages at the fringes of society.', '/img/comics/comics-data/lux_detail.jpg');
INSERT INTO `comics_data` VALUES ('11', '/img/comics/comics-data/lux_issue_1.jpg', 'Lux', 'Lux & Garen & Sylas & Jarvan IV & Xin Zhao', 'Issue #1', '0.01', 'Demacia is a peaceful utopia where order reigns. Maintaining that order at any cost are the Mageseekers, who hunt down anyone utilizing forbidden magic. Hailing from a respected noble family, Luxanna “Lux” Crownguard is destined for a life of privilege—but is hiding a terrible secret. As her own magical light powers emerge, Lux must decide whether she stands with brother Garen and the ruling class of Demacia…or the downtrodden Mages at the fringes of society.', '/img/comics/comics-data/lux_detail.jpg');
INSERT INTO `comics_data` VALUES ('12', '/img/comics/comics-data/out_of_time.jpg', 'Ezreal', 'Ezreal', 'Out Of..', '0.01', 'Twin energy blasts explode above me, sparks cascading down. I sprint further up the road. Behind me, the chrono-enforcer’s footsteps echo off the narrow walls. Fast. Relentless. Hate to admit it, but this guy’s definitely faster than me…', '/img/comics/comics-data/out_of_time_detail.jpg');
INSERT INTO `comics_data` VALUES ('13', '/img/comics/comics-data/monstrous.jpg', 'Kai\'Sa', 'Kai\'Sa', 'Monstrous', '0.01', 'There’s light under the earth, if you know where to look.\r\n\r\nIf you know how to look.\r\n\r\nI don’t need light to see. Not anymore.\r\n\r\nMy eyes only ever saw in degrees of darkness, but the sight I now have shows me much more than I ever knew was possible. Now, I perceive colors that don’t exist in nature, as well as hues and shades that reveal how the walls keeping the monsters out aren’t solid at all—they’re as thin as a painted backcloth hung by a performing troupe.', '/img/comics/comics-data/monstrous_detail.jpg');
INSERT INTO `comics_data` VALUES ('14', '/img/comics/comics-data/you_are_the_weapon.jpg', 'Aphelios', 'Aphelios', 'weapon', '0.01', 'He started his training with a single breath. In, and out.\r\n\r\nHe could hear water dripping through a crack in the cave ceiling, dampening the stone floor until it gleamed against the darkness. He knew the holy patterns carved into the floor’s stone—proclaiming destinies and orbits. Even when he closed his eyes, he could see each lunar arc.\r\n\r\nHe made a few tentative swings with his blade. The moonstone felt solid in his hand, but remained ethereal, as if it wasn’t there. It was a magical remnant of the first convergence when the moon and its reflection in the spirit realm briefly touched across the celestial veil, and moonstone cast off by the union rained down on the world like tears.', '/img/comics/comics-data/you_are_the_weapon_detail.jpg');
INSERT INTO `comics_data` VALUES ('15', '/img/comics/comics-data/zed_issue_6.jpg', 'Zed', 'Zed & Shen & Jhin & Akali & Kayn', 'Issue #6', '0.01', 'In Ionia, a land steeped in tradition and still reeling from war, the once honorable warrior named Zed leads a band of assassins. After Zed murdered their master, his childhood friend Shen has taken a different path, inheriting his father’s former mantle as the Eye of Twilight and maintaining magical balance in Ionia. But when Zed is lured back to a village where he and Shen once encountered a great evil, a brutal killer from their past resurfaces: the magically gifted psychopath Khada Jhin!.....', '/img/comics/comics-data/zed_detail.jpg');
INSERT INTO `comics_data` VALUES ('16', '/img/comics/comics-data/zed_issue_5.jpg', 'Zed', 'Zed & Shen & Jhin & Akali & Kayn', 'Issue #5', '0.01', 'In Ionia, a land steeped in tradition and still reeling from war, the once honorable warrior named Zed leads a band of assassins. After Zed murdered their master, his childhood friend Shen has taken a different path, inheriting his father’s former mantle as the Eye of Twilight and maintaining magical balance in Ionia. But when Zed is lured back to a village where he and Shen once encountered a great evil, a brutal killer from their past resurfaces: the magically gifted psychopath Khada Jhin!.....', '/img/comics/comics-data/zed_detail.jpg');
INSERT INTO `comics_data` VALUES ('17', '/img/comics/comics-data/zed_issue_4.jpg', 'Zed', 'Zed & Shen & Jhin & Akali & Kayn', 'Issue #4', '0.01', 'In Ionia, a land steeped in tradition and still reeling from war, the once honorable warrior named Zed leads a band of assassins. After Zed murdered their master, his childhood friend Shen has taken a different path, inheriting his father’s former mantle as the Eye of Twilight and maintaining magical balance in Ionia. But when Zed is lured back to a village where he and Shen once encountered a great evil, a brutal killer from their past resurfaces: the magically gifted psychopath Khada Jhin!.....', '/img/comics/comics-data/zed_detail.jpg');
INSERT INTO `comics_data` VALUES ('18', '/img/comics/comics-data/zed_issue_3.jpg', 'Zed', 'Zed & Shen & Jhin & Akali & Kayn', 'Issue #3', '0.01', 'In Ionia, a land steeped in tradition and still reeling from war, the once honorable warrior named Zed leads a band of assassins. After Zed murdered their master, his childhood friend Shen has taken a different path, inheriting his father’s former mantle as the Eye of Twilight and maintaining magical balance in Ionia. But when Zed is lured back to a village where he and Shen once encountered a great evil, a brutal killer from their past resurfaces: the magically gifted psychopath Khada Jhin!.....', '/img/comics/comics-data/zed_detail.jpg');
INSERT INTO `comics_data` VALUES ('19', '/img/comics/comics-data/zed_issue_2.jpg', 'Zed', 'Zed & Shen & Jhin & Akali & Kayn', 'Issue #2', '0.01', 'In Ionia, a land steeped in tradition and still reeling from war, the once honorable warrior named Zed leads a band of assassins. After Zed murdered their master, his childhood friend Shen has taken a different path, inheriting his father’s former mantle as the Eye of Twilight and maintaining magical balance in Ionia. But when Zed is lured back to a village where he and Shen once encountered a great evil, a brutal killer from their past resurfaces: the magically gifted psychopath Khada Jhin!.....', '/img/comics/comics-data/zed_detail.jpg');
INSERT INTO `comics_data` VALUES ('20', '/img/comics/comics-data/zed_issue_1.jpg', 'Zed', 'Zed & Shen & Jhin & Akali & Kayn', 'Issue #1', '0.01', 'In Ionia, a land steeped in tradition and still reeling from war, the once honorable warrior named Zed leads a band of assassins. After Zed murdered their master, his childhood friend Shen has taken a different path, inheriting his father’s former mantle as the Eye of Twilight and maintaining magical balance in Ionia. But when Zed is lured back to a village where he and Shen once encountered a great evil, a brutal killer from their past resurfaces: the magically gifted psychopath Khada Jhin!.....', '/img/comics/comics-data/zed_detail.jpg');
INSERT INTO `comics_data` VALUES ('21', '/img/comics/comics-data/fit_for_a_king.jpg', 'Trundle', 'Trundle', 'A feast...', '0.01', 'A hulking figure trudged through the waist-deep snow of the canyon, lumbering uphill with a purposeful gait that dared the blizzard to stop him. He left a deep trench in his wake, heavy clawed feet ripping up the loose shale beneath the snow with every step. Howling winds billowed his patchwork cloak of stitched-together hides, and the figure pulled it tighter around his body.', '/img/comics/comics-data/fit_for_a_king_detail.jpg');
INSERT INTO `comics_data` VALUES ('22', '/img/comics/comics-data/shuriman_trash.jpg', 'Rumble', 'Rumble', 'Shuriman', '0.01', 'So I was walking through this little plaza off the library district in Nashramae—super dusty, flagstones older than empires, and usually pretty quiet. Having just out-negotiated those dumb human merchants in the Grand Marketplace, I was feeling good. I’d been all “You want how much for that teapot?!” and “There’s no way that’s an authentic Ascended-age mace with that iconography!”...', '/img/comics/comics-data/shuriman_trash_detail.jpg');
INSERT INTO `comics_data` VALUES ('23', '/img/comics/comics-data/seams_and_scars.jpg', 'Riven', 'Riven', 'Seams...', '0.01', 'Muramaat tried to keep her voice light. She had never felt uncomfortable sharing a campfire with other travelers along the road to the markets before. This, however, marked her first time sitting across the flames from a Noxian, one with an enormous weapon sheathed across her back...', '/img/comics/comics-data/seams_and_scars_detail.jpg');
INSERT INTO `comics_data` VALUES ('24', '/img/comics/comics-data/brotherhood.jpg', 'Yasuo', 'Yasuo', 'Brotherhood', '0.01', 'The source of the crying is a boy. Six, maybe seven summers.\r\n\r\nHe sits cross-legged with his back to me, in front of a tall sapwood. The weeping settles into sniffling, wet hiccups. I stop at the edge of the trees, and look back at the shade of the road below. The midday sun is merciless, streaming bright into the boy’s meadow. He doesn’t seem hurt. The clearing is open. Unprotected...', '/img/comics/comics-data/brotherhood_detail.jpg');

-- ----------------------------
-- Table structure for comics_scroll
-- ----------------------------
DROP TABLE IF EXISTS `comics_scroll`;
CREATE TABLE `comics_scroll` (
  `imgUrl` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `comicName` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`comicName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comics_scroll
-- ----------------------------
INSERT INTO `comics_scroll` VALUES ('/img/comics/fit_for_a_king.jpg', 'Graham McNeill', 'A Feast Fit for A King', 'A hulking figure trudged through the waist-deep snow of the canyon, lumbering uphill with a purposeful gait that dared the blizzard to stop him.');
INSERT INTO `comics_scroll` VALUES ('/img/comics/ambition\'s_embrace.jpg', 'Michael Yichao', 'Ambition\'s Embrace', 'Bound by darkness.');
INSERT INTO `comics_scroll` VALUES ('/img/comics/between_light_and_shadows.jpg', 'Joey Yu', 'Between Light and Shadows', 'Kennen had not slowed since setting off from the Great Temple of Koeshin.');
INSERT INTO `comics_scroll` VALUES ('/img/comics/brotherhood.jpg', 'Ariel Lawrence', 'Brotherhood', 'The source of the crying is a boy.');
INSERT INTO `comics_scroll` VALUES ('/img/comics/out_of_time.jpg', 'MICHAEL YICHAO', 'OUT OF TIME', 'PURSUIT');
INSERT INTO `comics_scroll` VALUES ('/img/comics/perennial.jpg', 'Dana Luery Shaw', 'Perennial', 'Many had feared that the spirit blossoms would never return to Ionia, a sign of the imbalance still permeating the land and its people.');
INSERT INTO `comics_scroll` VALUES ('/img/comics/seams_and_scars.jpg', 'Dana Luery Shaw', 'Seams and Scars', '“How came you to Ionia, friend?”');
INSERT INTO `comics_scroll` VALUES ('/img/comics/shuriman_trash.jpg', 'Amanda Jeffrey', 'Shuriman Trash', '...');
INSERT INTO `comics_scroll` VALUES ('/img/comics/sisterhood_of_war.jpg', 'Ian St. Martin', 'Sisterhood of War Part II: The Unquiet Dead', 'She cannot breathe.');

-- ----------------------------
-- Table structure for region_data
-- ----------------------------
DROP TABLE IF EXISTS `region_data`;
CREATE TABLE `region_data` (
  `regionName` varchar(50) NOT NULL,
  `regionImg` varchar(255) NOT NULL,
  `regionIco` varchar(255) NOT NULL,
  PRIMARY KEY (`regionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region_data
-- ----------------------------
INSERT INTO `region_data` VALUES ('bandle city', '/img/regions/regions_image/_bandle_city.jpg', '/img/regions/regions_icons/regions_bandle_city_.png');
INSERT INTO `region_data` VALUES ('bilgewater', '/img/regions/regions_image/_bilegewater.png', '/img/regions/regions_icons/regions_bilgewater_crest_.png');
INSERT INTO `region_data` VALUES ('demacia', '/img/regions/regions_image/_demacia.jpg', '/img/regions/regions_icons/regions_demacia_crest_.png');
INSERT INTO `region_data` VALUES ('freljord', '/img/regions/regions_image/_freljord.jpg', '/img/regions/regions_icons/regions_freljord_crest_.png');
INSERT INTO `region_data` VALUES ('ionia', '/img/regions/regions_image/_ionia.jpg', '/img/regions/regions_icons/regions_ionia_crest_.png');
INSERT INTO `region_data` VALUES ('ixtal', '/img/regions/regions_image/_ixtal.jpg', '/img/regions/regions_icons/regions_ixtal_crest_.png');
INSERT INTO `region_data` VALUES ('noxus', '/img/regions/regions_image/_noxus.jpg', '/img/regions/regions_icons/regions_noxus_crest_.png');
INSERT INTO `region_data` VALUES ('piltover', '/img/regions/regions_image/_piltover.jpg', '/img/regions/regions_icons/regions_piltover_crest_.png');
INSERT INTO `region_data` VALUES ('shadow isles', '/img/regions/regions_image/_shadow_isles.jpg', '/img/regions/regions_icons/regions_shadow_isles_crest_.png');
INSERT INTO `region_data` VALUES ('shurima', '/img/regions/regions_image/_shurima.jpg', '/img/regions/regions_icons/regions_shurima_crest_.png');
INSERT INTO `region_data` VALUES ('targon', '/img/regions/regions_image/_targon.jpg', '/img/regions/regions_icons/regions_targon_crest_.png');
INSERT INTO `region_data` VALUES ('the void', '/img/regions/regions_image/_the_void.jpg', '/img/regions/regions_icons/regions_void_crest_.png');
INSERT INTO `region_data` VALUES ('zaun', '/img/regions/regions_image/_zaun.jpg', '/img/regions/regions_icons/regions_zaun_crest_.png');

-- ----------------------------
-- Table structure for user_data
-- ----------------------------
DROP TABLE IF EXISTS `user_data`;
CREATE TABLE `user_data` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_data
-- ----------------------------

-- ----------------------------
-- Table structure for user_purchase
-- ----------------------------
DROP TABLE IF EXISTS `user_purchase`;
CREATE TABLE `user_purchase` (
  `purchaseOrderId` int NOT NULL AUTO_INCREMENT,
  `purchaseUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchaseDate` datetime NOT NULL,
  `purchasePay` decimal(10,2) NOT NULL,
  `purchaseComicsId` int NOT NULL,
  PRIMARY KEY (`purchaseOrderId`),
  KEY `user_purchase` (`purchaseUserName`) USING BTREE,
  KEY `purchase_comics` (`purchaseComicsId`) USING BTREE,
  CONSTRAINT `purchase_comics` FOREIGN KEY (`purchaseComicsId`) REFERENCES `comics_data` (`comicsId`),
  CONSTRAINT `purchase_user` FOREIGN KEY (`purchaseUserName`) REFERENCES `user_data` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for user_star
-- ----------------------------
DROP TABLE IF EXISTS `user_star`;
CREATE TABLE `user_star` (
  `starUser` varchar(50) NOT NULL,
  `starComicsId` int NOT NULL,
  KEY `star_user` (`starUser`),
  KEY `star_comics` (`starComicsId`),
  CONSTRAINT `star_comics` FOREIGN KEY (`starComicsId`) REFERENCES `comics_data` (`comicsId`),
  CONSTRAINT `star_user` FOREIGN KEY (`starUser`) REFERENCES `user_data` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_star
-- ----------------------------
