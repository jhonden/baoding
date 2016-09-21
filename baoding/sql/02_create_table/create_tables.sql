-- ----------------------------
-- Table structure for `tbl_baoding_company_news` 公司新闻表
-- ----------------------------
DROP TABLE IF EXISTS `tbl_baoding_company_news`;
CREATE TABLE `tbl_baoding_company_news` (
  `id` varchar(20) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `content` longtext,
  `source` varchar(10) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `is_new` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ----------------------------
-- Table structure for `tbl_baoding_industry_dunamic` 行业动态表
-- ----------------------------
DROP TABLE IF EXISTS `tbl_baoding_industry_dunamic`;
CREATE TABLE `tbl_baoding_industry_dunamic` (
  `id` varchar(20) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `content` longtext,
  `source` varchar(10) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ----------------------------
-- Table structure for `tbl_baoding_polices_regulations` 政策法规表
-- ----------------------------
DROP TABLE IF EXISTS `tbl_baoding_polices_regulations`;
CREATE TABLE `tbl_baoding_polices_regulations` (
  `id` varchar(20) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `content` longtext,
  `source` varchar(10) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ----------------------------
-- Table structure for `tbl_baoding_staff_presence` 员工风采表
-- ----------------------------
DROP TABLE IF EXISTS `tbl_baoding_staff_presence`;
CREATE TABLE `tbl_baoding_staff_presence` (
  `id` varchar(20) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `content` longtext,
  `source` varchar(10) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


commit;