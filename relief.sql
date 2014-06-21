-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "area" -------------------------------------
DROP TABLE IF EXISTS `area` CASCADE;

CREATE TABLE `area` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`code` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- ---------------------------------------------------------


-- CREATE TABLE "association" ------------------------------
DROP TABLE IF EXISTS `association` CASCADE;

CREATE TABLE `association` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`code` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`name` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`manager_name` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`phone1` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`phone2` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`mobile1` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`mobile2` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`address` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`about` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`logo` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`created_date` Date NULL, 
	`creator_id` Int( 11 ) NULL, 
	`is_deleted` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'F',
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "family_member" ----------------------------
DROP TABLE IF EXISTS `family_member` CASCADE;

CREATE TABLE `family_member` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`provider_code` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
	`national_id` VarChar( 12 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
	`fname` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`lname` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`father_name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`gender` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'M', 
	`birth_date` Date NULL, 
	`relationship` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`job` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`study_status` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`social_status` Text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
	`health_status` Text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
	`note` Text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
	`created_date` Date NULL, 
	`creator_id` Int( 11 ) NULL, 
	`is_deleted` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'F',
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = InnoDB
AUTO_INCREMENT = 15;
-- ---------------------------------------------------------


-- CREATE TABLE "package" ----------------------------------
DROP TABLE IF EXISTS `package` CASCADE;

CREATE TABLE `package` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "package_detail" ---------------------------
DROP TABLE IF EXISTS `package_detail` CASCADE;

CREATE TABLE `package_detail` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`amount` Float( 11, 0 ) NULL DEFAULT '0', 
	`subject_code` VarChar( 250 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`package_id` Int( 11 ) NOT NULL DEFAULT '0',
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "provider" ---------------------------------
DROP TABLE IF EXISTS `provider` CASCADE;

CREATE TABLE `provider` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`area_code` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`association_code` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`code` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`fname` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`lname` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`father_name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`mother_name` VarChar( 150 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`national_id` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`birth_date` Date NULL, 
	`is_emigrant` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'T', 
	`family_book_num` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`family_book_letter` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`family_book_family_number` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`family_book_note` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`current_address` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`prev_address` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`street` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`point_guide` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`build` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`floor` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`phone1` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`phone2` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`mobile1` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`mobile2` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`note` Text CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`relief_form_status` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'X', 
	`created_date` Date NULL, 
	`creator_id` Int( 11 ) NULL, 
	`is_deleted` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'F', 
	`gender` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'M',
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = InnoDB
AUTO_INCREMENT = 17;
-- ---------------------------------------------------------


-- CREATE TABLE "provider_package" -------------------------
DROP TABLE IF EXISTS `provider_package` CASCADE;

CREATE TABLE `provider_package` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`date` Date NOT NULL, 
	`package_id` Int( 11 ) NOT NULL DEFAULT '0', 
	`provider_code` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "subject" ----------------------------------
DROP TABLE IF EXISTS `subject` CASCADE;

CREATE TABLE `subject` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`code` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`subject_category_id` Int( 11 ) NOT NULL DEFAULT '0',
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "subject_category" -------------------------
DROP TABLE IF EXISTS `subject_category` CASCADE;

CREATE TABLE `subject_category` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "user" -------------------------------------
DROP TABLE IF EXISTS `user` CASCADE;

CREATE TABLE `user` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`first_name` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`last_name` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`national_id` Int( 11 ) NULL, 
	`username` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
	`password` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
	`phone` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`mobile` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`address` Text CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`association_code` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_bin NULL, 
	`role` VarChar( 10 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- ---------------------------------------------------------


-- Dump data of "area" -------------------------------------
REPLACE INTO `area`(`id`,`name`,`code`) VALUES ( '5', 'المحافظة', '001' );
-- ---------------------------------------------------------


-- Dump data of "association" ------------------------------
REPLACE INTO `association`(`id`,`code`,`name`,`manager_name`,`phone1`,`phone2`,`mobile1`,`mobile2`,`address`,`about`,`logo`,`created_date`,`creator_id`,`is_deleted`) VALUES ( '3', '01', 'جمعية التعليم العالي', '', '', '', '', '', '', '', '01.jpg', '2014-03-06', '2', 'F' );
-- ---------------------------------------------------------


-- Dump data of "family_member" ----------------------------
REPLACE INTO `family_member`(`id`,`provider_code`,`national_id`,`fname`,`lname`,`father_name`,`gender`,`birth_date`,`relationship`,`job`,`study_status`,`social_status`,`health_status`,`note`,`created_date`,`creator_id`,`is_deleted`) VALUES ( '9', '01-001-R6238275206', 'R6238287711', 'تجربة تولد', '1', 'تجربة', 'M', '1973-07-06', 'father', '', '', 'married', 'disabled', '', NULL, NULL, 'F' );
REPLACE INTO `family_member`(`id`,`provider_code`,`national_id`,`fname`,`lname`,`father_name`,`gender`,`birth_date`,`relationship`,`job`,`study_status`,`social_status`,`health_status`,`note`,`created_date`,`creator_id`,`is_deleted`) VALUES ( '11', '01-001-R6241065299', 'R6415149627', 'فرد ', 'باركود', 'تجربة2', 'F', '1901-01-01', 'father', 'طالب', 'طالب', 'single', 'disabled', '', NULL, NULL, 'F' );
REPLACE INTO `family_member`(`id`,`provider_code`,`national_id`,`fname`,`lname`,`father_name`,`gender`,`birth_date`,`relationship`,`job`,`study_status`,`social_status`,`health_status`,`note`,`created_date`,`creator_id`,`is_deleted`) VALUES ( '12', '01-001-R9899480726', 'R9899492024', 'ابن', 'جديدة', 'تجربة جديدة', 'M', '1946-12-17', 'wife', 'لا يوجد', 'لا يوجد', 'divorced', 'sustenance', 'ملاحظات', NULL, NULL, 'F' );
REPLACE INTO `family_member`(`id`,`provider_code`,`national_id`,`fname`,`lname`,`father_name`,`gender`,`birth_date`,`relationship`,`job`,`study_status`,`social_status`,`health_status`,`note`,`created_date`,`creator_id`,`is_deleted`) VALUES ( '13', '01-001-R9899480726', 'R1562309639', 'اضافات', 'جديدة', 'تجربة جديدة', 'M', '1916-01-01', 'father', 'employed', 'university', 'married', 'healthy', 'لا يوجد ملاحظات', NULL, NULL, 'F' );
REPLACE INTO `family_member`(`id`,`provider_code`,`national_id`,`fname`,`lname`,`father_name`,`gender`,`birth_date`,`relationship`,`job`,`study_status`,`social_status`,`health_status`,`note`,`created_date`,`creator_id`,`is_deleted`) VALUES ( '14', '01-001-R1564345429', 'R1564361607', 'ابن', 'ذكر', 'معيل', 'M', '1914-01-01', 'father', 'unemployed', 'illiterate', 'divorced', 'other', '', NULL, NULL, 'F' );
-- ---------------------------------------------------------


-- Dump data of "package" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "package_detail" ---------------------------
-- ---------------------------------------------------------


-- Dump data of "provider" ---------------------------------
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '7', '001', '01', '01-001-R6118806295', 'تولد', 'تولد', 'تولد', NULL, '2014-03-11', '0000-00-00', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-03-29', '1', 'T', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '8', '001', '01', '01-001-R6119030705', 'تجربة', 'تولد', '2', NULL, 'R6119030705', '1996-01-16', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-03-29', '1', 'T', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '9', '001', '01', '01-001-R6119030705', 'تجربة', 'تانية', 'اب', NULL, 'R6119030705', '2014-03-04', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X', '2014-03-29', '1', 'T', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '10', '001', '01', '01-001-R6238275206', 'تجربة', '1', '0', NULL, 'R6238275206', '0000-00-00', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-03-31', '1', 'F', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '11', '001', '01', '01-001-R6240692120', 'مهند', 'شب قلعية', 'رياض', 'نهى', 'R6240692120', '0000-00-00', 'F', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-03-31', '1', 'F', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '12', '001', '01', '01-001-R6241006020', 'تجربة', 'باركود', 'محمد', 'طباعة', 'R6241006020', '0000-00-00', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'F', '2014-03-31', '1', 'F', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '13', '001', '01', '01-001-R6241065299', 'تجربة2', 'باركود', 'محمد', 'طباعة', 'R6241065299', '0000-00-00', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-03-31', '1', 'F', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '14', '001', '01', '01-001-R9899480726', 'تجربة جديدة', 'جديدة', '2', '3', 'R9899480726', '0000-00-00', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-05-12', '1', 'F', 'M' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '15', '001', '01', '01-001-R1564345429', 'معيل', 'ذكر', 'بابا', 'ماما', 'R1564345429', '2014-05-13', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-05-31', '1', 'F', '' );
REPLACE INTO `provider`(`id`,`area_code`,`association_code`,`code`,`fname`,`lname`,`father_name`,`mother_name`,`national_id`,`birth_date`,`is_emigrant`,`family_book_num`,`family_book_letter`,`family_book_family_number`,`family_book_note`,`current_address`,`prev_address`,`street`,`point_guide`,`build`,`floor`,`phone1`,`phone2`,`mobile1`,`mobile2`,`note`,`relief_form_status`,`created_date`,`creator_id`,`is_deleted`,`gender`) VALUES ( '16', '001', '01', '01-001-R1687683931', 'معيلة', 'أنثى', 'ابوها', 'امها', 'R1687683931', '2014-06-17', 'T', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'T', '2014-06-02', '1', 'F', '' );
-- ---------------------------------------------------------


-- Dump data of "provider_package" -------------------------
-- ---------------------------------------------------------


-- Dump data of "subject" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "subject_category" -------------------------
-- ---------------------------------------------------------


-- Dump data of "user" -------------------------------------
REPLACE INTO `user`(`id`,`first_name`,`last_name`,`national_id`,`username`,`password`,`phone`,`mobile`,`address`,`association_code`,`role`) VALUES ( '1', 'فراس', 'كنعان', '211323123', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '01', 'admin' );
REPLACE INTO `user`(`id`,`first_name`,`last_name`,`national_id`,`username`,`password`,`phone`,`mobile`,`address`,`association_code`,`role`) VALUES ( '2', 'مهند', 'شب قلعية', '201231', 'mohanad', 'e10adc3949ba59abbe56e057f20f883e', '123123', '1231231', 'حلب - حلب الجديدة', '01', 'admin' );
REPLACE INTO `user`(`id`,`first_name`,`last_name`,`national_id`,`username`,`password`,`phone`,`mobile`,`address`,`association_code`,`role`) VALUES ( '3', 'إدارة', 'الهلال', '2147483647', 'admin', '3fe5fc498e8ded3a36b448d8d418108f', 'لا يوجد', 'لا يوجد', 'لا يوجد', '', 'admin' );
REPLACE INTO `user`(`id`,`first_name`,`last_name`,`national_id`,`username`,`password`,`phone`,`mobile`,`address`,`association_code`,`role`) VALUES ( '4', 'إدارة', 'جمعية', '23331231', 'admin', '0192023a7bbd73250516f069df18b500', 'لا يوجد', 'لا يوجد', 'لا يوجد', '', '' );
-- ---------------------------------------------------------


-- CREATE VIEW "provider_data" -----------------------------
CREATE OR REPLACE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `provider_data`
AS select distinct `relief`.`provider`.`id` AS `id`,`relief`.`provider`.`area_code` AS `area_code`,`relief`.`provider`.`association_code` AS `association_code`,`relief`.`provider`.`code` AS `code`,`relief`.`provider`.`fname` AS `fname`,`relief`.`provider`.`lname` AS `lname`,`relief`.`provider`.`father_name` AS `father_name`,`relief`.`provider`.`mother_name` AS `mother_name`,`relief`.`provider`.`national_id` AS `national_id`,`relief`.`provider`.`birth_date` AS `birth_date`,`relief`.`provider`.`is_emigrant` AS `is_emigrant`,`relief`.`provider`.`family_book_num` AS `family_book_num`,`relief`.`provider`.`family_book_letter` AS `family_book_letter`,`relief`.`provider`.`family_book_family_number` AS `family_book_family_number`,`relief`.`provider`.`family_book_note` AS `family_book_note`,`relief`.`provider`.`current_address` AS `current_address`,`relief`.`provider`.`prev_address` AS `prev_address`,`relief`.`provider`.`street` AS `street`,`relief`.`provider`.`point_guide` AS `point_guide`,`relief`.`provider`.`build` AS `build`,`relief`.`provider`.`floor` AS `floor`,`relief`.`provider`.`phone1` AS `phone1`,`relief`.`provider`.`phone2` AS `phone2`,`relief`.`provider`.`mobile1` AS `mobile1`,`relief`.`provider`.`mobile2` AS `mobile2`,`relief`.`provider`.`note` AS `note`,`relief`.`provider`.`relief_form_status` AS `relief_form_status`,`relief`.`provider`.`created_date` AS `created_date`,`relief`.`provider`.`creator_id` AS `creator_id`,`relief`.`provider`.`is_deleted` AS `is_deleted`,`relief`.`area`.`name` AS `area_name`,count(`relief`.`family_member`.`id`) AS `family_members` from ((`relief`.`provider` join `relief`.`area`) join `relief`.`family_member`) where ((`relief`.`provider`.`code` = `relief`.`family_member`.`provider_code`) and (`relief`.`provider`.`area_code` = `relief`.`area`.`code`));
-- ---------------------------------------------------------


-- CREATE DIAGRAMS TABLE "vs_database_diagrams" ------------
CREATE TABLE IF NOT EXISTS vs_database_diagrams( name Char(80), diadata Text, comment VarChar(1022), preview Text, lockinfo Char(80), locktime Timestamp, version Char(80) );
-- ---------------------------------------------------------


-- Dump data of "vs_database_diagrams" ---------------------
REPLACE INTO `vs_database_diagrams`(`name`,`diadata`,`comment`,`preview`,`lockinfo`,`locktime`,`version`) VALUES ( 'relief_diagram', 'PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPHByb3BlcnRpZXM+Cgk8Q29udHJvbHM+CgkJPFRhYmxlPgoJCQk8UGFyZW50IHZhbHVlPSIjVE9QIi8+CgkJCTxQcm9wZXJ0aWVzPgoJCQkJPF5jaGVja3MgdmFsdWU9IjAiLz4KCQkJCTxeZ3JvdXAgdmFsdWU9Ii0xIi8+CgkJCQk8XmhlaWdodCB2YWx1ZT0iLTEiLz4KCQkJCTxeaW5kZXhlcyB2YWx1ZT0iMCIvPgoJCQkJPF5sZXZlbCB2YWx1ZT0iMiIvPgoJCQkJPF5saW5rcyB2YWx1ZT0iMCIvPgoJCQkJPF5sb2NrIHZhbHVlPSIwIi8+CgkJCQk8Xm1ldGhvZHMgdmFsdWU9IjAiLz4KCQkJCTxebWluaW1pemVkIHZhbHVlPSIwIi8+CgkJCQk8XnByb3BlcnRpZXMgdmFsdWU9IjAiLz4KCQkJCTxedHJpZ2dlcnMgdmFsdWU9IjAiLz4KCQkJCTxedW5pcXVlcyB2YWx1ZT0iMCIvPgoJCQkJPGJhY2tfY29sb3IgdmFsdWU9IkI0RDY0NzAwIi8+CgkJCQk8bmFtZSB2YWx1ZT0iVGFibGUiLz4KCQkJCTxwb3NpdGlvbiB2YWx1ZT0iMzIxOzM3Ii8+CgkJCQk8c2l6ZSB2YWx1ZT0iMTY2OzEyMiIvPgoJCQk8L1Byb3BlcnRpZXM+CgkJCTxUeXBlIHZhbHVlPSJUYWJsZSIvPgoJCTwvVGFibGU+CgkJPFRhYmxlMT4KCQkJPFBhcmVudCB2YWx1ZT0iI1RPUCIvPgoJCQk8UHJvcGVydGllcz4KCQkJCTxeY2hlY2tzIHZhbHVlPSIwIi8+CgkJCQk8Xmdyb3VwIHZhbHVlPSItMSIvPgoJCQkJPF5oZWlnaHQgdmFsdWU9Ii0xIi8+CgkJCQk8XmluZGV4ZXMgdmFsdWU9IjAiLz4KCQkJCTxebGV2ZWwgdmFsdWU9IjEiLz4KCQkJCTxebGlua3MgdmFsdWU9IjAiLz4KCQkJCTxebG9jayB2YWx1ZT0iMCIvPgoJCQkJPF5tZXRob2RzIHZhbHVlPSIwIi8+CgkJCQk8Xm1pbmltaXplZCB2YWx1ZT0iMCIvPgoJCQkJPF5wcm9wZXJ0aWVzIHZhbHVlPSIwIi8+CgkJCQk8XnRyaWdnZXJzIHZhbHVlPSIwIi8+CgkJCQk8XnVuaXF1ZXMgdmFsdWU9IjAiLz4KCQkJCTxiYWNrX2NvbG9yIHZhbHVlPSJCNEQ2NDcwMCIvPgoJCQkJPG5hbWUgdmFsdWU9IlRhYmxlMSIvPgoJCQkJPHBvc2l0aW9uIHZhbHVlPSI0OTszNyIvPgoJCQkJPHNpemUgdmFsdWU9IjIyMzszMjAiLz4KCQkJPC9Qcm9wZXJ0aWVzPgoJCQk8VHlwZSB2YWx1ZT0iVGFibGUiLz4KCQk8L1RhYmxlMT4KCQk8cmVsaWVmX2RpYWdyYW0+CgkJCTxQcm9wZXJ0aWVzPgoJCQkJPF5sb2NrIHZhbHVlPSIwIi8+CgkJCQk8YmFja19jb2xvciB2YWx1ZT0iRkZGRkZGIi8+CgkJCQk8Z2FtbWEgdmFsdWU9IjAiLz4KCQkJCTxuYW1lIHZhbHVlPSJyZWxpZWZfZGlhZ3JhbSIvPgoJCQkJPHNpemUgdmFsdWU9IjIwNDg7MjA0OCIvPgoJCQkJPHN0eWxlIHZhbHVlPSI0Ii8+CgkJCQk8c3R5bGVfbGlua3MgdmFsdWU9IjAiLz4KCQkJCTx1bml0cyB2YWx1ZT0iNSIvPgoJCQk8L1Byb3BlcnRpZXM+CgkJCTxUeXBlIHZhbHVlPSJEaWFncmFtIi8+CgkJPC9yZWxpZWZfZGlhZ3JhbT4KCTwvQ29udHJvbHM+Cgk8R1VJPgoJCTxGdWxsVG9vbGJhckxlZnQgdmFsdWU9IjEiLz4KCQk8RnVsbFRvb2xiYXJSaWdodCB2YWx1ZT0iMSIvPgoJCTxQYWdlRWRpdG9yIHZhbHVlPSItMSIvPgoJCTxQYWdlRWRpdG9ySCB2YWx1ZT0iMCIvPgoJCTxQYWdlVG9vbGJhckxlZnQgdmFsdWU9IjAiLz4KCQk8UGFnZVRvb2xiYXJSQiB2YWx1ZT0iMCIvPgoJCTxQYWdlVG9vbGJhclJpZ2h0IHZhbHVlPSIwIi8+CgkJPFBhbmVDbGlwYm9hcmQgdmFsdWU9IjAiLz4KCQk8UGFuZUxheW91dCB2YWx1ZT0iMCIvPgoJCTxQYW5lVmlldyB2YWx1ZT0iMCIvPgoJCTxTY3JvbGxYIHZhbHVlPSIwIi8+CgkJPFNjcm9sbFkgdmFsdWU9IjAiLz4KCQk8U2VsZWN0aW9uIHZhbHVlPSJjbVZzYVdWbVgyUnBZV2R5WVcwPSIvPgoJCTxTaG93QWxsIHZhbHVlPSIxIi8+CgkJPFNob3dDaGFuZ2VzIHZhbHVlPSIxIi8+CgkJPFNob3dHTCB2YWx1ZT0iMSIvPgoJCTxTaG93R3JpZCB2YWx1ZT0iMSIvPgoJCTxVc2VHcmlkIHZhbHVlPSIwIi8+Cgk8L0dVST4KCTxNb2RlbD4KCQk8cmVsaWVmPgoJCQk8dGFibGU+CgkJCQk8bzA+CgkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iNiIvPgoJCQkJCQk8QXZlcmFnZV9Sb3dfU2l6ZSB2YWx1ZT0iMTYzODQiLz4KCQkJCQkJPENoYXJzZXQgdmFsdWU9InV0ZjgiLz4KCQkJCQkJPENvbGxhdGlvbiB2YWx1ZT0idXRmOF9iaW4iLz4KCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQk8Q3JlYXRlX1RpbWUgdmFsdWU9IjIwMTQtMDQtMTcgMTA6NTE6MzMiLz4KCQkJCQkJPEVuZ2luZSB2YWx1ZT0iSW5ub0RCIi8+CgkJCQkJCTxGaWVsZF9Db3VudCB2YWx1ZT0iMyIvPgoJCQkJCQk8SW5kZXhfQ291bnQgdmFsdWU9IjEiLz4KCQkJCQkJPExpbmtfQ291bnQgdmFsdWU9IjAiLz4KCQkJCQkJPE5hbWUgdmFsdWU9ImFyZWEiLz4KCQkJCQkJPFByaW1hcnlfS2V5IHZhbHVlPSJhV1E9Ii8+CgkJCQkJCTxSZWNvcmRfQ291bnQgdmFsdWU9IjEiLz4KCQkJCQkJPFNpemUgdmFsdWU9IjE2LjAwIEtiIi8+CgkJCQkJCTxUcmlnZ2VyX0NvdW50IHZhbHVlPSIwIi8+CgkJCQkJCTxVbmlxdWVfQ291bnQgdmFsdWU9IjEiLz4KCQkJCQkJPFVwZGF0ZV9UaW1lIHZhbHVlPSIiLz4KCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJPGNvbnRyb2wgdmFsdWU9IlRhYmxlIi8+CgkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCTxmaWVsZD4KCQkJCQkJPG8wPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0idXRmOCIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfYmluIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjMiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjUwIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9ImNvZGUiLz4KCQkJCQkJCQk8TnVsbGFibGUgdmFsdWU9IjEiLz4KCQkJCQkJCQk8T25fVXBkYXRlX1NldF9DdXJyZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPFByZWNpc2lvbiB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxTY2FsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJWYXJDaGFyIi8+CgkJCQkJCQkJPFVuaXF1ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxVbnNpZ25lZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxaZXJvZmlsbCB2YWx1ZT0iMCIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9ImNvZGUiLz4KCQkJCQkJPC9vMD4KCQkJCQkJPG8xPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjEiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0iIi8+CgkJCQkJCQkJPENvbGxhdGlvbiB2YWx1ZT0iIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjEiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjExIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9ImlkIi8+CgkJCQkJCQkJPE51bGxhYmxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPE9uX1VwZGF0ZV9TZXRfQ3VycmVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxQcmVjaXNpb24gdmFsdWU9IjEwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IkludCIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjEiLz4KCQkJCQkJCQk8VW5zaWduZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8WmVyb2ZpbGwgdmFsdWU9IjAiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJpZCIvPgoJCQkJCQk8L28xPgoJCQkJCQk8bzI+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxDaGFyc2V0IHZhbHVlPSJ1dGY4Ii8+CgkJCQkJCQkJPENvbGxhdGlvbiB2YWx1ZT0idXRmOF9iaW4iLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMiIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iMjUwIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9Im5hbWUiLz4KCQkJCQkJCQk8TnVsbGFibGUgdmFsdWU9IjEiLz4KCQkJCQkJCQk8T25fVXBkYXRlX1NldF9DdXJyZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPFByZWNpc2lvbiB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxTY2FsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJWYXJDaGFyIi8+CgkJCQkJCQkJPFVuaXF1ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxVbnNpZ25lZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxaZXJvZmlsbCB2YWx1ZT0iMCIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9Im5hbWUiLz4KCQkJCQkJPC9vMj4KCQkJCQk8L2ZpZWxkPgoJCQkJCTxpbmRleD4KCQkJCQkJPG8wPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZHMgdmFsdWU9ImFXUT0iLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iUFJJTUFSWSIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJCVFJFRSIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjEiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJQUklNQVJZIi8+CgkJCQkJCTwvbzA+CgkJCQkJPC9pbmRleD4KCQkJCQk8bmFtZSB2YWx1ZT0iYXJlYSIvPgoJCQkJCTx1bmlxdWU+CgkJCQkJCTxvMD4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxGaWVsZHMgdmFsdWU9ImFXUT0iLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iUFJJTUFSWSIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9IlBSSU1BUlkiLz4KCQkJCQkJPC9vMD4KCQkJCQk8L3VuaXF1ZT4KCQkJCTwvbzA+CgkJCQk8bzE+CgkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iNCIvPgoJCQkJCQk8QXZlcmFnZV9Sb3dfU2l6ZSB2YWx1ZT0iMTYzODQiLz4KCQkJCQkJPENoYXJzZXQgdmFsdWU9InV0ZjgiLz4KCQkJCQkJPENvbGxhdGlvbiB2YWx1ZT0idXRmOF9iaW4iLz4KCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQk8Q3JlYXRlX1RpbWUgdmFsdWU9IjIwMTQtMDQtMTcgMTA6NTE6MzMiLz4KCQkJCQkJPEVuZ2luZSB2YWx1ZT0iSW5ub0RCIi8+CgkJCQkJCTxGaWVsZF9Db3VudCB2YWx1ZT0iMTQiLz4KCQkJCQkJPEluZGV4X0NvdW50IHZhbHVlPSIxIi8+CgkJCQkJCTxMaW5rX0NvdW50IHZhbHVlPSIwIi8+CgkJCQkJCTxOYW1lIHZhbHVlPSJhc3NvY2lhdGlvbiIvPgoJCQkJCQk8UHJpbWFyeV9LZXkgdmFsdWU9ImFXUT0iLz4KCQkJCQkJPFJlY29yZF9Db3VudCB2YWx1ZT0iMSIvPgoJCQkJCQk8U2l6ZSB2YWx1ZT0iMTYuMDAgS2IiLz4KCQkJCQkJPFRyaWdnZXJfQ291bnQgdmFsdWU9IjAiLz4KCQkJCQkJPFVuaXF1ZV9Db3VudCB2YWx1ZT0iMSIvPgoJCQkJCQk8VXBkYXRlX1RpbWUgdmFsdWU9IiIvPgoJCQkJCTwvUHJvcGVydGllcz4KCQkJCQk8Y29udHJvbCB2YWx1ZT0iVGFibGUxIi8+CgkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCTxmaWVsZD4KCQkJCQkJPG8wPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0idXRmOCIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfYmluIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjEwIi8+CgkJCQkJCQkJPEluZGV4ZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8TGVuZ3RoIHZhbHVlPSItMSIvPgoJCQkJCQkJCTxOYW1lIHZhbHVlPSJhYm91dCIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IlRleHQiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iYWJvdXQiLz4KCQkJCQkJPC9vMD4KCQkJCQkJPG8xPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0idXRmOCIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfYmluIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjkiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9Ii0xIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9ImFkZHJlc3MiLz4KCQkJCQkJCQk8TnVsbGFibGUgdmFsdWU9IjEiLz4KCQkJCQkJCQk8T25fVXBkYXRlX1NldF9DdXJyZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPFByZWNpc2lvbiB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxTY2FsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJUZXh0Ii8+CgkJCQkJCQkJPFVuaXF1ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxVbnNpZ25lZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxaZXJvZmlsbCB2YWx1ZT0iMCIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9ImFkZHJlc3MiLz4KCQkJCQkJPC9vMT4KCQkJCQkJPG8xMD4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPENoYXJzZXQgdmFsdWU9InV0ZjgiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSJ1dGY4X2JpbiIvPgoJCQkJCQkJCTxDb21tZW50IHZhbHVlPSIiLz4KCQkJCQkJCQk8RGVmYXVsdF9WYWx1ZSB2YWx1ZT0iIi8+CgkJCQkJCQkJPEZpZWxkX1Bvc2l0aW9uIHZhbHVlPSI4Ii8+CgkJCQkJCQkJPEluZGV4ZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8TGVuZ3RoIHZhbHVlPSI1MCIvPgoJCQkJCQkJCTxOYW1lIHZhbHVlPSJtb2JpbGUyIi8+CgkJCQkJCQkJPE51bGxhYmxlIHZhbHVlPSIxIi8+CgkJCQkJCQkJPE9uX1VwZGF0ZV9TZXRfQ3VycmVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxQcmVjaXNpb24gdmFsdWU9IjAiLz4KCQkJCQkJCQk8U2NhbGUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iVmFyQ2hhciIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VW5zaWduZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8WmVyb2ZpbGwgdmFsdWU9IjAiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJtb2JpbGUyIi8+CgkJCQkJCTwvbzEwPgoJCQkJCQk8bzExPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0idXRmOCIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfYmluIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjMiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjI1MCIvPgoJCQkJCQkJCTxOYW1lIHZhbHVlPSJuYW1lIi8+CgkJCQkJCQkJPE51bGxhYmxlIHZhbHVlPSIxIi8+CgkJCQkJCQkJPE9uX1VwZGF0ZV9TZXRfQ3VycmVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxQcmVjaXNpb24gdmFsdWU9IjAiLz4KCQkJCQkJCQk8U2NhbGUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iVmFyQ2hhciIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VW5zaWduZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8WmVyb2ZpbGwgdmFsdWU9IjAiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJuYW1lIi8+CgkJCQkJCTwvbzExPgoJCQkJCQk8bzEyPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0idXRmOCIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfYmluIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjUiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjUwIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9InBob25lMSIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IlZhckNoYXIiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0icGhvbmUxIi8+CgkJCQkJCTwvbzEyPgoJCQkJCQk8bzEzPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0idXRmOCIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfYmluIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjYiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjUwIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9InBob25lMiIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IlZhckNoYXIiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0icGhvbmUyIi8+CgkJCQkJCTwvbzEzPgoJCQkJCQk8bzI+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxDaGFyc2V0IHZhbHVlPSJ1dGY4Ii8+CgkJCQkJCQkJPENvbGxhdGlvbiB2YWx1ZT0idXRmOF9iaW4iLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMiIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iNTAiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iY29kZSIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IlZhckNoYXIiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iY29kZSIvPgoJCQkJCQk8L28yPgoJCQkJCQk8bzM+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxDaGFyc2V0IHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMTIiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9Ii0xIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9ImNyZWF0ZWRfZGF0ZSIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IkRhdGUiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iY3JlYXRlZF9kYXRlIi8+CgkJCQkJCTwvbzM+CgkJCQkJCTxvND4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPENoYXJzZXQgdmFsdWU9IiIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9IiIvPgoJCQkJCQkJCTxDb21tZW50IHZhbHVlPSIiLz4KCQkJCQkJCQk8RGVmYXVsdF9WYWx1ZSB2YWx1ZT0iIi8+CgkJCQkJCQkJPEZpZWxkX1Bvc2l0aW9uIHZhbHVlPSIxMyIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iMTEiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iY3JlYXRvcl9pZCIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIxMCIvPgoJCQkJCQkJCTxTY2FsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJJbnQiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iY3JlYXRvcl9pZCIvPgoJCQkJCQk8L280PgoJCQkJCQk8bzU+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxDaGFyc2V0IHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIxIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iMTEiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iaWQiLz4KCQkJCQkJCQk8TnVsbGFibGUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8T25fVXBkYXRlX1NldF9DdXJyZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPFByZWNpc2lvbiB2YWx1ZT0iMTAiLz4KCQkJCQkJCQk8U2NhbGUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iSW50Ii8+CgkJCQkJCQkJPFVuaXF1ZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxVbnNpZ25lZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxaZXJvZmlsbCB2YWx1ZT0iMCIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9ImlkIi8+CgkJCQkJCTwvbzU+CgkJCQkJCTxvNj4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPENoYXJzZXQgdmFsdWU9InV0ZjgiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSJ1dGY4X2JpbiIvPgoJCQkJCQkJCTxDb21tZW50IHZhbHVlPSIiLz4KCQkJCQkJCQk8RGVmYXVsdF9WYWx1ZSB2YWx1ZT0iRiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMTQiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjEiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iaXNfZGVsZXRlZCIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IlZhckNoYXIiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iaXNfZGVsZXRlZCIvPgoJCQkJCQk8L282PgoJCQkJCQk8bzc+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxDaGFyc2V0IHZhbHVlPSJ1dGY4Ii8+CgkJCQkJCQkJPENvbGxhdGlvbiB2YWx1ZT0idXRmOF9iaW4iLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMTEiLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjI1MCIvPgoJCQkJCQkJCTxOYW1lIHZhbHVlPSJsb2dvIi8+CgkJCQkJCQkJPE51bGxhYmxlIHZhbHVlPSIxIi8+CgkJCQkJCQkJPE9uX1VwZGF0ZV9TZXRfQ3VycmVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxQcmVjaXNpb24gdmFsdWU9IjAiLz4KCQkJCQkJCQk8U2NhbGUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iVmFyQ2hhciIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VW5zaWduZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8WmVyb2ZpbGwgdmFsdWU9IjAiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJsb2dvIi8+CgkJCQkJCTwvbzc+CgkJCQkJCTxvOD4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPENoYXJzZXQgdmFsdWU9InV0ZjgiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSJ1dGY4X2JpbiIvPgoJCQkJCQkJCTxDb21tZW50IHZhbHVlPSIiLz4KCQkJCQkJCQk8RGVmYXVsdF9WYWx1ZSB2YWx1ZT0iIi8+CgkJCQkJCQkJPEZpZWxkX1Bvc2l0aW9uIHZhbHVlPSI0Ii8+CgkJCQkJCQkJPEluZGV4ZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8TGVuZ3RoIHZhbHVlPSIyNTAiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0ibWFuYWdlcl9uYW1lIi8+CgkJCQkJCQkJPE51bGxhYmxlIHZhbHVlPSIxIi8+CgkJCQkJCQkJPE9uX1VwZGF0ZV9TZXRfQ3VycmVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxQcmVjaXNpb24gdmFsdWU9IjAiLz4KCQkJCQkJCQk8U2NhbGUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iVmFyQ2hhciIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VW5zaWduZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8WmVyb2ZpbGwgdmFsdWU9IjAiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJtYW5hZ2VyX25hbWUiLz4KCQkJCQkJPC9vOD4KCQkJCQkJPG85PgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEF1dG9pbmNyZW1lbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8Q2hhcnNldCB2YWx1ZT0idXRmOCIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfYmluIi8+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxEZWZhdWx0X1ZhbHVlIHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRfUG9zaXRpb24gdmFsdWU9IjciLz4KCQkJCQkJCQk8SW5kZXhlZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxMZW5ndGggdmFsdWU9IjUwIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9Im1vYmlsZTEiLz4KCQkJCQkJCQk8TnVsbGFibGUgdmFsdWU9IjEiLz4KCQkJCQkJCQk8T25fVXBkYXRlX1NldF9DdXJyZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPFByZWNpc2lvbiB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxTY2FsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJWYXJDaGFyIi8+CgkJCQkJCQkJPFVuaXF1ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxVbnNpZ25lZCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxaZXJvZmlsbCB2YWx1ZT0iMCIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9Im1vYmlsZTEiLz4KCQkJCQkJPC9vOT4KCQkJCQk8L2ZpZWxkPgoJCQkJCTxpbmRleD4KCQkJCQkJPG8wPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZHMgdmFsdWU9ImFXUT0iLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iUFJJTUFSWSIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJCVFJFRSIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjEiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJQUklNQVJZIi8+CgkJCQkJCTwvbzA+CgkJCQkJPC9pbmRleD4KCQkJCQk8bmFtZSB2YWx1ZT0iYXNzb2NpYXRpb24iLz4KCQkJCQk8dW5pcXVlPgoJCQkJCQk8bzA+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8RmllbGRzIHZhbHVlPSJhV1E9Ii8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9IlBSSU1BUlkiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJQUklNQVJZIi8+CgkJCQkJCTwvbzA+CgkJCQkJPC91bmlxdWU+CgkJCQk8L28xPgoJCQk8L3RhYmxlPgoJCTwvcmVsaWVmPgoJPC9Nb2RlbD4KPC9wcm9wZXJ0aWVzPgoK', NULL, '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', NULL, '2014-06-02 09:41:42', '1' );
-- ---------------------------------------------------------



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


