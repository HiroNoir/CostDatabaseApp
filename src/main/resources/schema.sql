/** 既存テーブル削除 */
DROP TABLE IF EXISTS `cost_database_app`.`employee`;
DROP TABLE IF EXISTS `cost_database_app`.`authentications`;

/** 11.従業員テーブル */
CREATE TABLE `cost_database_app`.`employee` (
    `code` VARCHAR(10) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `first_name` VARCHAR(10) NOT NULL,
    `last_name` VARCHAR(10) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`code`));

/** 認証情報を格納するテーブル */
CREATE TABLE `cost_database_app`.`authentications` (
    `username` VARCHAR(50),
    `password` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`username`));