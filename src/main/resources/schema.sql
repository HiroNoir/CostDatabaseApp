
/** 12.編集者テーブル */
DROP TABLE IF EXISTS `cost_database_app`.`editor_user`;
CREATE TABLE `cost_database_app`.`editor_user` (
    `eu_code` VARCHAR(10) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `name` VARCHAR(30) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`eu_code`));
